package com.v246;
public class ReplaceAll
{
	public  static String replaceAll(String str1,String str2,String str3)
	{
		StringBuffer strBuf = new StringBuffer(str1);
	    int index=0;
	   // System.out.println("str1==="+str1+"STR2==="+str2+"STR3===="+str3);
		while(str1.indexOf(str2,index)!=-1)//�����str1�а�����str2
		{
			index=str1.indexOf(str2,index);//��¼STR2���ֵ�λ��
			strBuf.replace(str1.indexOf(str2,index),str1.indexOf(str2,index)+str2.length(),str3);//�滻��������str2�滻��str3
			index=index+str3.length();//��¼�滻����λ��

			 str1=strBuf.toString();
		}
		return strBuf.toString();
	} 
}