<!--#include file="inc/conn.asp"-->
<HTML>
<HEAD>
<title>����˵�</title>
<style type=text/css>
body  { background:#799AE1; margin:0px;}
table  { border:0px; }
td,body,input{font-size:12px;}
a  { font:normal 12px ����; color:#000000; text-decoration:none; }
a:hover  { color:#428EFF;text-decoration:underline; }
.sec_menu  { border-left:1px solid white; border-right:1px solid white; border-bottom:1px solid white; overflow:hidden; background:#D6DFF7; }
.menu_title  { color:#3366CC;font-weight:600;padding-left:5px;padding-top:3px;}
.style1 {
	color: #330000;
	font-weight: bold;
}
</style>
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<BODY leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
</HEAD>
<BODY>
<table cellpadding=0 cellspacing=0 width=158 align=center> 
<tr> <td height=42 valign=bottom><img src="images/title.gif" width=158 height=38></td></tr> </table>
<table cellpadding=0 cellspacing=0 width=158 align=center style="margin:0 0 10px 0;"> 
<tr> 
    <td height=25 background=images/title_bg_quit.gif class=menu_title  >&nbsp;<A HREF="logout.asp" TARGET="_top"><strong>ע����¼</strong></A></td>
  </tr> 
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center> 
<tr> <td height=25 class=menu_title background="images/admin_left_2.gif" id=menuTitle1 onClick="showsubmenu(1)">ϵͳ����</td>
</tr> <tr> <td style="display:" id='submenu1'> 
<div class=sec_menu style="width:158"> <table cellpadding=0 cellspacing=0 align=center width=135> 
  <tr> 
	<td height=20><a href="system_admin.asp" target="mainFrame">����Ա����</a></td>
  </tr> 
</table>
</div><div  style="width:158"> <table cellpadding=0 cellspacing=0 align=center width=135> 
<tr><td height=12></td>
</tr> </table></div></td></tr> </table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
    <td height=25 class=menu_title background="images/admin_left_1.gif" id=menuTitle1 onClick="showsubmenu(3)">��Ʒ����</td>
  </tr>
  <tr>
    <td style="display:" id="submenu3"><div class=sec_menu style="width:158">
      <table cellpadding=0 cellspacing=0 align=center width=135>
        <tr>
          <td height=20><a href="p_add.asp" target="mainFrame">������Ʒ</a></td>
        </tr>
        <tr>
          <td height=20><a href="p_manages.asp" target="mainFrame">��Ʒ����</a></td>
        </tr>
        <tr>
          <td height=20><a href="p_class.asp" target=mainFrame>��������</a></td>
        </tr>
      </table>
    </div>
        <div  style="width:158">
          <table cellpadding=0 cellspacing=0 align=center width=135>
            <tr>
              <td height=12></td>
            </tr>
          </table>
        </div></td>
  </tr>
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center> 
<tr> <td height=25 class=menu_title background="images/admin_left_4.gif" id=menuTitle1 onClick="showsubmenu(4)">��Ŀ����</td>
</tr> <tr> <td style="display:" id="submenu4"> 
<div class=sec_menu style="width:158"> <table cellpadding=0 cellspacing=0 align=center width=135>   
<tr> 
  <td height=20><a href="N_add.asp" target="mainFrame">������Ѷ</a></td>
</tr>
<tr>
  <td height=20><a href="N_manages.asp" target="mainFrame">��Ѷ����</a></td>
</tr>
<tr>
  <td height=20><a href="N_Class.asp" target="mainFrame">��Ѷ������</a></td>
</tr>
</table>
</div><div  style="width:158"> 
<table cellpadding=0 cellspacing=0 align=center width=135> 
<tr><td height=12></td></tr> </table></div></td>
</tr> </table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
    <td height=25 class=menu_title background="images/admin_left_3.gif" id=menuTitle1 onClick="showsubmenu(8)">���߶���</td>
  </tr>
  <tr>
    <td style="display:" id="submenu7"><div class=sec_menu style="width:158">
        <table cellpadding=0 cellspacing=0 align=center width=135>
          <tr>
            <td height=20><A class=left_nav_link href="Gorder.asp" target="mainFrame">���߶���</A></td>
          </tr>
        </table>
      </div>
        <div  style="width:158">
          <table cellpadding=0 cellspacing=0 align=center width=135>
            <tr>
              <td height=12></td>
            </tr>
          </table>
      </div></td>
  </tr>
</table>
<table cellpadding=0 cellspacing=0 width=158 align=center>
  <tr>
    <td height=25 class=menu_title background="images/admin_left_3.gif" id=menuTitle1 onClick="showsubmenu(8)">�������</td>
  </tr>
  <tr>
    <td style="display:" id="submenu7"><div class=sec_menu style="width:158">
      <table cellpadding=0 cellspacing=0 align=center width=135>
        <tr>
          <td height=20><A class=left_nav_link href="Gbook.asp" target="mainFrame">�������</A></td>
        </tr>
      </table>
    </div>
        <div  style="width:158">
          <table cellpadding=0 cellspacing=0 align=center width=135>
            <tr>
              <td height=12></td>
            </tr>
          </table>
        </div></td>
  </tr>
</table>
</BODY>
</HTML>