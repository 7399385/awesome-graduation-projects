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
            href="finaler.jsp"><img src=images/home.jpg border=0></a></STRONG> <IMG height=9 
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
            src="images/fold_2.gif" align=absMiddle> <font color=ffffff>���������</font></TD></TR>
        <TBODY id=table2><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="newdl.jsp">�����������</A> 
          </TD></TR><!-- ���������  -->
        
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="yesdl.jsp">����Ӫҵ��վ</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="nodl.jsp">��ȨӪҵ��վ</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="alldomain.jsp">���з�������</A> 
          </TD></TR><!-- ���������  -->
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="china.jsp">ȫ���������</A> 
          </TD></TR><!-- ���������  -->

        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table4,img4)><IMG id=img4 
            src="images/fold_1.gif" align=absMiddle> <font color=ffffff>��վ��Ϣ������</font></TD></TR>
        <TBODY id=table4>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glsj.jsp" 
            >�̻���Ϣ����</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glshow.jsp" 
            >��Ʒչ�����</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="photo.jsp" 
            >����ͼƬ����</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glzixun.jsp" 
            >��ҵ��Ѷ����</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glbook.jsp" 
            >���˻������</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="gljob.jsp" 
            >�г���Ϣ����</A> </TD></TR>
        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="window.open('#')" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="glunion.jsp" 
            >��վ��¼����</A> </TD></TR>

        <TR>
          <TD class=leftmenu2><IMG onmouseover="this.style.cursor='hand'" 
            onclick="location.href='#'" 
            src="images/plus.gif"> <A class=linkstyle2 
            href="allmessage.jsp">�鿴��������</A> 
          </TD></TR><!-- ���������  -->

        </TBODY>



      


        <TBODY>
        <TR>
          <TD class=leftmenu1 onclick=menu_display(table3,img3)><IMG id=img3 
            src="images/fold_1.gif" align=absMiddle> <font color=ffffff>���Խ�������</font></TD></TR>
        <TBODY id=table3><!-- ���������  -->
               
          </TD></TR><!-- ���������  -->
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
            href="sendalldl.jsp">�����а��´�����</A> 
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
            href="modipass.jsp">�޸�����</A> 
          </TD></TR><!-- ���������  -->

       

</TBODY>
       </TABLE>


     