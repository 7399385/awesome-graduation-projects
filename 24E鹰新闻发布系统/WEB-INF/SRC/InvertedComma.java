package com.v246;
/*
 *�����������ַ���ǰ�����˼ӵ����ţ��Ա��Ժ������ݿ������
 **/
public class InvertedComma
{
	String inverted_string=new String("'");
	String getIC(String s)
	{
		inverted_string="'"+s+"'";
		if(inverted_string==null||inverted_string.equals("''"))
		{
			inverted_string=new String("'0'");
		}
		else if(inverted_string.equals("'yes'"))
		{
			inverted_string=new String("'1'");
		}
		return inverted_string;
	}
}