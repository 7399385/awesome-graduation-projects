package com.bjsxt.swing;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.TextArea;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

import com.bjsxt.client.Regex;
import com.bjsxt.service.Service;
import com.bjsxt.service.ServiceModify;

import javax.swing.ImageIcon;
import javax.swing.JButton;

public class Admin extends JFrame implements ActionListener,MouseListener {

	private Socket socket;
	private PrintWriter pw;
	private BufferedReader br;

	final ImageIcon iconAddTeacher=new ImageIcon("image/��ӽ�ʦ.png");
	final ImageIcon iconAddTeacher2=new ImageIcon("image/��ӽ�ʦ2.png");
	final ImageIcon iconAddStu=new ImageIcon("image/���ѧ��.png");
	final ImageIcon iconAddStu2=new ImageIcon("image/���ѧ��2.png");
	final ImageIcon iconModifyPW=new ImageIcon("image/�޸�����111.png");
	final ImageIcon iconModifyPW2=new ImageIcon("image/�޸�����222.png");
	final ImageIcon iconSearchUser=new ImageIcon("image/��ѯ�û�.png");
	final ImageIcon iconSearchUser2=new ImageIcon("image/��ѯ�û�2.png");
	final ImageIcon iconSubmit=new ImageIcon("image/ȷ��.png");
	final ImageIcon iconSubmit2=new ImageIcon("image/ȷ��2.png");
	final Image backImg =new ImageIcon("image/����Ա����.jpg").getImage();
	
	private JLabel labelAddTeacher;
	private JLabel labelAddStu;
	private JLabel labelModifyPW;
	private JLabel labelSearchUser;
	private JPanel contentPane;
	private JLabel laberUserID;
	private JTextField textUserID;
	private JLabel laberUserIDRegex;
	private JLabel labelTextarea;
	
	public Admin(Socket s) {
		setTitle("����Ա����");
		socket = s;
		try {
			pw = new PrintWriter(this.socket.getOutputStream());
			br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		double width = Toolkit.getDefaultToolkit().getScreenSize().getWidth();
	     double height = Toolkit.getDefaultToolkit().getScreenSize().getHeight();
	     int x=(int)(width-600)/2;
	     int y=(int)(height-420)/2;
		setBounds(x, y, 600, 420);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		labelModifyPW=new JLabel();
		labelModifyPW.setIcon(iconModifyPW);
		labelModifyPW.setBounds(20, 320, 160,43);
		labelModifyPW.addMouseListener(this);
		contentPane.add(labelModifyPW);
		
		
		labelAddStu=new JLabel();
		labelAddStu.setIcon(iconAddStu);
		labelAddStu.setBounds(20, 270, 160,43);
		labelAddStu.addMouseListener(this);
		contentPane.add(labelAddStu);
		

		labelAddTeacher=new JLabel();
		labelAddTeacher.setIcon(iconAddTeacher);
		labelAddTeacher.setBounds(20, 220, 160,43);
		labelAddTeacher.addMouseListener(this);
		contentPane.add(labelAddTeacher);
		
		labelSearchUser=new JLabel();
		labelSearchUser.setIcon(iconSearchUser);
		labelSearchUser.setBounds(330, 20, 160,43);
		labelSearchUser.addMouseListener(this);
		contentPane.add(labelSearchUser);
		
		
		  laberUserID=new JLabel("�û� I D");
		 laberUserID.setBounds(30, 20, 140, 40);
		 laberUserID.setFont(new Font("΢���ź�", 1, 20));
		 contentPane.add(laberUserID);
		 
		  textUserID=new JTextField();
		 textUserID.setBounds(130, 23, 140, 35);
		 textUserID.setFont(new Font("������", 1, 18));
		 contentPane.add(textUserID);
		 
		  laberUserIDRegex=new JLabel("��ʽ����ȷ");
		  laberUserIDRegex.setFont(new Font("������", 1, 15));
		 laberUserIDRegex.setBounds(130, 60, 140, 35);
		 contentPane.add(laberUserIDRegex);
		 
		  labelTextarea=new JLabel();
		  labelTextarea.setFont(new Font("����", 1, 15));
		  labelTextarea.setForeground(Color.WHITE);
		  labelTextarea.setBounds(20, 135, 500, 60);
		 contentPane.add(labelTextarea);
		 
		 JLabel label = new JLabel("") {
				public void paint(Graphics g) {
					g.drawImage(backImg, 0, 0, this.getWidth(), this.getHeight(), null);
				}
			};
			label.setBounds(0, 0, 600, 400);
			contentPane.add(label);
		 
		 
		new Thread(new AdminRegex()).start();
		new Thread(new InfoListener()).start();
	}

	
	//���Ͳ�ѯ�û�����Ϣ
	public void sendSearchInfo() {
		StringBuilder sb = new StringBuilder();
		sb.append("�鿴�û���Ϣ,");
		sb.append(textUserID.getText());
		Service.send(pw, sb.toString());
	}
	
	/*
	 * ��¼�����У���߳�
	 * ÿ0.1���ж�һ��
	 */
	private class AdminRegex implements Runnable {

		@Override
		public void run() {
			while (true) {
				regex();
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	//У��
	public void regex() {
		Regex regex = new Regex();
		
		
		if (!regex.userIDRegex(textUserID.getText())) {
			laberUserIDRegex.setForeground(Color.RED);
			laberUserIDRegex.setText("2��4��6λ����");
		} else {
			laberUserIDRegex.setForeground(Color.GREEN);
			laberUserIDRegex.setText("ID��ʽ��ȷ");
		}
	}
	
	
	/*
	 * �ڲ��� ������޸�����ʱ���� ����:����һ���´��ڣ����������Ϣ���ṩ�ύ����
	 */
	private class ModifyPW extends JFrame implements MouseListener,ActionListener{

		private JPanel contentPane;
		private JLabel showOldPW;
		private JTextField userID;
		private JLabel PWRegex;
		private JLabel showNewPW;
		private JPasswordField newPW;
		private JLabel doublePWRegex;
		private JButton buttonSubmit;
		private JLabel labelSubmit;
		private PrintWriter pw;
		private Regex regex = new Regex();
		
		final Image backImg =new ImageIcon("image/����ͼ3.jpg").getImage();
		
		public ModifyPW(PrintWriter pw) {
			this.pw=pw;
			setTitle("�޸�����");
			double width = Toolkit.getDefaultToolkit().getScreenSize().getWidth();
		     double height = Toolkit.getDefaultToolkit().getScreenSize().getHeight();
		     int x=(int)(width-400)/2;
		     int y=(int)(height-380)/2;
			setBounds(x, y, 400, 380);
			contentPane = new JPanel();
			contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
			setContentPane(contentPane);
			contentPane.setLayout(null);

//			buttonSubmit = new JButton("ȷ��");
//			buttonSubmit.setFont(new Font("΢���ź�", 1, 20));
//			buttonSubmit.setBounds(100, 210, 100, 40);
//			buttonSubmit.addActionListener(this);
//			contentPane.add(buttonSubmit);

			labelSubmit = new JLabel();
			labelSubmit.setIcon(iconSubmit);
			labelSubmit.setBounds(100, 240, 160, 40);
			labelSubmit.addMouseListener(this);
			contentPane.add(labelSubmit);
			
			  showOldPW=new JLabel("�û� I  D");
			 showOldPW.setBounds(13, 50, 150, 30);
			 showOldPW.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(showOldPW);
			
			  userID=new JTextField();
			  userID.setBounds(100, 50, 135, 30);
			contentPane.add(userID);
			
			  PWRegex=new JLabel("");
			 PWRegex.setBounds(250, 50, 150, 30);
			 PWRegex.setFont(new Font("������", 1, 17));
			contentPane.add(PWRegex);
			
			 showNewPW=new JLabel("��������");
			 showNewPW.setFont(new Font("΢���ź�", 1, 19));
			 showNewPW.setBounds(13, 145, 150, 30);
			contentPane.add(showNewPW);
			
			  newPW=new JPasswordField();
			  newPW.setBounds(100, 145, 135, 30);
			contentPane.add(newPW);
			
			  doublePWRegex=new JLabel("");
			  doublePWRegex.setBounds(250, 145, 150, 30);
			  doublePWRegex.setFont(new Font("������", 1, 17));
			contentPane.add(doublePWRegex);
			
			JLabel label = new JLabel("") {
				public void paint(Graphics g) {
					g.drawImage(backImg, 0, 0, this.getWidth(), this.getHeight(), null);
				}
			};
			label.setBounds(0, 0, 400, 380);
			contentPane.add(label);
			
			new Thread(new PWRegex()).start();

		}
		
			public void sendNewPW() {
				StringBuilder sb = new StringBuilder();
				sb.append("�޸��û�����,");
				sb.append(userID.getText()+",");
				sb.append(String.valueOf(newPW.getPassword()));
				Service.send(pw, sb.toString());
			}
			/*
			 * ��¼�����У���߳�
			 * ÿ0.1���ж�һ��
			 */
			private class PWRegex implements Runnable {
				@Override
				public void run() {
					while (true) {
						regex();
						try {
							Thread.sleep(100);
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}
				}

			}

			public void regex() {
				
				if (!(regex.userIDRegex(userID.getText()))) {
					PWRegex.setForeground(Color.RED);
					PWRegex.setText("ID2-6λ����");
				} else {
					PWRegex.setForeground(Color.GREEN);
					PWRegex.setText("ID��ʽ��ȷ");
				}
				
				if (!(regex.passwordRegex(String.valueOf(newPW.getPassword())))) {
					doublePWRegex.setForeground(Color.RED);
					doublePWRegex.setText("����4-10λ");
				} else {
					doublePWRegex.setForeground(Color.GREEN);
					doublePWRegex.setText("�����ʽ��ȷ");
				}
			}

		@Override
		public void actionPerformed(ActionEvent e) {
			if(e.getSource()==buttonSubmit&&Color.GREEN.equals(PWRegex.getForeground())&&Color.GREEN.equals(doublePWRegex.getForeground()))
			{
				sendNewPW();
				userID.setText("");
			}
	}

		@Override
		public void mouseClicked(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mousePressed(MouseEvent e) {
			if (e.getSource() == labelSubmit)
			{
				labelSubmit.setIcon(iconSubmit2);

			}
		}

		@Override
		public void mouseReleased(MouseEvent e) {
			if(e.getSource()==labelSubmit)
			{
				labelSubmit.setIcon(iconSubmit);
			if(Color.GREEN.equals(PWRegex.getForeground())&&Color.GREEN.equals(doublePWRegex.getForeground()))
			{
				sendNewPW();
				userID.setText("");
			}
			}
		}

		@Override
		public void mouseEntered(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseExited(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}
		
	}
	
	/*
	 * �ڲ��� ��ϵͳ��ʼ����ʱ�򣬴���һ���߳� ���ܣ������ӷ��������������� �������ݽ��д����ִ��
	 */

	private class InfoListener implements Runnable {

		@Override
		public void run() {
			while (true) {
				judgeAdmin(Service.listen(br));
			}
		}

		/*
		 * �������������������� ���ձ�ʶ��ֱ���в���
		 */
		private void judgeAdmin(String str) {
			// TODO
			if(str.startsWith("�޸��û�����"))
			{
				if("true".equals(dealInfo(str)))
				{
					JOptionPane.showMessageDialog(null, "�޸ĳɹ�");
				}
				else
					JOptionPane.showMessageDialog(null, "�޸�ʧ��", "�޸�����", JOptionPane.ERROR_MESSAGE);
			}
			if(str.startsWith("�鿴�û���Ϣ"))
			{
				labelTextarea.setText(dealInfo(str));
			}
			if (str.startsWith("���ѧ��")) {
				if ("true".equals(dealInfo(str)))
					JOptionPane.showMessageDialog(null, "��ӳɹ�");
				else
					JOptionPane.showMessageDialog(null, "���ʧ��", "���", JOptionPane.ERROR_MESSAGE);
			}
			if (str.startsWith("��ӽ�ʦ")) {
				if ("true".equals(dealInfo(str)))
					JOptionPane.showMessageDialog(null, "��ӳɹ�");
				else
					JOptionPane.showMessageDialog(null, "���ʧ��", "���", JOptionPane.ERROR_MESSAGE);
			}
		}

		/*
		 * ����õ��ַ������д��� ����,���ֿ���������ʶ�� �������õ���Ϣ
		 */
		private String dealInfo(String str) {
			String[] sArr = str.split(",");
			return sArr[1];
		}
	}

	/*
	 * �ڲ��� ��������ʱ���� ����:����һ���´��ڣ����������Ϣ���ṩ�ύ����
	 * 
	 */
	private class Submit extends JFrame implements MouseListener,ActionListener {
		private JTextField textID;
		private JLabel IDRegex;
		private JTextField textName;
		private JLabel nameRegex;
		private JTextField textPW;
		private JLabel PWRegex;
		private JTextField textAge;
		private JLabel ageRegex;
		private JTextField textSex;
		private JLabel sexRegex;
		private JButton buttonSubmit;
		private JLabel labelSubmit;
		private String str;
		final Image backImg =new ImageIcon("image/����ͼ3.jpg").getImage();

		public Submit(String str) {
			setTitle("���");
			this.str = str;
			double width = Toolkit.getDefaultToolkit().getScreenSize().getWidth();
		     double height = Toolkit.getDefaultToolkit().getScreenSize().getHeight();
		     int x=(int)(width-400)/2;
		     int y=(int)(height-450)/2;
			setBounds(x, y, 400, 450);
			contentPane = new JPanel();
			contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
			setContentPane(contentPane);
			contentPane.setLayout(null);

			buttonSubmit = new JButton();
//			buttonSubmit.setBounds(100, 310, 100, 40);
			buttonSubmit.setFont(new Font("΢���ź�", 1, 20));
			buttonSubmit.addActionListener(this);
			contentPane.add(buttonSubmit);
			
			labelSubmit = new JLabel();
			labelSubmit.setIcon(iconSubmit);
			labelSubmit.setBounds(100, 310, 160, 40);
			labelSubmit.addMouseListener(this);
			contentPane.add(labelSubmit);

			JLabel labelID = new JLabel("I    D");
			labelID.setBounds(13, 30, 80, 20);
			labelID.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(labelID);
			textID = new JTextField();
			textID.setBounds(100, 30, 135, 30);
			contentPane.add(textID);
			IDRegex = new JLabel("");
			IDRegex.setFont(new Font("����", 1, 17));
			IDRegex.setBounds(250, 30, 150, 20);
			contentPane.add(IDRegex);

			JLabel labelName = new JLabel("����");
			labelName.setBounds(13, 80, 80, 20);
			labelName.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(labelName);
			textName = new JTextField();
			textName.setBounds(100, 80, 135, 30);
			contentPane.add(textName);
			nameRegex = new JLabel("");
			nameRegex.setFont(new Font("����", 1, 17));
			nameRegex.setBounds(250, 80, 150, 20);
			contentPane.add(nameRegex);

			JLabel labelPW = new JLabel("����");
			labelPW.setBounds(13, 130, 80, 20);
			labelPW.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(labelPW);
			textPW = new JTextField();
			textPW.setBounds(100, 130, 135, 30);
			contentPane.add(textPW);
			PWRegex = new JLabel("");
			PWRegex.setFont(new Font("����", 1, 17));
			PWRegex.setBounds(250, 130, 150, 20);
			contentPane.add(PWRegex);

			JLabel labelAge = new JLabel("����");
			labelAge.setBounds(13, 180, 80, 20);
			labelAge.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(labelAge);
			textAge = new JTextField();
			textAge.setBounds(100, 180, 135, 30);
			contentPane.add(textAge);
			ageRegex = new JLabel("");
			ageRegex.setFont(new Font("����", 1, 17));
			ageRegex.setBounds(250, 180, 150, 20);
			contentPane.add(ageRegex);

			JLabel labelSex = new JLabel("�Ա�");
			labelSex.setBounds(13, 230, 80, 20);
			labelSex.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(labelSex);
			textSex = new JTextField();
			textSex.setBounds(100, 230, 135, 30);
			contentPane.add(textSex);
			sexRegex = new JLabel("");
			sexRegex.setFont(new Font("����", 1, 17));
			sexRegex.setBounds(250, 230, 150, 20);
			contentPane.add(sexRegex);

			JLabel p = new JLabel("") 
			 {
				public void paint(Graphics g) {
					g.drawImage(backImg, 0, 0, this.getWidth(), this.getHeight(), null);
				}
			 };
			 p.setBounds(0, 0, 400,450);
			 contentPane.add(p);
			
			new Thread(new AdminRegex()).start();
		}

		/*
		 * ��¼�����У���߳� ÿ0.5���ж�һ��
		 */
		private class AdminRegex implements Runnable {

			@Override
			public void run() {
				while (true) {
					regex();
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
			}

		}

		public void regex() {
			Regex regex = new Regex();
			if("���ѧ��".equals(this.str))
			{
				if (!regex.stuIDRegex(textID.getText())) {
					IDRegex.setForeground(Color.RED);
					IDRegex.setText("6λ����");
				} else {
					IDRegex.setForeground(Color.GREEN);
					IDRegex.setText("ID��ʽ��ȷ");
				}
			}
			else
			{
				if (!regex.teacherIDRegex(textID.getText())) {
					IDRegex.setForeground(Color.RED);
					IDRegex.setText("4λ����");
				} else {
					IDRegex.setForeground(Color.GREEN);
					IDRegex.setText("ID��ʽ��ȷ");
				}
			}
			if (!regex.sexRegex(textSex.getText())) {
				sexRegex.setForeground(Color.RED);
				sexRegex.setText("�л�Ů");
			} else {
				sexRegex.setForeground(Color.GREEN);
				sexRegex.setText("�Ա��ʽ��ȷ");
			}

			if (!regex.ageRegex(textAge.getText())) {
				ageRegex.setForeground(Color.RED);
				ageRegex.setText("1-2λ����");
			} else {
				ageRegex.setForeground(Color.GREEN);
				ageRegex.setText("�����ʽ��ȷ");
			}

			if (!regex.passwordRegex(textPW.getText())) {
				PWRegex.setForeground(Color.RED);
				PWRegex.setText("4-10λ");
			} else {
				PWRegex.setForeground(Color.GREEN);
				PWRegex.setText("�����ʽ��ȷ");
			}

			if (!regex.nameRegex(textName.getText())) {
				nameRegex.setForeground(Color.RED);
				nameRegex.setText("1-10λ����");
			} else {
				nameRegex.setForeground(Color.GREEN);
				nameRegex.setText("������ʽ��ȷ");
			}

		}

		/*
		 * �������������ӿγ����� ����ʶ���� ���ҷ��ʹ����������Ϣ ��������������������","����
		 */
		public void sendAdd() {
			StringBuilder sb = new StringBuilder();
			sb.append(this.str + ",");
			sb.append(textID.getText() + ",");
			sb.append(textName.getText() + ",");
			sb.append(textPW.getText() + ",");
			sb.append(textAge.getText() + ",");
			sb.append(textSex.getText());
			Service.send(pw, sb.toString());
		}

		/*
		 * ����Ա�����˵� Submit���¼� ������ύʱ
		 */
		@Override
		public void actionPerformed(ActionEvent e) {
			if (e.getSource() == buttonSubmit) {
				if (Color.GREEN.equals(IDRegex.getForeground()) &&Color.GREEN.equals(nameRegex.getForeground()) && Color.GREEN.equals(ageRegex.getForeground())
						&& Color.GREEN.equals(PWRegex.getForeground()) && Color.GREEN.equals(sexRegex.getForeground()))
				{
					sendAdd();
					dispose();
				}
				else
					JOptionPane.showMessageDialog(null, "��ʽ����ȷ", "���", JOptionPane.ERROR_MESSAGE);
			}
		}

		@Override
		public void mouseClicked(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mousePressed(MouseEvent e) {
			if (e.getSource() == labelSubmit)
			{
				labelSubmit.setIcon(iconSubmit2);

			}
		}

		@Override
		public void mouseReleased(MouseEvent e) {
			if (e.getSource() == labelSubmit) {
				labelSubmit.setIcon(iconSubmit);
				if (Color.GREEN.equals(IDRegex.getForeground()) &&Color.GREEN.equals(nameRegex.getForeground()) && Color.GREEN.equals(ageRegex.getForeground())
						&& Color.GREEN.equals(PWRegex.getForeground()) && Color.GREEN.equals(sexRegex.getForeground()))
				{
					sendAdd();
					dispose();
				}
				else
					JOptionPane.showMessageDialog(null, "��ʽ����ȷ", "���", JOptionPane.ERROR_MESSAGE);
			}
		}

		@Override
		public void mouseEntered(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseExited(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

	}

	/*
	 * ����Ա�˵��¼� ���ѧ����ť ����ӽ�ʦ��ť ���º󵯳��µĶ����˵���������Ϣ��������������
	 */
	@Override
	public void actionPerformed(ActionEvent e) {
//		
	}


	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mousePressed(MouseEvent e) {
		if(e.getSource()==labelAddTeacher)
		{
			labelAddTeacher.setIcon(iconAddTeacher2);
		}
		if(e.getSource()==labelAddStu)
		{
			labelAddStu.setIcon(iconAddStu2);
		}
		if(e.getSource()==labelModifyPW)
		{
			labelModifyPW.setIcon(iconModifyPW2);
		}
		if(e.getSource()==labelSearchUser)
		{
			labelSearchUser.setIcon(iconSearchUser2);
		}
	}


	@Override
	public void mouseReleased(MouseEvent e) {
		if (e.getSource() == labelAddStu) {
			labelAddStu.setIcon(iconAddStu);
			Submit submit = new Submit("���ѧ��");
			submit.setVisible(true);
		}
		if (e.getSource() == labelModifyPW)
		{
			labelModifyPW.setIcon(iconModifyPW);
			new ModifyPW(pw).setVisible(true);
		}
		
		if (e.getSource() == labelSearchUser) {
			labelSearchUser.setIcon(iconSearchUser);
			if(Color.GREEN.equals(laberUserIDRegex.getForeground()))
			{
				sendSearchInfo();
			}
			else
			JOptionPane.showMessageDialog(null, "ID��ʽ����ȷ", "��ѯ", JOptionPane.ERROR_MESSAGE);
		}
		if (e.getSource() == labelAddTeacher) {
			labelAddTeacher.setIcon(iconAddTeacher);
			Submit submit = new Submit("��ӽ�ʦ");
			submit.setVisible(true);
		}
	}

}
