package com.example.vinfast.util;

import com.example.vinfast.constant.SystemConstant;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;

public class UploadUtil {
    public static String saveFileImage(Part part, HttpServletRequest req){
        String fileName = getFileName(part);
        String uploadPath = req.getServletContext().getRealPath("/template/web/images");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }
        try {
            part.write(uploadPath + File.separator + fileName);
            part.write(SystemConstant.UPLOADPATH + fileName);
            return fileName;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String getFileName(Part part){
        String contentDisposition = part.getHeader("content-disposition");
        for (String cd : contentDisposition.split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
}
