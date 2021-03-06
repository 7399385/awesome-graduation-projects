package com.zhatian.wzp.GUI;

import java.awt.Color;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import com.zhatian.Tinner.entity.Student;
import com.zhatian.kraken.control.StudentAction;
import com.zhatian.wzp.util.Regex;

/**
 * 用户登录窗体
 * @author Wang zhanpeng
 *
 */
public class LoginWindow extends JFrame{
	// 提升组件的作用域
	private ImageIcon background;
	private ImageIcon lg;
	private Container container;
	private JPanel jp;
	private JPanel information;
	private JLabel head;
	private JLabel logo;
	private JLabel back;
	private JLabel userLabel;
	private JLabel passwordLabel;
	private JLabel bottom1;
	private JLabel bottom2;
	private JTextField userText;
	private JPasswordField passwordText;
	private JButton okbtn;
	private JButton resert;
	private JButton register;
	private Font font;
	private JPanel timePanel;
    private JLabel timeLabel;
	private JLabel displayArea;
	private String DEFAULT_TIME_FORMAT = "HH:mm:ss";
	private String time;
	private int ONE_SECOND = 1000;
	
	static LoginWindow lw;
	//学生实体类
	public static Student stu;
	
	/*
	 * 初始化窗体类
	 */
	public static void main(String[] args) {
		lw = new LoginWindow();
	}
	
	/*
	 * 窗体组成及布局
	 */
	public LoginWindow() {
		this.setTitle("炸天_签到系统");
		
		//保存背景和logo图片
		background = new ImageIcon("resource\\student_resources\\login.jpg");
		lg = new ImageIcon("resource\\student_resources\\logo.jpg");
		
		//初始化一个存放组件的容器
		container = this.getContentPane();
		
		//将背景和logo存放到JLabel中，并初始化JLabel的位置和大小(大小为所存图片的大小)
		back = new JLabel(background);		
		logo = new JLabel(lg);
		back.setBounds(0, 0, background.getIconWidth(), background.getIconHeight());
		logo.setBounds(0, 0, lg.getIconWidth(), lg.getIconHeight());
		
		//初始化一个JPanel容器，设置其布局为空，初始化其大小和位置
		jp = new JPanel();
		jp.setLayout(null);
		jp.setBounds(0, 0, background.getIconWidth(), background.getIconHeight());
		
		//参数设置为true，设置背景色不透明
		jp.setOpaque(true);
	
		//设置窗体不可变及初始化窗体大小和位置
		this.setResizable(false);
		this.setSize(background.getIconWidth(), background.getIconHeight());
		this.setLocationRelativeTo(null);
		
		//将提示信息添加到JPanel中
		information = new JPanel();
		
		//初始化各组件
		timePanel = new JPanel();
		timeLabel = new JLabel("时间: ");
		displayArea = new JLabel();  
	    configTimeArea(); 
		timePanel.add(timeLabel);
		timePanel.add(displayArea);
		head = new JLabel("用户登录");
		userLabel = new JLabel("账 号:");
		passwordLabel = new JLabel("密 码: ");
		bottom1 = new JLabel("炸天出品");
		bottom2 = new JLabel("必属精品");
		userText = new JTextField();
		passwordText = new JPasswordField();
		okbtn = new JButton("确定");
		//给确定按钮添加监听器
		okbtn.addActionListener(new myActionListener());
		resert = new JButton("重置");
		//给重置按钮添加监听器
		resert.addActionListener(new myActionListener());
		register = new JButton("注册");
		//给注册按钮添加监听器
		register.addActionListener(new myActionListener());
		
		//给用户名和密码设置字体类型、颜色和大小
		font = new Font("微软雅黑", 0, 24);
		userLabel.setForeground(Color.black);
		passwordLabel.setForeground(Color.black);
		timePanel.setBackground(new Color(217, 169, 121));
		timeLabel.setForeground(Color.black);
		displayArea.setForeground(Color.black);
		timeLabel.setFont(font);
		displayArea.setFont(font);
		userLabel.setFont(font);
		passwordLabel.setFont(font);
		
		//给用户输入框内字体设置类型和大小
		font = new Font("楷体", 0, 20);
		userText.setFont(font);
		
		//给确定和终止按钮内添加字体类型、大小
		font = new Font("微软雅黑", 0, 18);
		okbtn.setFont(font);
		resert.setFont(font);
		register.setFont(font);	
		
		//给头部字体设置类型、颜色和大小
		font = new Font("微软雅黑", 0, 36);	
		head.setForeground(Color.white);
		head.setFont(font);
		
		//给尾部字体设置类型、颜色和大小
		font = new Font("微软雅黑", 0, 26);
		bottom1.setForeground(Color.white);
		bottom1.setFont(font);
		bottom2.setForeground(Color.white);
		bottom2.setFont(font);
		
		//给各个组件设置大小和布局位置(自定义坐标布局)
		head.setBounds(325, 30, 200, 80);
		logo.setBounds(220, 10, 100, 100);
		timePanel.setBounds(560, 20, 200, 50);
		userLabel.setBounds(240, 160, 100, 50);
	    passwordLabel.setBounds(240, 210, 100, 50);
	    userText.setBounds(310, 170, 240, 36);
	    passwordText.setBounds(310, 220, 240, 36);
	    okbtn.setBounds(238, 280, 80, 48);
	    resert.setBounds(358, 280, 80, 48);
	    register.setBounds(478, 280, 80, 48);
	    bottom1.setBounds(620, 400, 120, 60);
	    bottom2.setBounds(620, 430, 120, 60);
	    
	    //将各组件添加到JPanel中
	    jp.add(timePanel);
	    jp.add(head);
	    jp.add(logo);
	    jp.add(userLabel);
	    jp.add(passwordLabel);
	    jp.add(userText);
	    jp.add(passwordText);
	    jp.add(okbtn);
	    jp.add(resert);
	    jp.add(register);
	    jp.add(bottom1);
	    jp.add(bottom2);
	    jp.add(back);
	    
	    //将JPanel添加到容器中
	    container.add(jp);
	    container.add(information);
	    
	    //将容器设置为可见
		this.setVisible(true);
	}

	 	/**
		 * 此方法创建一个计时器任务来更新每秒的时间。
		 */
		 private void configTimeArea() {
			 Timer tmr = new Timer();
			 tmr.scheduleAtFixedRate(new JLabelTimerTask(),new Date(), ONE_SECOND);
		 }
		  
		 /**
		 * 计时器任务来更新时间显示区域 
		 *
		 */
		 protected class JLabelTimerTask extends TimerTask {
			 SimpleDateFormat dateFormatter = new SimpleDateFormat(DEFAULT_TIME_FORMAT);
			 @Override
			 public void run() {
			  time = dateFormatter.format(Calendar.getInstance().getTime());
			  displayArea.setText(time);
			 }
		 }
	
	/*
	 * 构造一个内部类实现ActionListener接口来处理监听到的事件
	 */
	private class myActionListener implements ActionListener {

		@Override
		public void actionPerformed(ActionEvent e) {
			
			//监听到确定按钮事件，执行各种判断
			if(okbtn == e.getSource()) {
				
				//获得用户输入的用户名和密码
				String user = userText.getText();
				String password = new String(passwordText.getPassword());
				
				//判断输入的各种情况，包括输入为空、输入格式错误、登录成功提示和登录失败提示(采用对话框显示)
				if(user.equals("")) {
					JOptionPane.showMessageDialog(information, "请您输入用户名再登录！", "提示信息",JOptionPane. WARNING_MESSAGE); 
				} else if(password.equals("")) {
					JOptionPane.showMessageDialog(information, "请您输入密码再登录！", "提示信息", JOptionPane.WARNING_MESSAGE);
				} else{
					boolean flag1 = Regex.usernameRegex(user);
					boolean flag2 = Regex.passwordRegex(password);  
					if(flag1 == false) {
						JOptionPane.showMessageDialog(information, "用户名格式错误！", "提示信息",JOptionPane. WARNING_MESSAGE);
					} else if(flag2 == false) {
						JOptionPane.showMessageDialog(information, "密码格式错误！", "提示信息", JOptionPane.WARNING_MESSAGE);
					} else{
						stu = StudentAction.studentLogin(user, password);
						if(stu != null) {
							lw.dispose();
							MainWindow.mw = new MainWindow();
						} else {
							JOptionPane.showMessageDialog(information, "用户名或密码错误！", "提示信息",JOptionPane. WARNING_MESSAGE);
						}
					}
				}	
			}
			
			//监听到重置事件，将用户输入的数据清空
			if(resert == e.getSource()) {
				userText.setText("");
				passwordText.setText("");
			}
			
			//监听到注册事件，跳转到注册窗口
			if(register == e.getSource()) {
				RegisterWindow.rw = new RegisterWindow();
				lw.dispose();
			}	
		}	
	}
}
