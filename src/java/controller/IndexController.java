/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Article;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import static javafx.scene.input.KeyCode.T;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import security.AuthBean;
import session.ArticleFacade;
import session.GroupFacade;
import session.UserFacade;

@WebServlet(name = "IndexController", loadOnStartup = 1, urlPatterns = {"/index", "/comments", "/contact"})
public class IndexController extends HttpServlet {

    @EJB
    ArticleFacade articleFacade;
    @EJB
    AuthBean authBean;
    @EJB
    UserFacade userFacade;
    @EJB
    GroupFacade groupFacade;

    @Override
    public void init() throws ServletException {
        super.init();
        List<Article> articles = null;
        try {
            articles = articleFacade.findAll();
            //Collections.reverse(articles);

        } catch (Exception e) {
            articles = new ArrayList<>();
        }

        getServletContext().setAttribute("articles", articles);
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String userPath = request.getServletPath();

        if ("/index".equals(userPath)) {
            List<Article> articles = new ArrayList<>();
            try {
                articles = articleFacade.findAll();

            } catch (Exception e) {
                articles = new ArrayList<>();
            }
            getServletContext().setAttribute("articles", articles);
            request.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }

        if ("/comments".equals(userPath)) {
            List<Article> articles = new ArrayList<>();
            try {

                articles = articleFacade.findAll();

            } catch (Exception e) {
                articles = new ArrayList<>();
            }
            getServletContext().setAttribute("articles", articles);
            request.getServletContext().getRequestDispatcher("/comments.jsp").forward(request, response);
        }

        if ("/contact".equals(userPath)) {
            request.getServletContext().getRequestDispatcher("/contactUs.jsp").forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
