package com.v246;
/*
 *�������ڴ洫����ʾģ������ID�������ͣ�����addTemplate.jsp�е�"��������"��������
 **/
public class TemplateType
{
	protected String id;
	protected String type;
	public TemplateType(String id,String type)
	{
		this.id=id;
		this.type=type;
	}
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return id;
	}
	public void setType(String type)
	{
		this.type=type;
	}
	public String getType()
	{
		return type;
	}
}