package com.bjsxt.service;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.PrintWriter;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.border.EmptyBorder;

import com.bjsxt.client.Regex;
/*
 * ʵ���޸�����Ĺ��ܣ�ѧ��������Ա����ʦ��������
 * 
 */
	public class ServiceModify extends JFrame implements ActionListener,MouseListener {
		private boolean flag;
		private JPanel contentPane;
		private JLabel showOldPW;
		private JPasswordField oldPW;
		private JLabel PWRegex;
		private JLabel showNewPW;
		private JPasswordField newPW;
		private JLabel doublePWRegex;
//		private JButton buttonOldPW;
		private JButton buttonSubmit;
		private PrintWriter pw;
		private Regex regex = new Regex();
		private JLabel labelModifyPW;
		private JLabel labelSubmit;

		public boolean isFlag() {
			return flag;
		}
		public void setFlag(boolean flag) {
			this.flag = flag;
		}
		final Image backImg =new ImageIcon("image/����ͼ3.jpg").getImage();
		final ImageIcon iconModifyPW=new ImageIcon("image/��֤������.png");
		final ImageIcon iconModifyPW2=new ImageIcon("image/��֤������2.png");
		final ImageIcon iconSubmit=new ImageIcon("image/ȷ��.png");
		final ImageIcon iconSubmit2=new ImageIcon("image/ȷ��2.png");
		
		public ServiceModify(PrintWriter pw) {
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

			buttonSubmit = new JButton();
			contentPane.getRootPane().setDefaultButton(buttonSubmit);
			SwingUtils.enterPressesWhenFocused(buttonSubmit);
			contentPane.add(buttonSubmit);
			
			labelSubmit = new JLabel();
			labelSubmit.setIcon(iconSubmit);
			labelSubmit.setBounds(100, 240, 160, 40);
			labelSubmit.addMouseListener(this);
			contentPane.add(labelSubmit);
			
			
			
			
			
			labelModifyPW = new JLabel();
			labelModifyPW.setIcon(iconModifyPW);
			labelModifyPW.setBounds(100, 80, 120, 30);
			labelModifyPW.addMouseListener(this);
			contentPane.add(labelModifyPW);
			
			
			
//			buttonOldPW = new JButton("��֤������");
//			buttonOldPW.setBounds(100, 80, 100, 20);
//			buttonOldPW.addActionListener(this);
//			contentPane.add(buttonOldPW);

			  showOldPW=new JLabel("��    ��");
			 showOldPW.setBounds(13, 30, 150, 30);
			 showOldPW.setFont(new Font("΢���ź�", 1, 19));
			contentPane.add(showOldPW);
			
			  oldPW=new JPasswordField();
			  oldPW.setBounds(90, 30, 135, 30);
			contentPane.add(oldPW);
			
			  PWRegex=new JLabel("");
			 PWRegex.setBounds(250, 30, 150, 30);
			 PWRegex.setFont(new Font("������", 1, 17));
			contentPane.add(PWRegex);
			
			 showNewPW=new JLabel("��������");
			 showNewPW.setFont(new Font("΢���ź�", 1, 19));
			 showNewPW.setBounds(13, 145, 150, 30);
			contentPane.add(showNewPW);
			
			  newPW=new JPasswordField();
			  newPW.setBounds(90, 145, 135, 30);
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
			public void sendModifyOldPW() {
				StringBuilder sb = new StringBuilder();
				sb.append("�޸ľ�����,");
				sb.append(String.valueOf(oldPW.getPassword()));
//				sb.append(oldPW.getPassword());
				Service.send(pw, sb.toString());
			}
			public void sendSetNewPW() {
				StringBuilder sb = new StringBuilder();
				sb.append("����������,");
				sb.append(String.valueOf(newPW.getPassword()));
//				sb.append(newPW.getPassword());
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
				
				if (!(regex.passwordRegex(String.valueOf(oldPW.getPassword())))) {
					PWRegex.setForeground(Color.RED);
					PWRegex.setText("����4-10λ����");
				} else {
					PWRegex.setForeground(Color.GREEN);
					PWRegex.setText("�����ʽ��ȷ");
				}
				
				if (!String.valueOf(oldPW.getPassword()).equals(String.valueOf(newPW.getPassword()))) {
					doublePWRegex.setForeground(Color.RED);
					doublePWRegex.setText("�������벻һ��");
				} else {
					doublePWRegex.setForeground(Color.GREEN);
					doublePWRegex.setText("��������һ��");
				}
			}

		@Override
		public void actionPerformed(ActionEvent e) {
//			if(e.getSource()==buttonOldPW&&!flag&&Color.GREEN.equals(PWRegex.getForeground()))
//			{
//				sendModifyOldPW();
//				oldPW.setText("");
//			}
			
			if(e.getSource()==buttonSubmit&&flag&&Color.GREEN.equals(PWRegex.getForeground())&&Color.GREEN.equals(doublePWRegex.getForeground()))
			{
				sendSetNewPW();
				oldPW.setText("");
			}
			else if(e.getSource()==buttonSubmit&&!flag)
			{
				JOptionPane.showMessageDialog(null, "������֤������", "�޸�����", JOptionPane.ERROR_MESSAGE);
				oldPW.setText("");
				newPW.setText("");
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
			if (e.getSource() == labelModifyPW)
			{
				labelModifyPW.setIcon(iconModifyPW2);

			}
		}
		@Override
		public void mouseReleased(MouseEvent e) {
			if(e.getSource()==labelSubmit)
			{
				labelSubmit.setIcon(iconSubmit);
			if(flag&&Color.GREEN.equals(PWRegex.getForeground())&&Color.GREEN.equals(doublePWRegex.getForeground()))
			{
				sendSetNewPW();
				oldPW.setText("");
			}
			else if(!flag)
			{
				JOptionPane.showMessageDialog(null, "������֤������", "�޸�����", JOptionPane.ERROR_MESSAGE);
				oldPW.setText("");
				newPW.setText("");
			}
			}
			
			if(e.getSource()==labelModifyPW)
			{
			labelModifyPW.setIcon(iconModifyPW);
			if(!flag&&Color.GREEN.equals(PWRegex.getForeground()))
				{
					sendModifyOldPW();
					oldPW.setText("");
				}
			}
		}
		@Override
		public void mouseEntered(MouseEvent e) {
		}
		@Override
		public void mouseExited(MouseEvent e) {
		}
	}
