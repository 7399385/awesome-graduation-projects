package com.v246;
/*
 *�޼����࣬���ݿ�(MYSQL)��������:
 *create table class(Id int(10) not null auto_increment,ParentID int(10) not null,Title varchar(255) not null,ClassDir varchar(255),Flag bit default 0,ChildNum int(10),Target varchar(255),PRIMARY KEY(Id));
 *
 **/
public class NoLevelSort
{
	protected java.util.Collection coll=new java.util.ArrayList();
	private StringAnalysis ana=new StringAnalysis();
	public String[] reTitle;
	public String[] reId;
	private String title="";//���ڴ洢������֮�����Ŀ����,��xxxx##   yyyyyy##    ddddd��ʽ�洢,�õ�ʱ��Ҫ��StrngToKen��������,Ȼ��������ɵõ�
	private String id="";//���ڴ����޼�������Ӧ��Ŀ���Ƶ�ID,�洢����ͬTITLE
	private String [] re=new String[2];//����TITLE��IDҪ���ŵ����������,�Ա㷵��
	private String [][] rows=null;//һ�߶�ά����,����洢�������к��е�ֵ
	private String rowCount=null;//�õ����ݵ�������
	public NoLevelSort()throws Exception
	{
		try
		{
			this.getNoLevelSort();
		}
		catch(Exception e0)
		{
			throw new Exception("Error in NoLevelSort.class 22! "+e0.getMessage());
		}
		for(int i=0;i<reTitle.length;i++)
		{
			coll.add(new NoLevelSortValues(reTitle[i],reId[i]));
		}
	}
	public java.util.Collection getColl()
	{
		return coll;
	}
	public void getNoLevelSort()throws Exception//��ʼ�޼�����ķ���
	{
		Connections connTmp=new Connections();
		AquGetRows aquGetRows=new AquGetRows();//�����������������ָ�����Ƶı�������к��е�ֵ����
		try
		{
 			rows=aquGetRows.getRows(connTmp.getConnection(),"class");//�������еķ���,���÷�����͵õ���һ���洢ָ���������к��еĶ�ά����,����(Connection,String(tableName)

		}
		catch(Exception e)
		{
			throw new Exception("error in NoLevelSort.class 43! "+e.getMessage());
		}
		rowCount=String.valueOf(aquGetRows.getRowsCount());//�õ����ݱ�����(һ���ж�������¼)
		this.CheckList("0",rowCount,"");//��ʼҪ��ȡ�õ�����,�γ��޼�����
	//	re[0]=title;//�洢��һά�����Ժ󷵻ظ��û�
	//	re[1]=id;
	//	return re;
		reTitle=ana.startAnalysis(title,"##");
		reId=ana.startAnalysis(id,"##");
	}
	public String[] getTitle()
	{
		return reTitle;
	}
	public String[] getId()
	{
		return reId;
	}
	public void CheckList(String ParentID,String cs,String Str1)//����˵��,ParentID:������ĿID(˭�����ϰ�),cs:���ݿ��е��ܼ�¼(����),Str1:������
	{
		int i=0;//ѭ����
		int j=0;//�����ݹ���
		int Cs=Integer.parseInt(cs);//���ַ���ת������������
		String Str2;
     	for (i=0;i<Integer.parseInt(rowCount);i++)//�������ݿ����м�¼
     	{
     		
           	if(rows[1][i].equals(ParentID))//�����ǰ��¼IDΪ����ID
       	    {                  
            	//Response.write(Str1)
                if (j<Cs-1) //������滹�м�¼,Ҳ����˵�����ֵܽڵ�
                	Str2="��";
                else       //�����IDû���ֵܽ��,�������һ��
                    Str2="��";
                title=title+"##"+Str1+Str2+rows[2][i]; //��¼��Title��
            //    System.out.println(title);
				id=id+"##"+rows[0][i];//����ǰID��¼��ID��
                if (rows[4][i].equals("true")) //�����ʾ��Ϊ��,Ҳ����˵����Ŀ���滹������Ŀ�Ļ�
                {
                	if (j<Cs-1) //����ýڵ㲻�����һ��,Ҳ����˵û��������б���
                    	CheckList(rows[0][i],rows[5][i],Str1+"��");//��ô�Ըý���ID���ϸýڵ����Ů�����еݹ鲢����|���,
                    else 
                       	CheckList(rows[0][i],rows[5][i],Str1+"��  ");//�ؼ�����,�ݹ���� //����,Ҳ���Ǹý����½ڵ�,���¶Ըýڵ���б���
            	}
             	j=j+1;//ÿ���һ�α���,J��ֵ��һ,ֱ��������м�¼�ı���
           	}
     	}
    }
    public static void main(String []args)
    {
    	String[] aqu=null;
    	String[] aqu1=null;
    	NoLevelSort sort=null;
    	try
    	{
    		sort=new NoLevelSort();
//    		aqu1=sort.getNoLevelSort();
    	}
    	catch(Exception e)
    	{
    		
    	}
    	StringAnalysis ana=new StringAnalysis();
	//	System.out.println(aqu1[0]);
		aqu=sort.getTitle();
		for(int y=0;y<aqu.length;y++)
		{
			System.out.println(aqu[y]);
		}
		aqu=sort.getId();
		for(int y=0;y<aqu.length;y++)
		{
			System.out.println(aqu[y]);
		}
    }
}