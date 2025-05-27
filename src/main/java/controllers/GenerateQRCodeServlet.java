package controllers;

import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

@WebServlet("/GenerateQRCode")
public class GenerateQRCodeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chuỗi thông tin thanh toán cần mã hóa
        String qrData = request.getParameter("data"); // nhận thông tin từ URL
        
        // Kích thước mã QR
        int width = 200;
        int height = 200;

        try {
            // Tạo BitMatrix cho QR
            BitMatrix bitMatrix = new MultiFormatWriter().encode(qrData, BarcodeFormat.QR_CODE, width, height);

            // Cài đặt response là dạng hình ảnh PNG
            response.setContentType("image/png");
            OutputStream outputStream = response.getOutputStream();

            // Ghi mã QR vào OutputStream và gửi đến client
            MatrixToImageWriter.writeToStream(bitMatrix, "PNG", outputStream);
            outputStream.flush();
            outputStream.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error while generating QR Code");
        }
    }
}
