<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
           "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>SDS</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

function valid()
{
	var c= document.s.key.value;
	if(c=="")
		{
		alert("Plz Enter the Key!!!");
		document.s.key.focus();
		return false;
		}
	}

	</script>
}
</head>
<body>
<div id="outerwrapper">

<div id="head">
    
  
<div id="logo">
     <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cloud Data Security Using Enhanced ROTP
	   <div align="left">  </div> 
	  </div>
   </div><!-- end of logo -->
   
   
   <div id="navigation">
      <div id="navbar_link">
      <ul>
           <li ><a href="index.html">HOME</a></li>
           <li class="currentpage"><a href="#">DOWNLOAD</a></li>
           <li ><a href="userlogin.jsp">SIGN OUT</a></li>
        </ul>
      </div><!-- end of navbar_link-->
      </div><!-- end of navigation-->
      
  </div><!-- end of header-->
  
  
<div id="innerwrapper">
<table align="center" width="1020">
	<tr>
		<td width="364" valign="top">
		<table align="center" width="336">
			<tr>
				<td width="328" height="268" colspan="2"><img
					src="img/download3.jpg" width="300" /></td>
			</tr>
		</table>
		</td>
		<td width="644" valign="top">
		<form action="Download" name="s" method="post"
			onsubmit="return valid()">
		
		<table align="center" style="width: 581px; height: 198px">
			<div align="center" class="paragraping1"><font color="#006600"
				size="3">File Download Here</font></div>
		
				
			<tr>
				<td></td>
				<td><font face="Courier New" size="+1"><strong>File
				ID</strong></font></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=request.getParameter("fileid") %>
				<input type="hidden" name="fileid" value='<%=request.getParameter("fileid") %>'>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td><font face="Courier New" size="+1"><strong>File
				Name</strong></font></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp; <%=request.getParameter("filename") %>
					<input type="hidden" name="filename" value='<%=request.getParameter("filename") %>'>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td><font face="Courier New" size="+1"><strong>Secrete Key
				</strong></font></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="key"
					class="b" /></td>
			</tr>
			

			<tr>
				<td></td>
				<td></td>
				<td><input type="submit" name="sub" value="" class="submit" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
			
		</table>
		
	</form>
	</td>
	</tr>
</table>
<table><tr> 
                <td colspan="2" align="center"><font size="2">
                <%
					String error=(String)request.getAttribute("error");
					if(error !=null){%>
					<font color="red">Invalid Key. </font>	
						&nbsp;<%}
				%>
                  </font></td>
        </tr></table>

</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;&nbsp;</span>
</p>
</div>
</div>
</body>
</html>