/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Article;
import entity.User;
import java.io.IOException;
import static java.lang.Float.parseFloat;
import static java.lang.Integer.parseInt;
import static java.lang.Long.parseLong;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.ArticleFacade;
import security.AuthBean;

@WebServlet(name = "ArticleController", urlPatterns = {"/newarticle", "/addarticle", "/deletearticle", "/updateArticle", "/editArticle"})
public class ArticleController extends HttpServlet {

    @EJB
    AuthBean authBean;
    @EJB
    ArticleFacade articleFacade;

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
        User regUser = authBean.getSessionUser(request);
        if (regUser != null) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                String username = regUser.getName() + " " + regUser.getSurname();
                request.setAttribute("username", username);
                if ((authBean.accessOn(regUser, "ADMINS")) || (authBean.accessOn(regUser, "USERS"))) {
                    if ("/addarticle".equals(userPath)) {
                        String mark = request.getParameter("mark");
                        String model = request.getParameter("model");
                        String carbody = request.getParameter("carbody");
                        String firstReg = request.getParameter("firstReg");
                        String carCondition = request.getParameter("condition");
                        String regNumber = request.getParameter("regNumber");
                        String purchaseDate = request.getParameter("purchaseDate");
                        String passport = request.getParameter("passport");
                        String color = request.getParameter("color");
                        Long run = parseLong(request.getParameter("run"));
                        String driveUnit = request.getParameter("driveUnit");
                        Float engineVolume = parseFloat(request.getParameter("engineVolume"));
                        String engineType = request.getParameter("engineType");
                        Long enginePower = parseLong(request.getParameter("enginePower"));
                        Long dryMass = parseLong(request.getParameter("dryMass"));
                        Long fullMass = parseLong(request.getParameter("fullMass"));
                        Long tank = parseLong(request.getParameter("tank"));
                        String gear = request.getParameter("gear");
                        String grip = request.getParameter("grip");
                        Float fuelRate = parseFloat(request.getParameter("fuelRate"));
                        Integer seats = parseInt(request.getParameter("seats"));
                        Integer doors = parseInt(request.getParameter("doors"));
                        Float price = parseFloat(request.getParameter("price"));
                        String checkTime = request.getParameter("checkTime");
                        String moreInfo = request.getParameter("moreInfo");

                        Date date = new Date();
                        Article newArticle = new Article(mark, model, carbody, firstReg, carCondition, regNumber, purchaseDate, passport, color, run, driveUnit, engineVolume, engineType, enginePower, dryMass, fullMass, tank, gear, grip, fuelRate, seats, doors, price, checkTime, moreInfo, regUser.getLogin(), date);
                        try {
                            articleFacade.create(newArticle);
                            request.setAttribute("info", "Статья успешно добавлена.");
                        } catch (Exception e) {
                            request.setAttribute("info", "Статья не добавлена. Вероятно повтор заголовка статьи");
                        }

                    } else if ("/deletearticle".equals(userPath)) {
                        String id = request.getParameter("id");
                        Article delArticle = articleFacade.find(new Long(id));
                        articleFacade.remove(delArticle);
                    } else if ("/editArticle".equals(userPath)) {
                        String articleId = request.getParameter("article_id");
                        Article article = articleFacade.find(new Long(articleId));
                        request.setAttribute("article", article);
                        request.getServletContext().getRequestDispatcher("/WEB-INF/user/editArticle.jsp").forward(request, response);
                        return;

                    } else if ("/updateArticle".equals(userPath)) {
                        String articleId = request.getParameter("article_id");
                        String mark = request.getParameter("mark");
                        String model = request.getParameter("model");
                        String carbody = request.getParameter("carbody");
                        String firstReg = request.getParameter("firstReg");
                        String carCondition = request.getParameter("condition");
                        String regNumber = request.getParameter("regNumber");

                        String purchaseDate = request.getParameter("purchaseDate");
                        String passport = request.getParameter("passport");
                        String color = request.getParameter("color");
                        Long run = parseLong(request.getParameter("run"));
                        String driveUnit = request.getParameter("driveUnit");
                        Float engineVolume = parseFloat(request.getParameter("engineVolume"));
                        String engineType = request.getParameter("engineType");
                        Long enginePower = parseLong(request.getParameter("enginePower"));
                        Long dryMass = parseLong(request.getParameter("dryMass"));
                        Long fullMass = parseLong(request.getParameter("fullMass"));
                        Long tank = parseLong(request.getParameter("tank"));
                        String gear = request.getParameter("gear");
                        String grip = request.getParameter("grip");
                        Float fuelRate = parseFloat(request.getParameter("fuelRate"));
                        Integer seats = parseInt(request.getParameter("seats"));
                        Integer doors = parseInt(request.getParameter("doors"));
                        Float price = parseFloat(request.getParameter("price"));
                        String checkTime = request.getParameter("checkTime");
                        String moreInfo = request.getParameter("moreInfo");

                        Date date = new Date();
                        Article updateArticle = articleFacade.find(new Long(articleId));
                        updateArticle.setMark(mark);
                        updateArticle.setModel(model);
                        updateArticle.setFirstReg(model);
                        updateArticle.setModel(carbody);
                        updateArticle.setFirstReg(firstReg);
                        updateArticle.setCarCondition(carCondition);
                        updateArticle.setCarCondition(regNumber);
                        updateArticle.setPurchaseDate(purchaseDate);
                        updateArticle.setPassport(passport);
                        updateArticle.setColor(color);
                        updateArticle.setRun(run);
                        updateArticle.setDriveUnit(driveUnit);
                        updateArticle.setEngineVolume(engineVolume);
                        updateArticle.setEngineType(engineType);
                        updateArticle.setEnginePower(enginePower);
                        updateArticle.setDryMass(dryMass);
                        updateArticle.setFullMass(fullMass);
                        updateArticle.setTank(tank);
                        updateArticle.setGear(gear);
                        updateArticle.setGrip(grip);
                        updateArticle.setFuelRate(fuelRate);
                        updateArticle.setSeats(seats);
                        updateArticle.setDoors(doors);
                        updateArticle.setPrice(price);
                        updateArticle.setCheckTime(checkTime);
                        updateArticle.setMoreInfo(moreInfo);

                        updateArticle.setUserLogin(regUser.getLogin());
                        updateArticle.setDate(date);
                        try {
                            articleFacade.edit(updateArticle);
                            request.setAttribute("info", "Статья успешно обновлена.");
                        } catch (Exception e) {
                            request.setAttribute("info", "Статью обновить не удалось.");
                        }

                    }
                    List<Article> articles = articleFacade.findAll();
                    request.setAttribute("articles", articles);
                    request.getServletContext().getRequestDispatcher("/WEB-INF/admin/newArticle.jsp").forward(request, response);
                    return;
                }
                request.setAttribute("path", "newarticle");
                request.setAttribute("info", regUser.getLogin() + "У Вас нет права зайти на этот ресурс");
                request.getServletContext().getRequestDispatcher("/authForm/login.jsp").forward(request, response);
            } else {
                //session == null)
                request.setAttribute("path", "newarticle");
                request.getServletContext().getRequestDispatcher("/authForm/login.jsp").forward(request, response);

            }
        } else {
            //regUser == null)
            request.setAttribute("path", "admin");
            request.getServletContext().getRequestDispatcher("/authForm/login.jsp").forward(request, response);
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
     * @return a User containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
