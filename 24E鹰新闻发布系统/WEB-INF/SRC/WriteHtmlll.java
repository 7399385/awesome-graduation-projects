package com.v246;

import java.io.*;

public class WriteHtmlll 
{

	public WriteHtmlll() 
	{
	}

	public static String save(String s, String s1, String s2) throws Exception//������HTML���ݣ�s1:Ŀ¼����Ŀ),s2:�ļ���

	{
		String a="1024";
	//	a=System.getProperty("file.separator");
		
		
		Path path=new Path();
		try
		{
			a=path.getPathFromClass(Path.class); //�õ�Path.class���ȫ·��
		}
		catch(Exception e)
		{
			throw new Exception(e.getMessage());
		}
		StringBuffer str=new StringBuffer(a);
		str.replace(a.indexOf("\\WEB-INF\\classes"),a.length(),"");//�õ�����ռ��ϵ���վ·��
		str.append(s1+"\\");//�ں������\
		s1=str.toString();//ת�����ַ�����
		try 
		{
			a(s1);//������û��ָ����Ŀ¼�����û�У���һ����
			FileOutputStream fileoutputstream = new FileOutputStream(s1 + s2);//�����ļ�
			byte abyte0[] = s.getBytes();//���ַ����͵�����ת����BYTE�͵�
			fileoutputstream.write(abyte0);//���ո�ת����ɵ�BYTE����д�뵽�ļ���
			fileoutputstream.close();//�ر��ļ���
			//System.out.println(s1+s2);
		} 
		catch (IOException e)
		{
			System.out.println("write html error" + e.getMessage());
			throw new Exception(e.getMessage());
		}
		a=a+"#########"+s1;
		return a;
	}

	private static void a(String s) 
	{
		try 
		{
			File file = new File(s); //�����ļ�
			if (!file.exists())//���û��ָ��Ŀ¼
				file.mkdirs();//��һ��
		} 
		catch (Exception e) 
		{
			System.out.println("mkdirs error!" + e.getMessage());
		}
	}
	public static void main(String []args)
	{
		String a;
		a=System.getProperty("file.separator");
		
		
		Path path=new Path();
		try
		{
			a=path.getPathFromClass(Path.class);
		}
		catch(Exception e)
		{
			
		}
		StringBuffer str=new StringBuffer(a);
		str.replace(a.indexOf("\\WEB-INF\\classes"),a.length(),"");
		System.out.println(str);
	}
}