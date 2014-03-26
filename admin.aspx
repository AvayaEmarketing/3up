<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Avaya Login</title>
    <link rel="shortcut icon" href="../assets/ico/favicon.png"/>
    <link href="Content/jQueryUI.css" rel="stylesheet" />
    <link href="Content/prettyLoader.css" rel="stylesheet" />
    <link href="Content/bootstrap-dialog.css" rel="stylesheet" type="text/css" />
    <link href="Content/admin.css" rel="stylesheet"/>
   
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap-dialog.js"></script>
    <script type="text/javascript" src="Scripts/json2.js"></script>
    <script type="text/javascript" src="Scripts/prettyLoader.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.js"></script>
    <script type="text/javascript" src="Scripts/jquery.sha256.js"></script>
    <script type="text/javascript" src="Scripts/messi.js"></script>
    <script type="text/javascript" src="Scripts/LoginAjax.js"></script>
</head>
<body>
  <div id="loginBox">  
        <div id="loginForm" >
            <fieldset id="body">
                <fieldset id="header">
                  <div><img src="images/top.png" width="375" height="100"></div>
                </fieldset>
                <fieldset id="fieldstemp2">
                    <label for="email">User or Email</label>
                    <input type="text" name="usuario" id="usuario" />
                </fieldset>
                <fieldset id="Fieldset1">
                    <label for="email">Password</label>
                    <input type="password" name="UserPass" id="UserPass" />
                </fieldset>
                <input type="submit" id="login" value="sign in" />
                <!-- <label for="checkbox"><input type="checkbox" id="checkbox" />Recuerdame</label>  -->
            </fieldset>
            <span><a href="#" id="olvido"></a></span>
      </div>
  </div> 

</body>
</html>


