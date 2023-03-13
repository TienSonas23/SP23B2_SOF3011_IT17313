package controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet({
    "/nhan_vien/index",    // GET
    "/nhan_vien/create",   // GET
    "/nhan_vien/edit",     // GET
    "/nhan_vien/delete",   // GET
    "/nhan_vien/store",    // POST
    "/nhan_vien/update",   // POST
})
public class NhanVienServlet extends HttpServlet {
    @Override
    protected void doGet(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException {
        this.create(request, response);
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {
        this.store(request, response);
    }

    protected void store(
        HttpServletRequest request,
        HttpServletResponse response
    ) throws ServletException, IOException {
        String hoz = request.getParameter("ho");
        String tenDem = request.getParameter("ten_dem");
        String ten = request.getParameter("ten");

        System.out.println("Họ Tên NV là  :" + hoz + tenDem + ten);
    }

    protected void create(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws ServletException, IOException {
        request.getRequestDispatcher("/views/nhan_vien/create.jsp")
                .forward(request, response);
    }
}
