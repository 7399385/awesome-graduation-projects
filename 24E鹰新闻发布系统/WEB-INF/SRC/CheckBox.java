package com.v246;
/*
 *���������жϸ�ѡ���ѡ��״̬�����Ϊѡ��״̬�򷵻�1���򷵻�0
 **/
public class CheckBox
{
	String tmp;
	public String getValue(String checkBox)
	{
			if(checkBox!=null&&checkBox.equals("Yes"))
			{
				tmp=new String("'1'");
			}
			else
			{
				tmp=new String("'0'");
			}

			return tmp;
	}
}