<SCRIPT language=javascript>
<!--

function menu_display(t_id,i_id){//��ʾ���س���
        var t_id;//���ID
        var i_id;//ͼƬID
        var on_img="images/fold_2.gif";//��ʱͼƬ
        var off_img="images/fold_1.gif";//����ʱͼƬ
                if (t_id.style.display == "none") {//���Ϊ����״̬
                t_id.style.display="";//�л�Ϊ��ʾ״̬
                i_id.src=on_img;//��ͼ
}
        else{//����
                t_id.style.display="none";//�л�Ϊ����״̬
                i_id.src=off_img;
                }//��ͼ

}

function showhide(t_id,i_id){//��ʾ���س���
        var t_id;//���ID
        var i_id;//ͼƬID
        var on_img="images/minus.gif";//��ʱͼƬ
        var off_img="images/plus.gif";//����ʱͼƬ
                if (t_id.style.display == "none") {//���Ϊ����״̬
                t_id.style.display="";//�л�Ϊ��ʾ״̬
                i_id.src=on_img;//��ͼ
}
        else{//����
                t_id.style.display="none";//�л�Ϊ����״̬
                i_id.src=off_img;
                }//��ͼ

}

-->

</SCRIPT>

      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TBODY>
        <TR>
          <TD width=150 background=images/leftmanu_topbg.gif><IMG 
            height=30 src="images/leftmanu_top.gif" 
        width=150></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>
        <TBODY>
        <TR>
          <TD class=leftmenu4 height=29><STRONG><A class=linkstyle2 
            href="indexinfo.jsp"><img src=images/home.jpg border=0></a></STRONG> <IMG height=9 
            src="images/now.gif" width=12 align=absMiddle></TD></TR>
        <TR>
          <TD class=leftmenu1 
            onclick=javascript:menu_display(table1,img1);><IMG id=img1 
            src="images/fold_2.gif" align=absMiddle> <font color=ffffff>��ҵ���Ṥ��</font></TD></TR>
        <TBODY id=table1><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="addsj.jsp">������ҵ����</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glsj.jsp">�����ҵ���Ϣ</A> 
          </TD></TR><!-- ���������  --> 

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="addshow.jsp">����չʾ��Ʒ</A> 
          </TD></TR><!-- ���������  --> <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glshow.jsp">����չʾ��Ʒ</A> 
          </TD></TR><!-- ���������  -->


        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="photo.jsp">�����ҵ�ͼƬ</A>
          </TD></TR>



        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="Favorit.jsp">�̻��ղؼ�</A>
          </TD></TR>


        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="dingzhisj.jsp">�����ҵ��̻�</A> <img src=images/tj.gif alt="�Ƽ�ʹ��">
          </TD></TR>




</TBODY>
        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table2,img2)><IMG id=img2 
            src="images/fold_2.gif" align=absMiddle> <font color=ffffff>�鿴��ҵ����</font></TD></TR>
        <TBODY id=table2><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="mymessage.jsp">�鿴�ҵ�����</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="friend.jsp">�ҵ���ҵ����</A> 
          </TD></TR><!-- ���������  -->
       

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="job.jsp">�����г���Ϣ</A> 
          </TD></TR><!-- ���������  -->

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="gljob.jsp">�����г���Ϣ</A> 
          </TD></TR><!-- ���������  -->
  <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../web/index.jsp?id=<%=(String) session.getAttribute("userid")%>" target="_blank">�����ҵ���վ</A> 
          </TD></TR>

  <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glweb.jsp">�����ҵ���վ</A> 
          </TD></TR>





</TBODY>
        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table3,img3)><IMG id=img3 
            src="images/fold_1.gif" align=absMiddle> <font color=ffffff>��Ա��������</font></TD></TR>
        <TBODY id=table3><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="modimem.jsp">�޸���ϵ��Ϣ</A> 
          </TD></TR><!-- ���������  -->
       
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="modipass.jsp">�޸�����</A> 
          </TD></TR><!-- ���������  -->
 <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='http://china.alibaba.com/sms/turbine/template/sms%2CManagePage'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../union">����ƹ���վ</A> 
          </TD></TR><!-- ���������  -->

     

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href=renzheng.jsp?id=<%=(String) session.getAttribute("loginname")%> target="_blank">�ҵ��󸻵���</A> 
          </TD></TR>

</TBODY>
        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table4,img4)><IMG id=img4 
            src="images/fold_1.gif" align=absMiddle> <font color=ffffff>���˷�������</font></TD></TR>
        <TBODY id=table4>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../book/addbook.jsp" 
            >�����ҵĻ���</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glbook.jsp" 
            >�鿴�ҵĻ���</A> </TD></TR>
 <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="gongju.jsp" >�ҵ��ճ�������</A> </TD></TR>
 
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../qifotong.jsp" 
            target=_blank>�����߼���Ա</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../let" 
            target=_blank>��������׬��Ǯ</A> </TD></TR>
        </TBODY>
        <TBODY>
        <TR>
          <TD class=leftmenu1 ><IMG 
            id=img5 src="images/leftmenu_help.gif" align=absMiddle> 
        ���ʼ�����</TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="94%" border=0>
       
 <FORM name=adv action=../finaler/send.jsp  method=post>

<input name=sendmem value="<%=(String) session.getAttribute("loginname")%>" type=hidden>
        <TBODY>
        <TR align=middle>
          <TD class=index_content colSpan=2><TEXTAREA style="BORDER-RIGHT: #7e9eb7 1px solid; BORDER-TOP: #7e9eb7 1px solid; BORDER-LEFT: #7e9eb7 1px solid; COLOR: #000000; BORDER-BOTTOM: #7e9eb7 1px solid" name=content rows=4 cols=18></TEXTAREA></TD></TR>
        <TR align=middle>
          <TD class=index_content colSpan=2>



<INPUT type=image src="images/servicesend.gif"  align=middle border=0 name=I6></TD></TR></FORM></TBODY></TABLE>
     