package com.v246;
public class CustomLable_form extends org.apache.struts.action.ActionForm
{
	protected String id;
	protected String modify;
	protected String withClass;//������Ŀ
	protected String lableName;//��ǩ����
	protected String remark;//��ǩ����
	protected String hotOrNews;//�������»�����������
	protected String barNumber;//��ʾ����
	protected String letterNumber;//ÿ����ʾ������
	protected String isUpdate;//�Ƿ���ʾʱ��
	protected String isClick;//�Ƿ���ʾ�����
	protected String staticOrDynamic;//�Ǿ�̬��ʾ���Ƕ�̬��ʾ
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return this.id;
	}
	public void setModify(String modify)
	{
		this.modify=modify;
	}
	public String getModify()
	{
		return this.modify;
	}
	public void setWithClass(String withClass)
	{
		this.withClass=withClass;
	}
	public String getWithClass()
	{
		return withClass;
	}
	public void setLableName(String lableName)
	{
		this.lableName=Aqu.getGB(lableName);
	}
	public String getLableName()
	{
		return this.lableName;
	}
	public void setRemark(String remark)
	{
		this.remark=Aqu.getGB(remark);
	}
	public String getRemark()
	{
		return remark;
	}
	public void setHotOrNews(String hotOrNews)
	{
		this.hotOrNews=hotOrNews;
	}
	public String getHotOrNews()
	{
		return hotOrNews;
	}
	public void setBarNumber(String barNumber)
	{
		this.barNumber=barNumber;
	}
	public String getBarNumber()
	{
		return this.barNumber;
	}
	public void setLetterNumber(String letterNumber)
	{
		this.letterNumber=letterNumber;
	}
	public String getLetterNumber()
	{
		return this.letterNumber;
	}
	public void setIsUpdate(String isUpdate)
	{
		this.isUpdate=isUpdate;
	}
	public String getIsUpdate()
	{
		return this.isUpdate;
	}
	public void setIsClick(String isClick)
	{
		this.isClick=isClick;
	}
	public String getIsClick()
	{
		return this.isClick;
	}
	public void setStaticOrDynamic(String staticOrDynamic)
	{
		this.staticOrDynamic=staticOrDynamic;
	}
	public String getStaticOrDynamic()
	{
		return this.staticOrDynamic;
	}
}