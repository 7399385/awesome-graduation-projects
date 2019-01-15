package com.bjsxt.swing;

import java.awt.Graphics;
import java.awt.Image;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.bjsxt.client.Regex;
import com.bjsxt.service.Service;
import com.bjsxt.service.ServiceModify;
import com.bjsxt.service.SwingUtils;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JTextArea;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.awt.event.ActionEvent;
import java.awt.Toolkit;


public class Teacher extends JFrame implements ActionListener,MouseListener{

	private Socket socket;
	private PrintWriter pw;
	private BufferedReader br;
	private ServiceModify sm;
	
	
	private JLabel labelModifyPW;
	private JLabel labelAddCourse;
	private JLabel labelPersonalInfo;
	private JLabel labelMyStudents;
	private JTextArea textArea;
	private JPanel contentPane;
	
	final Image backImg =new ImageIcon("image/����ͼ5.jpg").getImage();
	final ImageIcon iconModifyPW=new ImageIcon("image/�޸�����11.png");
	final ImageIcon iconModifyPW2=new ImageIcon("image/�޸�����22.png");
	final ImageIcon iconAddCourse=new ImageIcon("image/��ӿγ�.png");
	final ImageIcon iconAddCourse2=new ImageIcon("image/��ӿγ�2.png");
	final ImageIcon iconPersonalInfo=new ImageIcon("image/�ҵ���Ϣ.png");
	final ImageIcon iconPersonalInfo2=new ImageIcon("image/�ҵ���Ϣ2.png");
	final ImageIcon iconMyStudents=new ImageIcon("image/�ҵ�ѧ��.png");
	final ImageIcon iconMyStudents2=new ImageIcon("image/�ҵ�ѧ��2.png");
	
	public Teacher(Socket s) {
		socket = s;
		try {
			pw = new PrintWriter(this.socket.getOutputStream());
			br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		final ImageIcon myimage=new ImageIcon("image/������.jpg");
	    final Image image=myimage.getImage();
	    final ImageIcon myimage2=new ImageIcon("image/teacher.png");
	    final Image image2=myimage2.getImage();
		
	    
	    setTitle("��ʦ����");
	    double width = Toolkit.getDefaultToolkit().getScreenSize().getWidth();
	     double height = Toolkit.getDefaultToolkit().getScreenSize().getHeight();
//	     int x=(int)(width-574)/2;
//	     int y=(int)(height-500)/2;
//		setBounds(x, y, 574, 500);
	     int x=(int)(width-574)/2;
	     int y=(int)(height-600)/2;
		setBounds(x, y, 574, 600);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		labelModifyPW = new JLabel();
		labelModifyPW.setIcon(iconModifyPW);
		labelModifyPW.setBounds(20, 130, 160, 40);
		labelModifyPW.addMouseListener(this);
		contentPane.add(labelModifyPW);
		
		labelAddCourse = new JLabel();
		labelAddCourse.setIcon(iconAddCourse);
		labelAddCourse.setBounds(350, 450, 160, 40);
		labelAddCourse.addMouseListener(this);
		contentPane.add(labelAddCourse);
		
		labelMyStudents = new JLabel();
		labelMyStudents.setIcon(iconMyStudents);
		labelMyStudents.setBounds(60, 450, 160, 40);
		labelMyStudents.addMouseListener(this);
		contentPane.add(labelMyStudents);
		
		labelPersonalInfo = new JLabel();
		labelPersonalInfo.setIcon(iconPersonalInfo);
		labelPersonalInfo.setBounds(20, 40, 160, 40);
		labelPersonalInfo.addMouseListener(this);
		contentPane.add(labelPersonalInfo);
		
		 textArea = new JTextArea();
		 textArea.setFont(new Font("΢���ź�", 1, 17));
		 textArea.setBackground(new Color(181, 191, 190));
		textArea.setBounds(10, 200, 532, 210);
		contentPane.add(textArea);
		
		JLabel labelP = new JLabel(){
			public void paint(Graphics g){
	               g.drawImage(image2, 0, 0,this.getWidth(),this.getHeight(),null);
	           }
		};
		labelP.setBounds(345, 0, 211, 178);
		contentPane.add(labelP);
		
		
		JLabel label = new JLabel("") {
			public void paint(Graphics g) {
				g.drawImage(backImg, 0, 0, this.getWidth(), this.getHeight(), null);
			}
		};
		label.setBounds(0, 0, 574, 550);
		contentPane.add(label);
		
		new Thread(new InfoListener()).start();
	}
	
	private class Submit extends JFrame implements MouseListener,ActionListener
	{
		private JTextField textID;
		private JLabel IDRegex;
		private JTextField textName;
		private JLabel nameRegex;
		private JButton buttonSubmit;
		private JLabel labelSubmit;
		final Image backImg =new ImageIcon("image/����ͼ3.jpg").getImage();
		final ImageIcon iconSubmit=new ImageIcon("image/ȷ��.png");
		final ImageIcon iconSubmit2=new ImageIcon("image/ȷ��2.png");
		public Submit() 
		{
			setTitle("��ӿγ�");
			double width = Toolkit.getDefaultToolkit().getScreenSize().getWidth();
		     double height = Toolkit.getDefaultToolkit().getScreenSize().getHeight();
		     int x=(int)(width-400)/2;
		     int y=(int)(height-380)/2;
			setBounds(x, y, 400, 380);
			contentPane = new JPanel();
			contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
			setContentPane(contentPane);
			contentPane.setLayout(null);
			
			buttonSubmit=new JButton();
			contentPane.getRootPane().setDefaultButton(buttonSubmit);
			SwingUtils.enterPressesWhenFocused(buttonSubmit);
			contentPane.add(buttonSubmit);
			
			labelSubmit = new JLabel();
			labelSubmit.setIcon(iconSubmit);
			labelSubmit.setBounds(110, 240, 160, 40);
			labelSubmit.addMouseListener(this);
			contentPane.add(labelSubmit);
			
			
			JLabel labelID = new JLabel("�γ�I D");
			labelID.setFont(new Font("΢���ź�", 1, 19));
			labelID.setBounds(13, 50, 80, 20);
			contentPane.add(labelID);
			textID=new JTextField();
			textID.setBounds(100, 50, 135, 30);
			contentPane.add(textID);
			 IDRegex = new JLabel("");
			 IDRegex.setFont(new Font("����", 1, 17));
			IDRegex.setBounds(250, 50, 150, 20);
			contentPane.add(IDRegex);
			
			JLabel labelName = new JLabel("�γ�����");
			labelName.setFont(new Font("΢���ź�", 1, 19));
			labelName.setBounds(13, 145, 80, 20);
			contentPane.add(labelName);
			textName=new JTextField();
			textName.setBounds(100, 145, 135, 30);
			contentPane.add(textName);
			nameRegex = new JLabel("");
			nameRegex.setFont(new Font("����", 1, 17));
			nameRegex.setBounds(250, 145, 150, 20);
			contentPane.add(nameRegex);
			
				JLabel p = new JLabel("") 
				 {
					public void paint(Graphics g) {
						g.drawImage(backImg, 0, 0, this.getWidth(), this.getHeight(), null);
					}
				 };
				 p.setBounds(0, 0, 400,380);
				 contentPane.add(p);
				
			new Thread(new AdminRegex()).start();
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

		public void regex() {
			Regex regex = new Regex();
			
			
			if (!regex.courseIDRegex(textID.getText())) {
				IDRegex.setForeground(Color.RED);
				IDRegex.setText("��λ����");
			} else {
				IDRegex.setForeground(Color.GREEN);
				IDRegex.setText("�γ�ID��ʽ��ȷ");
			}
			
			if (!regex.courseNameRegex(textName.getText())) {
				nameRegex.setForeground(Color.RED);
				nameRegex.setText("1-10λ����");
			} else {
				nameRegex.setForeground(Color.GREEN);
				nameRegex.setText("���Ƹ�ʽ��ȷ");
			}
			
		}
		
		
		/*
		 * �������������ӿγ����� ����ʶ���� ���ҷ��ʹ�������õ�ID��
		 * �γ������ڿν�ʦ���γ�����  ��������������������","����
		 */
		public void sendAddCourse() {
			StringBuilder sb = new StringBuilder();
			sb.append("��ӿγ�,");
			sb.append(textID.getText()+",");
			sb.append(textName.getText());
			Service.send(pw, sb.toString());
		}
		
		
		/*
		 * ����Ա�����˵�
		 * Submit���¼�
		 * ������ύʱ
		 */
		@Override
		public void actionPerformed(ActionEvent e) {
			if(e.getSource()==buttonSubmit)
			{
				if(Color.GREEN.equals(nameRegex.getForeground())&&Color.GREEN.equals(IDRegex.getForeground()))
				{
					sendAddCourse();
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
			if(e.getSource()==labelSubmit)
			labelSubmit.setIcon(iconSubmit);
			{
				if(Color.GREEN.equals(nameRegex.getForeground())&&Color.GREEN.equals(IDRegex.getForeground()))
				{
					sendAddCourse();
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
	 * �ڲ��� ��ϵͳ��ʼ����ʱ�򣬴���һ���߳� ���ܣ������ӷ��������������� �������ݽ��д����ִ��
	 */
	private class InfoListener implements Runnable {

		@Override
		public void run() {
			while (true) {
				judgeTeacher(Service.listen(br));
			}
		}
		/*
		 * �������������������� ���ձ�ʶ��ֱ���в���
		 */
		private void judgeTeacher(String str) {
			if(str.startsWith("�޸ľ�����"))
			{
				if("true".equals(dealInfo(str)))
				{
					JOptionPane.showMessageDialog(null, "������ȷ");
					sm.setFlag(true);
				}
				else
					JOptionPane.showMessageDialog(null, "�������", "�޸�����", JOptionPane.ERROR_MESSAGE);
			}
			if(str.startsWith("����������"))
			{
				if("true".equals(dealInfo(str)))
				{
					JOptionPane.showMessageDialog(null, "���óɹ�");
					sm.setFlag(false);
					sm.dispose();
				}
				else
					JOptionPane.showMessageDialog(null, "����ʧ��", "�޸�����", JOptionPane.ERROR_MESSAGE);
			}
			if (str.startsWith("��ʦ������Ϣ"))
				textArea.append(dealInfo(str)+"\n");
			if (str.startsWith("����ѧ��"))
				textArea.append(dealInfo(str)+"\n");
			if (str.startsWith("��ӿγ�")) {
				if ("true".equals(dealInfo(str)))
				JOptionPane.showMessageDialog(null, "��ӳɹ�");
				else
					JOptionPane.showMessageDialog(null, "���ʧ��", "��ӿγ�", JOptionPane.ERROR_MESSAGE);
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
	@Override
	public void actionPerformed(ActionEvent ae) {
	}
	@Override
	public void mouseClicked(MouseEvent e) {
		
	}
	@Override
	public void mouseEntered(MouseEvent e) {
		
	}
	@Override
	public void mouseExited(MouseEvent e) {
		
	}
	@Override
	public void mousePressed(MouseEvent e) {
		if (e.getSource() == labelMyStudents)
		{
			labelMyStudents.setIcon(iconMyStudents2);
		}
		if (e.getSource() == labelPersonalInfo)
		{
			labelPersonalInfo.setIcon(iconPersonalInfo2);
		}
		if (e.getSource() == labelModifyPW)
		{
			labelModifyPW.setIcon(iconModifyPW2);

		}
		if (e.getSource() == labelAddCourse)
		{
			labelAddCourse.setIcon(iconAddCourse2);

		}
	}
	@Override
	public void mouseReleased(MouseEvent ae) {
		if(ae.getSource()==labelPersonalInfo)
		{
			labelPersonalInfo.setIcon(iconPersonalInfo);
			textArea.setText("");
			textArea.append("=================��ʦ������Ϣ===================\n");
			Service.send(pw, "��ʦ������Ϣ");
		}
		if(ae.getSource()==labelAddCourse)
		{
			labelAddCourse.setIcon(iconAddCourse);
			new Submit().setVisible(true);
		}
		if (ae.getSource() == labelModifyPW)
		{
			labelModifyPW.setIcon(iconModifyPW);
			 sm=new ServiceModify(pw);
			sm.setVisible(true);

		}
		if(ae.getSource()==labelMyStudents)
		{
			labelMyStudents.setIcon(iconMyStudents);
			textArea.setText("");
			textArea.append("=================����ѧ��=================\n");
			Service.send(pw, "����ѧ��");
		}
	}




}
