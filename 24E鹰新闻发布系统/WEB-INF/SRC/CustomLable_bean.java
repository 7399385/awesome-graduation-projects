package com.v246;
public class CustomLable_bean
{
	protected StringBuffer update=new StringBuffer(100);
	protected String sql;//�����û����������Ϣ����������SQL���
	protected String withClass;//������Ŀ
	protected StringBuffer insert=new StringBuffer(50);//����ִ��ִ�е�SQL���
	protected Connections connTmp=new Connections();
	protected CustomLable_form custom;
	protected java.sql.Connection conn=null;
	protected java.sql.Statement stm=null;
	protected java.sql.ResultSet rs=null;
	protected String modify;//�������޸ı�ǩ�������ӱ�ǩ
	protected String id;//Ҫ�޸ı�ǩ��id
	protected String re="custom";//����
	protected String lableName;//��ǩ����
	protected String remark;//��ǩ����
	protected String hot;//�Ƿ�����
	protected String news;//�Ƿ�����
	protected String barNumber;//��ʾ������
	protected String letterNumber;//ÿ����ʾ������
	protected String isUpdate;//�Ƿ���ʾʱ��
	protected String isClick;//�Ƿ���ʾ�����
	protected String staticed;//��̬��ʾ
	protected String dynamic;//��̬��ʾ
	protected void initValue()
	{
		modify=custom.getModify();
		id=custom.getId();
		withClass=custom.getWithClass();
		lableName=Aqu.getGB(custom.getLableName());
		remark=custom.getRemark();
		hot=Aqu.getRadioState(custom.getHotOrNews(),"hot");//�ж�ѡ�еİ�ť�������ѡ�У��򷵻�1���򷵻�0
		news=Aqu.getRadioState(custom.getHotOrNews(),"news");
		barNumber=custom.getBarNumber();
		letterNumber=custom.getLetterNumber();
		isUpdate=Aqu.getCheckState(custom.getIsUpdate());
		isClick=Aqu.getCheckState(custom.getIsClick());
		staticed=Aqu.getRadioState(custom.getStaticOrDynamic(),"staticed");
		dynamic=Aqu.getRadioState(custom.getStaticOrDynamic(),"dynamic");
		if(hot.equals("1"))//�����ʾ������������
		{
			if(withClass.equals("0"))//������޶���Ŀ
			{
				sql="select * from article order by Hits desc";//��ʼ��SQL���
			}
			else//�����������������Ŀ����ʾָ����Ŀ��
			{
				sql="select * from article where classID="+withClass+" order by Hits desc";
			}
		}
		else
		{
			if(withClass.equals("0"))
			{
				sql="select * from article order by UpdateTime desc";
			}
			else
			{
				sql="select * from article where classID="+withClass+" order by UpdateTime desc";
			}
		}		
	}
	public String addCustomLable(CustomLable_form custom) throws Exception
	{
		this.custom=custom;//��Action���õ������ݶ���洢���û��������Ϣ
		initValue();//��ʼ����Ϣ
		insert.append("insert into customLable(Sql,withClass,lableName,IsHot,IsNew,barNumber,letterNumber,isUpdateTime,IsClickNumber,staticed,dynamic,remark) values("+Aqu.addIC(sql)+","+withClass+","+"'{$"+lableName+"$}'"+","+hot+","+news+","+barNumber+","+letterNumber+","+isUpdate+","+isClick+","+staticed+","+dynamic+","+Aqu.addIC(remark)+")");
		update.append("update customLable set Sql="+Aqu.addIC(sql)+",withClass="+withClass+",LableName='{$"+lableName+"$}',IsHot="+hot+",IsNew="+news+",BarNumber="+barNumber+",LetterNumber="+letterNumber+",isUpdateTime="+isUpdate+",IsClickNumber="+isClick+",staticed="+staticed+",dynamic="+dynamic+",remark="+Aqu.addIC(remark)+" where id="+id);
		try
		{
			conn=connTmp.getConnection();
			stm=conn.createStatement();
		}
		catch(Exception e)
		{
			throw new Exception("Error in CustomLable_bean "+e.getMessage());
		}
		try
		{
			if(modify!=null&&modify.equals("modify"))
			{
				stm.executeUpdate(update.toString());
				re="ok";
			}
			else
			{
				rs=stm.executeQuery("select * from customlable where LableName='{$"+lableName+"$}'");
				if(rs.next())
				{
					
					re="error";//������ݿ����Ծ����ڸñ�ǩ�򷵻ش���
				}
				else//���򷵻�ok
				{
					stm.executeUpdate(insert.toString());
					re="ok";
				}

			}
					}
		catch(java.sql.SQLException e)
		{
			throw new java.sql.SQLException("Errore in CustomLable_bean NO.8"+e.getMessage());
		}
		finally
		{
			if(rs!=null)rs.close();
			if(stm!=null)stm.close();
			if(conn!=null)conn.close();
		}
		return re;
	}
}