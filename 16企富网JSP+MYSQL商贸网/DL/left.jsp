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
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0 >
        <TBODY>
        <TR>
          <TD class=leftmenu4 height=29><STRONG><A class=linkstyle2 
            href="indexdl.jsp"><img src=images/home.jpg border=0></a></STRONG> <IMG height=9 
            src="images/now.gif" width=12 align=absMiddle></TD></TR>
        <TR>
          <TD class=leftmenu1 
            onclick=javascript:menu_display(table1,img1);><IMG id=img1 
            src="images/fold_2.gif" align=absMiddle> <font color=ffffff>��Ա������</font></TD></TR>
        <TBODY id=table1><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="newmem.jsp">����ע���Ա</A> 
          </TD></TR><!-- ���������  -->  

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="ptmem.jsp">��ͨʹ�û�Ա</A> 
          </TD></TR><!-- ���������  -->
       
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="comeon.jsp">��ͨ�����Ա</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="qftmem.jsp">��ͨ��Ա</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="fmem.jsp">�������Ա</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="allmem.jsp">����ע���Ա</A> 
          </TD></TR><!-- ���������  -->

</TBODY>






        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table2,img2)><IMG id=img2 
            src="images/fold_2.gif" align=absMiddle> <font color=ffffff>��վ��Ϣ����</font></TD></TR>
        <TBODY id=table2><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="dqjie.jsp">�ط����ܹ���</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="zixun.jsp">������Ѷ����</A> 
          </TD></TR><!-- ���������  -->
        
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="border.jsp">���Ƶ������</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="link.jsp">�������ӹ���</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../www/index.jsp?Did=<%=(String) session.getAttribute("dlid")%>" target="_blank"">�����ҵ���վ</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="../www/law.jsp?id=<%=(String) session.getAttribute("dlid")%>" target="_blank">�ҵ���Ȩ֤��</A> 
          </TD></TR><!-- ���������  -->

        </TBODY>

  <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table3,img3)><IMG id=img3 
            src="images/fold_1.gif" align=absMiddle> <font color=ffffff>����Ա��������</font></TD></TR>
        <TBODY id=table3><!-- ���������  -->
               
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="modidl.jsp">�޸��ҵ�����</A> 
          </TD></TR><!-- ���������  -->

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="modipass.jsp">�޸�����</A> 
          </TD></TR><!-- ���������  -->
<tr>
<TD valign=top>
<hr color=4296ce size=1>
</td>
</tr>

</TBODY>
       </TABLE>


     