/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.User;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet(name = "FileUploadController", urlPatterns = {"/upload", "/uploadPage"})
@MultipartConfig
public class FileUploadController extends HttpServlet {

    private final static Logger LOGGER
            = Logger.getLogger(FileUploadController.class.getCanonicalName());

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
        if ("/uploadPage".equals(request.getServletPath())) {
            //Загружаем страничку выбора файлов
            request.getRequestDispatcher("/WEB-INF/admin/uploadFile.jsp").forward(request, response);
            return;
        } else {

            // Укажите в переменной path путь к каталогу, где будут храниться загруженные файлы (изображения)
            // Не забудьте дать права этой директории на запись чтение и исполнение (chmod 777)
            final String path = "C:\\images";
           

            String nameString = "<label>Загружены файлы:</label>";
            List<String> imageList = new ArrayList<>();
            //Collection<Part> Parts = request.getParts();
            List<Part> Parts = (List<Part>) request.getParts();
            
           // for (Part filePart : Parts) {

            for (int i = 0; i < Parts.size()-1; i++) {
                Part filePart = Parts.get(i);
                
           // }
            
                String fileName = (String) getFileName(filePart);

                OutputStream out = null;
                InputStream filecontent = null;

                try {
                    out = new FileOutputStream(new File(path + File.separator
                            + fileName));
                    filecontent = filePart.getInputStream();

                    int read = 0;
                    final byte[] bytes = new byte[1024];

                    while ((read = filecontent.read(bytes)) != -1) {
                        out.write(bytes, 0, read);
                    }

                    LOGGER.log(Level.INFO, "Файл {0} начал загружаться в {1}",
                            new Object[]{fileName, path});
                } catch (FileNotFoundException fne) {
                    LOGGER.log(Level.SEVERE, "Проблемы загрузки файла. Error: {0}",
                            new Object[]{fne.getMessage()});
                } finally {
                    if (out != null) {
                        out.close();
                    }
                    if (filecontent != null) {
                        filecontent.close();
                    }

                }
                if (!"".equals(fileName)) {
                    nameString = nameString + "<br>" + fileName;
                    imageList.add(fileName);
                } else {
                    request.setAttribute("info", "Не выбран файл для загрузки!");
                }

            }

            request.setAttribute("info", nameString);
            
            HttpSession sessionBox = request.getSession(false);
            sessionBox.setAttribute("imageList", imageList);
            
            request.getRequestDispatcher("/newarticle").forward(request, response);
        }
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
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
