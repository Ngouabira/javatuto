<%-- 
    Document   : register
    Created on : 26 oct. 2017, 15:57:06
    Author     : HP Notebook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <br/><br/>
        <form method="POST" action="/exo/register">
            <fieldset> <legend>S'enregistrer</legend>
                <div>
                    Nom:    <input type="text" name="nom"/><br/><br/>
                    Prenom :<input type="text" name="prenom"/><br/><br/>
                    Genre : M:<input type="radio" value="M" name="genre"/>
                    F:<input type="radio" value="F" name="genre"/><br/><br/>
                    Login:  <input type="text" name="login"/><br/><br/>
                    Password:<input type="password" name="pass"/><br/><br/>
                    <button type="submit" name="btn1" value="1">Valider</button>
                    <button type="submit" name="btn1" value="2">Connexion</button>
                </div>
            </fieldset>
        </form>
    </body>
</html>
