<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
<%--Todo 1: Use <jsp:useBean> to create a Login bean instance in request scope --%>

<jsp:useBean id="user" scope="request" class="com.YangFanou.model.User"/>
<jsp:setProperty name="user" property="name" param="name"/>
<jsp:setProperty name="user" property="password" param="password"/>
    <%--Todo 2: Use <jsp:setProperty> to set  beans' property username and password--%>
<%
   //todo 3: use if check username is admin and password is admin
    if(user.getName().equals("admin") && user.getPassword().equals("admin")) {%>

        <jsp:forward page="welcome.jsp"></jsp:forward>
    <%}
    else {
        out.println("username or password error !!!");
    }
%>
    <jsp:include page="login.jsp"/>

    <%--todo 4: use jsp:forward to welcome.jsp page--%>

    <%--todo 5: else part{ --%>

<%
// todo 6: print username or password error message

%>
    <%--todo 7: use jsp:include login.jsp page --%>

    <%--todo 8: close else --%>
<%----%>
</body>
</html>