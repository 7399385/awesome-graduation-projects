package com.v246;
public class FormatTimeToArticleName
{
	public static String format(String s) //��ʽ��ʱ�佫2005-07-15 23:22:09��ʽ����20050715232209������ʽ
	{
		StringBuffer re=new StringBuffer();
		java.util.StringTokenizer analysis=new java.util.StringTokenizer(s,"- :");
		while(analysis.hasMoreTokens()) //ѭ�������ʽ��󷵻ص����������
		{
			re.append(analysis.nextToken());
		}
		re.append(".html");//����ʽ���������ַ��������ļ���
		return re.toString();//���ظ�ʽ����ɺ���ַ���
	}
}