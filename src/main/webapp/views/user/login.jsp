<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Itcast OA</title>
    <!--jsp页面中的路径使用内置对象获得-->
    <link href="${pageContext.request.contextPath}/style/blue/login.css" type="text/css" rel="stylesheet"/>

    <!--此处是界面资源加载完毕，光标就停在输入用户名的那个text-->
    <script type="text/javascript" href="${pageContext.request.contextPath}/script/jquery.js"/>
    <script type="text/javascript">
          window.onload = function(){
              document.getElementById("ut").focus();
          }
    </script>
</head>

<body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 CLASS=PageBody>
<form method="post" action="${pageContext.request.contextPath}/user/login">
    <div id="CenterAreaBg">
        <div id="CenterArea">
            <div id="LogoImg"><img border="0" src="${pageContext.request.contextPath}/style/blue/images/logo.png" /></div>
            <div id="LoginInfo">
                <table BORDER=0 CELLSPACING=0 CELLPADDING=0 width=100%>
                    <tr>
                        <td width=45 CLASS="Subject"><IMG BORDER="0" SRC="${pageContext.request.contextPath}/style/blue/images/login/userId.gif" /></td>
                        <td><INPUT id="ut" SIZE="20" CLASS="TextField" TYPE="text" name="username" /></td>
                        <td ROWSPAN="2" STYLE="padding-left:10px;"><INPUT TYPE="image" SRC="${pageContext.request.contextPath}/style/blue/images/login/userLogin_button.gif"/></td>
                    </tr>
                    <tr>
                        <td CLASS="Subject"><IMG BORDER="0" SRC="${pageContext.request.contextPath}/style/blue/images/login/password.gif" /></td>
                        <td><input SIZE="20" CLASS="TextField" TYPE="password" name="password" /></td>
                    </tr>
                </table>
            </div>
            <div id="CopyRight"><a href="javascript:void(0)">&copy; 2010 版权所有 itcast</a></div>
        </div>
    </div>
</form>
</body>

</html>


