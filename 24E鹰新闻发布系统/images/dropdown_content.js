if (mtDropDown.isSupported()) {
  var ms = new mtDropDownSet(mtDropDown.direction.down, 0, 4, mtDropDown.reference.bottomLeft);
  var menu1 = ms.addMenu(document.getElementById("menu1"));

  menu1.addItem("&nbsp;&nbsp;����ͨ��&nbsp;&nbsp;", "news.asp?upid=64&id=65&title=����ͨ��");
  menu1.addItem("&nbsp;&nbsp;ҵ����Ϣ&nbsp;&nbsp;", "news.asp?id=66&title=ҵ����Ϣ&upid=64");
  menu1.addItem("&nbsp;&nbsp;��ȫ©��&nbsp;&nbsp;", "news.asp?id=80&title=��ȫ©��&upid=64");
  menu1.addItem("&nbsp;&nbsp;�ڿ�����&nbsp;&nbsp;", "news.asp?id=82&title=�ڿ�����&upid=64");
  menu1.addItem("&nbsp;&nbsp;��������&nbsp;&nbsp;", "news.asp?id=83&title=��������&upid=64");
  menu1.addItem("&nbsp;&nbsp;�ڿ��Ļ�&nbsp;&nbsp;", "news.asp?id=89&title=�ڿ��Ļ�&upid=64");
  menu1.addItem("&nbsp;&nbsp;����Ͷ��&nbsp;&nbsp;", "mailto:fairy@xqit.net");

  var menu2 = ms.addMenu(document.getElementById("menu2"));
  menu2.addItem("&nbsp;&nbsp;���֮��&nbsp;&nbsp;", "news.asp?id=72&title=���֮��&upid=71");
  menu2.addItem("&nbsp;&nbsp;�������&nbsp;&nbsp;", "news.asp?id=73&title=�������&upid=71");
  menu2.addItem("&nbsp;&nbsp;��������&nbsp;&nbsp;", "news.asp?id=85&title=��������&upid=71");  
  menu2.addItem("&nbsp;&nbsp;©���о�&nbsp;&nbsp;", "news.asp?id=90&title=©���о�&upid=71");

  var menu3 = ms.addMenu(document.getElementById("menu3"));
  menu3.addItem("&nbsp;&nbsp;Э�����&nbsp;&nbsp;", "news.asp?id=75&title=Э�����&upid=74");
  menu3.addItem("&nbsp;&nbsp;��������&nbsp;&nbsp;", "news.asp?id=76&title=��������&upid=74");
  menu3.addItem("&nbsp;&nbsp;���缼��&nbsp;&nbsp;", "news.asp?id=81&title=���缼��&upid=74");
  menu3.addItem("&nbsp;&nbsp;���ַ���&nbsp;&nbsp;", "news.asp?id=91&title=���ַ���&upid=74");

  var menu4 = ms.addMenu(document.getElementById("menu4"));
  menu4.addItem("&nbsp;&nbsp;��վԭ��&nbsp;&nbsp;", "download.asp?id=3&title=��վԭ��");
  menu4.addItem("&nbsp;&nbsp;��Ʒ�̳�&nbsp;&nbsp;", "download.asp?id=3&title=��Ʒ�̳�");
  menu4.addItem("&nbsp;&nbsp;��ѧ����&nbsp;&nbsp;", "download.asp?id=3&title=��ѧ����");
  menu4.addItem("&nbsp;&nbsp;���ܽ���&nbsp;&nbsp;", "download.asp?id=6&title=���ܽ���");
  menu4.addItem("&nbsp;&nbsp;©��ɨ��&nbsp;&nbsp;", "download.asp?id=7&title=©��ɨ��");
  menu4.addItem("&nbsp;&nbsp;�������&nbsp;&nbsp;", "download.asp?id=8&title=�������");
  menu4.addItem("&nbsp;&nbsp;Զ�̿���&nbsp;&nbsp;", "download.asp?id=9&title=Զ�̿���");
  menu4.addItem("&nbsp;&nbsp;�������&nbsp;&nbsp;", "download.asp?id=10&title=�������");
  menu4.addItem("&nbsp;&nbsp;�ڿͱر�&nbsp;&nbsp;", "download.asp?id=11&title=�ڿͱر�");
  menu4.addItem("&nbsp;&nbsp;�����̳�&nbsp;&nbsp;", "download.asp?id=12&title=�����̳�");
  
  var menu5 = ms.addMenu(document.getElementById("menu5"));
  menu5.addItem("&nbsp;&nbsp;�й���ʷ&nbsp;&nbsp;", "news.asp?id=78&title=�й���ʷ&upid=77");
  menu5.addItem("&nbsp;&nbsp;������ʷ&nbsp;&nbsp;", "news.asp?id=79&title=������ʷ&upid=77");
  menu5.addItem("&nbsp;&nbsp;��������&nbsp;&nbsp;", "news.asp?id=93&title=��������&upid=77");
  menu5.addItem("&nbsp;&nbsp;��������&nbsp;&nbsp;", "news.asp?id=94&title=��������&upid=77");

  mtDropDown.renderAll();
 }