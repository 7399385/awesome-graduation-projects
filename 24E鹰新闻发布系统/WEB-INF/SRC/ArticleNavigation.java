package com.v246;
public class ArticleNavigation
{
	int x,a,b,c,d;//����ñ���
	String url=null;//��վ����
	FullClassDir fullDir=new FullClassDir();//ָ��ID��ȫ·��/Article/abc/dir
	AquGetRows getRows=new AquGetRows();//���ڵõ���¼������
	String rows[][]=null;//���ڴ洢getRows ���صļ�¼���Ǹ���ά����
	java.sql.Connection conn=null;
	Connections connTmp=new Connections();
	StringBuffer okString=new StringBuffer(1024);//���ڴ洢�����ַ���
	public ArticleNavigation()//����Ҫ�ĳ�ʼ��
	{
		x=0;//ֻ��ִ��һ��stm_bp('p1',[1,4,0,0,2,3,6,7,100,'pr����
		a=0;//�����ǲ��ǵ�һ��һ��������Ŀ
		b=1;//JS�ļ��������������¼��õ�
		c=0;//����������getString()������һ�ε���findChild()����
		d=0;//ȷ��һ����������ֻ��һ����Ŀʱ�˵���ʽҲ������ʽ�ģ�����������ʽ�ģ�����ͱ���
		getUrl();
		okString.append("stm_bm(['uueoehr',400,'','/images/blank.gif',0,'','',0,0,0,0,0,1,0,0]);\n stm_bp('p0',[0,4,0,0,2,2,0,0,100,'',-2,'',-2,90,0,0,'#000000','transparent','',3,0,0,'#000000']);stm_ai('p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#000000','#000000','#000000','9pt ����','9pt ����',0,0]);\n stm_aix('p0i1','p0i0',[0,'��ҳ','','',-1,-1,0,'"+url+"/index.html','_self','"+url+"/Index.html','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����','9pt ����']);\n stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#000000','#000000','#000000','9pt ����','9pt ����',0,0]);");
	}
	protected  void getUrl()
	{
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	private void getOkString()
	{
		try
		{
			rows=getRows.getRows(connTmp.getConnection(),"class");//�õ�class��ļ�¼��
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		for(int i=0;i<rows[0].length;i++)
		{
		//	System.out.println(i);
			if(rows[1][i].equals("0"))//���Ҹ���Ŀ��Ҳ����һ������
			{
				try
				{			
					if(a==0&&rows[4][i].equals("true"))//�����ͷһ����¼�Ļ����򲻼�|��־�����ǰ��һ����¼�����¼���Ŀ�Ļ����͵ü���stm_bp('p1',[1,4,0,0,2,3,6,7,100,'pr����
					{				
						okString.append("stm_aix('p0i"+rows[0][i]+"','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_self','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����','9pt ����']);\r"+"stm_bp('p"+b+"',[1,4,0,0,2,3,6,7,100,'progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.43)',-2,'',-2,67,2,3,'#999999','#ffffff','',3,1,1,'#aca899']);\n");
						x++;//ȷ��ֻ������һ��stm_bp('p1',[1,4,0,0,2,3,6,7,100,'pr����
						
						//System.out.println("====================="+a);
					}
					else if(a==0&&rows[4][i].equals("false"))
					{
						okString.append("stm_aix('p0i"+rows[0][i]+"','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����','9pt ����']);\r");
					}
					else if(rows[4][i].equals("false"))//������ǵ�һ����¼�����ڴ�����|
					{
						okString.append("stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#000000','#000000','#000000','9pt ����','9pt ����',0,0]);\r"+"stm_aix('p0i"+rows[0][i]+"','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','','','','','',0,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����','9pt ����']);\r");
					}
					else if(x==0&&rows[4][i].equals("true"))
					{
						okString.append("stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#000000','#000000','#000000','9pt ����','9pt ����',0,0]);\r"+"stm_aix('p0i"+rows[0][i]+"','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_self','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����','9pt ����']);\r"+"stm_bp('p"+b+"',[1,4,0,0,2,3,6,7,100,'progid:DXImageTransform.Microsoft.Fade(overlap=.5,enabled=0,Duration=0.43)',-2,'',-2,67,2,3,'#999999','#ffffff','',3,1,1,'#aca899']);\n");
						x++;
					}

					if(i==rows[0].length-1)
					{
						okString.append("stm_aix('p0i2','p0i0',[0,'|','','',-1,-1,0,'','_self','','','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',1,'','',3,3,0,0,'#fffff7','#000000','#000000','#000000','9pt ����','9pt ����',0,0]);\r");
					}
					a++;//a�ԼӺ󣬴�����ͷһ����¼
					//System.out.println(a);
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				if(rows[4][i].equals("true"))//����ü�¼���¼���¼�Ļ�
				{
					
					findChild(rows[0][i]);//�����¼���¼���в���

					c=1;//ʹC=1��Ϊ�������Ծ�û�����ˣ������ظ���Ӽ�¼����Ӵ����¼��
					d=0;//ʹD==0��Ϊ���滹Ҫ�õ�

				}
			}
		}
		okString.append("stm_em();");//��ӽ�����־
	}
	public void findChild(String id)
	{
		
		
		for(int i=0;i<rows[0].length;i++)
		{
	
			if(rows[1][i].equals(id)&&rows[4][i].equals("false"))//�����ǰ��¼�ĸ���ID������id�Ķ��ü�¼��û���¼���¼�Ļ�
			{
				int tmp=0;//����ͱ�������Ϊ��IF��ֻ��ִ��һ��okString����Ӷ�����ִ�ж��˻��ظ�
				try
				{
					for(int x=0;x<i;x++)//���Ҹü�¼֮ǰ�ļ�¼�������ü�¼��û��ͬ����¼���ֵܼ�¼��
					{
						
						if(rows[1][x].equals(id)&&tmp==0)//�����ͬ����¼���Ͳ������(p2,p1)����
						{
							okString.append("stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',3,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							tmp++;
						//	System.out.println("8888888888888888888888888888888888888888888888"+rows[2][i]);
							
						}
						else if(d==0&&tmp==0&&x==i-1&&c!=0)//�����һ����������ֻ��һ����Ŀ��[1,4,0,0,2,3,6]ȷ���˵���ʽ������ʽ��
						{
							okString.append("stm_bpx('p"+(b+1)+"','p"+b+"',[1,4,0,0,2,3,6]);"+"stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',3,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							b++;
							d++;
						}
						else if(tmp==0&&x==i-1&&c!=0)//���û�в��ҵ��ü�¼��ͬ����¼�Ļ����ͱ������(p2,p1)����
						{
							okString.append("stm_bpx('p"+(b+1)+"','p"+b+"',[1,2,-2,-3,2,3,0]);"+"stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',3,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							b++;
						}
						else if(tmp==0&&x==i-1&&c==0)
						{
							okString.append("stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',3,0,0,'','',0,0,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							tmp++;
						}
					}
					
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
			}
			else if(rows[1][i].equals(id)&&rows[4][i].equals("true"))//��������ü�¼���¼������ӣ��Ļ�
			{
				int tmp=0;//����ͱ�������Ϊ�ڱ�IF��ֻ��ִ��һ��okString����Ӷ��������ִ�ж��ˣ��ͻ��ظ�				
				try
				{		

					for(int x=0;x<i;x++)//���Ҹü�¼ǰ�����Ƿ���ͬ����¼���ֵܣ�
					{
						
						if(rows[1][x].equals(id)&&tmp==0)//�����ͬ����¼�Ļ��Ͳ������(p2,p1)����
						{
							okString.append("stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',6,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',7,7,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							tmp++;
							
						}
						else if(c==0&&x==i-1)//�����getOkstring()�ĵ�һ�ε��ñ�����(findChild)��Ҳ���Ǹü�¼�����stm_bp('p1',[1,4,0,0,2�����������ģ��ü�¼�������(p2,p1)�����ᵹ��js�ļ����ܱ���ȷ��ִ��
						{
							okString.append("stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',0,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',7,7,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							d++;//��Ϊֻ��һ��һ����Ŀʱ�˵���ʽ���Զ�Ϊ����ʽ������dҪ++
						}
						else if(d==0&&tmp==0&&x==i-1)//ȷ����һ����������ֻ��һ����Ŀʱ�˵���ʽΪ����ʽ��
						{
							okString.append("stm_bpx('p"+(b+1)+"','p"+b+"',[1,4,0,0,2,3,6]);"+"stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',3,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',0,0,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							b++;
							d++;
						}
						else if(tmp==0&&x==i-1)//��������һ����¼������tmpΪ0Ҳ����û�ҵ�ͬ����¼�Ļ����ͱ������(p2,p1)����
						{
							okString.append("stm_bpx('p"+(b+1)+"','p"+b+"',[1,2,-2,-3,2,3,0]);"+"stm_aix('p"+(b+1)+"i0','p0i0',[0,'"+rows[2][i]+"','','',-1,-1,0,'"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','_blank','"+url+"/Article"+fullDir.getClassDir(Integer.parseInt(rows[0][i]),"/")+"/index.html','"+rows[2][i]+"','','',6,0,0,'/images/arrow_r.gif','/images/arrow_w.gif',7,7,0,0,1,'#f1f2ee',1,'#cccccc',0,'','',3,3,0,0,'#fffff7','#ff0000','#000000','#cc0000','9pt ����']);\r");
							b++;
						}
					}
				c=1;//��������C��ֵû�䣬��ʹ��¼�ظ�,��ΪC��ֵһ��Ͳ��ǵ�һ��ִ�б�������
				findChild(rows[0][i]);//���еݹ����������Ŀ
				
				
				}
				catch(Exception e)		
				{
					e.printStackTrace();
				}
				
				
			
			}
			if(i>=rows[0].length-1)//����Ծ������˸ô�ѭ��
			{
			
				okString.append("stm_ep();\r");//����JS�з����ϼ��˵��Ա���й���
			}
		}
	}
	public void write()
	{
		getOkString();
		WriteHtml writeHtml=new WriteHtml();
		writeHtml.save(okString.toString(),"/Article/js","ShowClass_Menu.js");//����JS�ļ�
	}
	public static void main(String []args)
	{
		ArticleNavigation navigation=new ArticleNavigation();
		navigation.write();
	}
}