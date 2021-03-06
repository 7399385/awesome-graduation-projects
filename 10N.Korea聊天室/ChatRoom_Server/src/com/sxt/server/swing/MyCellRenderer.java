package com.sxt.server.swing;

import java.awt.Component;
import java.awt.Image;
import java.io.File;
import java.util.ArrayList;

import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.ListCellRenderer;

import com.sxt.vo.Users;
/**
 * JList单元块
 * @author gabriel
 *
 */

public class MyCellRenderer extends JLabel implements ListCellRenderer {
	ArrayList<Users> list ;
	public MyCellRenderer(ArrayList<Users> list) {
		this.list=list;
	}
	@Override
	public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected,
			boolean cellHasFocus) {

	   Users user=(Users)value;//把数据转换为user对象，  在AbstractListModel	中传过来的是一个user对象；
	   /*******设置JLable的文字******/ 
       String text="<html><font color=\"red\" size=\"30px\">"+"用户ID："+user.getId()+"<br/>"+"昵称："+user.getName()+" </font><html/>";
	   setText(text);//设置JLable的文字
	   /*******设置JLable的图片*****/
	   // 得到此图标的 Image,然后创建此图像的缩放版本。
	 //  Image img=user.u.getImage().getScaledInstance(50, 50, Image.SCALE_DEFAULT); 	
      // setIcon(new ImageIcon(getRandomPath()));//设置JLable的图片
	   //System.out.println(user.getImg());
	   ImageIcon icon =new ImageIcon("res/headimg/"+user.getImg());
		icon.setImage(icon.getImage().getScaledInstance(40, 40, Image.SCALE_DEFAULT));
	   setIcon( icon);
	  // setIcon(new ImageIcon("res/heading/"+user.getImg()));//设置JLable的图片
       setIconTextGap(30);//设置JLable的图片与文字之间的距离
       return this;
	}	
	public String getRandomPath(){
		File file=new File( MyCellRenderer.class.getResource("/resource/emotions/").getFile());
		File [] files=file.listFiles();
		String string=files[((int)(Math.random()*files.length))].getAbsolutePath();
		return string;
	}

}
