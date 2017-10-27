<%-- 
    Document   : login
    Created on : 26 oct. 2017, 15:57:21
    Author     : MysterCozay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DEV-SERVLET3.X--) Connexion</title>
    </head>
    <body>
        <br/><br/>
        <form method="POST" action="/exo/login">
            <!-- Message -->
            <div> ${message!=null?message:"Remplissez"}</div>
            <fieldset> <legend>Formulaire</legend>
                <div>
                    Login:   <input type="text" name="login"/><br/><br/>
                    Mot de passe : <input type="text" name="pass"/><br/><br/>
                    <button type="submit" name="btn" value="1">Connexion</button>
                    <button type="submit" name="btn" value="2">S'enregistrer</button>
                </div>
            </fieldset>
        </form>
    </body>
</html>
