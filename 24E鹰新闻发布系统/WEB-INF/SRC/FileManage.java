package com.v246;
/*
 *��������ɾ��ָ���ļ�����ָ��Ŀ¼(��ɾ����Ŀ¼�������ļ����ļ���),������Ϊ�����Բ���,�޷��ָ�,������
 **/
public class FileManage
{
	public void deleteFile(String s)
	{
		try
		{
			java.io.File f=new java.io.File(s);
			if(f.exists())
			{
				if(f.isDirectory())//������ļ��еĻ�
				{
					java.io.File[] str=f.listFiles();//��ȡ���ļ������������ļ�������
					for(int i=0;i<str.length;i++)//�������ļ������������ļ����ļ���
					{
						if(str[i].isDirectory())//������ļ��еĻ�
						{
							deleteFile(str[i].toString());//�ݹ����
						}
						else
						{
							str[i].delete();//��������ļ��еĻ�,����ɾ��
						}	
					}
					f.delete();//��󽫸�Ŀ¼Ҳɾ��
				}
				else
				{
					f.delete();
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static void main(String[] args)
	{
		FileManage fm=new FileManage();
		fm.deleteFile("d:\\mmm");
	}
}