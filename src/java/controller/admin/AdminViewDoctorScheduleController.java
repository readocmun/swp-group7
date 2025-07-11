/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import com.google.gson.Gson;
import dal.DoctorScheduleDAO;
import entity.DoctorSchedule;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.Const;

/**
 *
 * @author My Computer
 */
//To retrieve all doctor schedules from the database and forward them as JSON to the admin JSP page for display.
@WebServlet(name = "AdminViewDoctorScheduleController", urlPatterns = {Const.ADMIN_VIEW_DOCTOR_SCHEDULE_URL})
public class AdminViewDoctorScheduleController extends HttpServlet {

    private final DoctorScheduleDAO doctorScheduleDAO;
    private final Gson gson;

    public AdminViewDoctorScheduleController() {
        this.doctorScheduleDAO = new DoctorScheduleDAO();
        this.gson = new Gson();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<DoctorSchedule> schedules = doctorScheduleDAO.getAllDoctorSchedule();
        request.setAttribute("schedules", gson.toJson(schedules));
        request.getRequestDispatcher("Main Template/admin-doctor-schedule.jsp").forward(request, response);
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
