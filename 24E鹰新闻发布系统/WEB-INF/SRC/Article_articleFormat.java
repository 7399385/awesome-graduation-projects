package com.v246;
public class Article_articleFormat
{
	protected CustomLableFormat customFormat=new CustomLableFormat();
	protected String url=null; //�洢��վ�İ�װĿ¼
	protected StringBuffer navigationScript=new StringBuffer(200); //���ڴ洢��վ������javaScript����
	protected ArticleNonceLocation loca=new ArticleNonceLocation();//�洢��ǰλ��
	protected WriteHtml writeHtml=new WriteHtml();//����HTML
	protected java.sql.Connection conn;
	protected java.sql.Statement stm=null;
	protected java.sql.ResultSet rs=null;
	protected Connections connTmp=new Connections();
	protected String navigation="{$navigation$}";
	protected String nonceLocation="{$nonceLocation$}";//��ǰλ��
	protected String title="{$title$}";//��̱��⣺
	protected String titleIntact="{$titleIntact$}";//�������⣺
	protected String subheading="{$subheading$}";//�� �� ��
	protected String author="{$author$}";//��������
	protected String copyFrom="{$copyFrom$}";//������Դ
	//protected String intro="{$intro$}";//���¼��
	protected String content="{$content$}";//��������
	protected String updateTime="{$updateTime$}";//¼��ʱ��
	protected String click="{$click$}";//�����
	protected String clickScript=null;
	protected Article_addArticle article;
	protected String template;
	protected ReplaceAll replaceAll=new ReplaceAll();
	public void getTemplate()throws Exception //�������ݿ⣬��ȡģ������
	{

		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
			rs=stm.executeQuery("select * from template where WithType='10' and IsDefault='1'");
		}
		catch(Exception e2)
		{
			throw new Exception("Error in Article_articleFormat.class NO.5 "+e2.getMessage());
		}
		try
		{
			rs.next();
			template=rs.getString("Content");
		}
		catch(Exception e3)
		{
			throw new Exception("Error in Article_articleFormat.class NO.4 "+e3.getMessage());
		}
		finally
		{
			
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		//System.out.println("++++++++++++++++++++++++++++++++++++++++++"+template);

	}
	protected void initNavigationScript()throws Exception
	{
		try
		{
			url=Aqu.getUrl(connTmp.getConnection(),"config","url");
		}
		catch(Exception e)
		{
			throw new Exception("Error in Article_articleFormat.java NO.3 "+e.getMessage());
		}
		navigationScript.append("<script language='JavaScript' type='text/JavaScript' src='"+url+"/Article/js/menu.js'></script> <script type='text/javascript' language='JavaScript1.2' src='"+url+"/Article/js/stm31.js'></script> <script language='JavaScript1.2' type='text/JavaScript' src='"+url+"/Article/js/ShowClass_Menu.js'></script>");
	}
	protected void format() throws Exception//��ʽ������������ǩ�滻�����������ʵ����
	{
		String custom[][]=null;
		try
		{
			custom=customFormat.lableFormat();
		}
		catch(Exception e)
		{
			throw new Exception("Error in Article_articleFormat.java NO.2 "+e.getMessage());
		}
		for(int i=0;i<custom.length;i++)
		{
			template=replaceAll.replaceAll(template,custom[i][0],custom[i][1]);
		}
		initNavigationScript();
		template=replaceAll.replaceAll(template,click,clickScript);
		template=replaceAll.replaceAll(template,navigation,navigationScript.toString());
		template=replaceAll.replaceAll(template,title,article.getTitle());
		template=replaceAll.replaceAll(template,titleIntact,article.getTitleIntact());
		template=replaceAll.replaceAll(template,subheading,article.getSubheading());
		template=replaceAll.replaceAll(template,author,article.getAuthor());
		template=replaceAll.replaceAll(template,copyFrom,article.getCopyFrom());
		
		template=replaceAll.replaceAll(template,updateTime,article.getUpdateTime());
		template=replaceAll.replaceAll(template,nonceLocation,loca.getLocation(article.getClassID()));
		template=replaceAll.replaceAll(template,content,article.getContent());
	}
	private String getID() throws Exception
	{
		String re=null;
		java.sql.Connection conn1=null;
		java.sql.Statement stm1=null;
		java.sql.ResultSet rs1=null;
		try
		{			
			conn1=connTmp.getConnection();
			stm1=conn1.createStatement();
			rs1=stm1.executeQuery("select * from Article where UpdateTime='"+article.getUpdateTime()+"'");
			if(rs1.next())
			{
				re=String.valueOf(rs1.getInt("ArticleID"));
			}
			else
			{
				re=null;
			}
			
		}
		catch(Exception e)
		{
			throw new Exception("Error in Article_articleFormat.java NO.1 "+e.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
			
		}
		return re;
		
	}
	

	public void addArticle(Article_addArticle article)throws Exception
	{
		
		StringBuffer classPath=new StringBuffer(); 
		FullClassDir classDir=new FullClassDir(); //��ʼ����Ŀ·������
		classPath.append("\\Article");//�ļ�Ŀ¼
		classPath.append(classDir.getClassDir(Integer.parseInt(article.getClassID())));//�õ�ָ��ID����Ŀ����Ŀ¼(��Ϊ�п������и�����Ŀ�ģ�
		String tmpUpdateTime=article.getUpdateTime();//�õ��������ʱ��
		this.article=article;
		getTemplate();//�õ�ģ��
		clickScript="<script src='"+Aqu.getUrl(connTmp.getConnection(),"config","url")+"/showClickNumber.jsp?id="+getID()+"'></script>";
		format();//��ʼ��ʽ��ģ�壨����ǩ�滻���������ʵ������
		tmpUpdateTime=FormatTimeToArticleName.format(tmpUpdateTime);//��ʱ���ʼ��Ҫ���ɵ��ļ���
		classPath.append("\\"+tmpUpdateTime.subSequence(0,4)+"\\"+tmpUpdateTime.subSequence(4,6));//�õ��꣨2005������洢��һ���һ��Ŀ¼
		writeHtml.save(template,classPath.toString(),tmpUpdateTime);//��ʼ����HTML,classpath������Ҫ�洢��λ�ü��ļ���
	}





}