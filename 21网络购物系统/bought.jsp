<tr> 
    <td valign="top"><table border="0" width="100%" cellspacing="0" height="34" cellpadding="0">
        <tr> 
          <td width="398" bgcolor="#ECECEC">
		    <div align="center">
              <center> 
<!-----------------------------one showing unit--------------------------------------------->
            <table width="90%" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111">
              <tr background="img/pics/tile_bg.gif"> 
                <td width="155" height="25"> <div align="center">��Ʒ����</div></td>
                <td width="80"> <div align="center">��Ʒ����</div></td>
                <td width="80"> <div align="center">��������</div></td>
                <td width="80"> <div align="center">����ʱ��</div></td>
                <td width="80"> <div align="center">�ϼ�</div></td>
              </tr>
              <%
			  sql="select * from basket where user_name='"+user_name+"' and basket_check='False'";
               rs=mdb.executeQuery(sql);
            while(rs.next())
			  {
			     hw_cashs=rs.getString("hw_cash");
			     hw_cash=Cint(hw_cashs);
			     basket_count=rs.getString("basket_count");
			      count=Cint(basket_count);
				 hw_name=rs.getString("hw_name");
			     jiage=hw_cash;
			      
			  %>
              <tr> 
                <td width="155" height="25"> <div align="center"><a href="clear.jsp?basket_id=<%=rs.getInt("basket_id")%>"><font color="#FF0000"><%=hw_name%></font></a></div></td>
                <td width="65" height="25"> <div align="center"> 
                    <%=jiage%> Ԫ</div></td>
                <td width="65" height="25"> <div align="center"><%=basket_count%> 
                  </div></td>
                <td width="65" height="25"> <div align="center"><%=rs.getDate("basket_date")%> 
                  </div></td>
                
                <td width="65" height="25"> <div align="center"> 
                    <%=jiage*count%> Ԫ </div></td>
                <%
				totalcash=totalcash+jiage*count;%>
              </tr>
              <%
              }
             
              %>
              <tr> 
                <td width="321" height="25" colspan="4"><div align="center">�ܼ�:</div></td>
                <td width="65" height="25"><div align="center"><%=totalcash%>
                  Ԫ</div></td>
            </table>
<!--------------------------showing unit end---------------------------------------->
              </center>
          </div>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td valign="middle"><div align="center"><img src="img/pics/seperator.gif" width="359" height="1"></div></td>
              </tr>
            </table></td>
          <td width="14" valign="top" bgcolor="#ECECEC"><div align="right"></div></td>
        </tr>
      </table></td>
  </tr>