package cg.yekolab.controller;


import cg.yekolab.model.User;
import interceptor.UserBean;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP Notebook
 */
@WebServlet(value = "/register")
public class RegisterController extends HttpServlet{

    @Inject
    private UserBean userBean;
    public static final String  Register = "/register";
    private User Utilisateur;
    
    public RegisterController() {
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           
    }
        @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
             int id;
             String btn =req.getParameter("btn");
             id=userBean.allUsers().size()+1;
             
        if (Integer.valueOf(btn)==1) 
        {  String nom=req.getParameter("nom");
            String prenom=req.getParameter("prenom");
            String genre=req.getParameter("genre");
            String login=req.getParameter("login");
            String mdp=req.getParameter("pass");
             Utilisateur =new User(id, nom, prenom, genre, login, mdp);
            
            req.setAttribute("nom", nom);
            req.setAttribute("prenom", prenom);
            req.setAttribute("genre", genre);
            req.setAttribute("login", login);
            req.setAttribute("mdp", mdp);
            userBean.addUser(Utilisateur);
            
               this.getServletContext().getRequestDispatcher("/main.jsp").forward(req, resp);}else{
             this.getServletContext().getRequestDispatcher("/login.jsp").forward(req, resp);
        
        //if (Integer.valueOf(req.getParameter("btn1"))==2) {
     }
    }}