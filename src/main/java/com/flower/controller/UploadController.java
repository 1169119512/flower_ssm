package com.flower.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/upload")
public class UploadController extends HttpServlet {

    @RequestMapping("doPost")
    protected void doPost(HttpServletRequest req, HttpServletResponse resp, MultipartFile upload){

        if(ServletFileUpload.isMultipartContent(req)){
            FileItemFactory fileItemFactory = new DiskFileItemFactory();
            ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);

            try {
                List<FileItem> list = servletFileUpload.parseRequest(req);

                for (FileItem fileItem : list) {

                    if(fileItem.isFormField()){
                        System.out.println("表单项属性值"+fileItem.getFieldName());
                        System.out.println("表单项Value属性值"+fileItem.getString("UTF-8"));
                    }
                    else {
                        System.out.println("表单项属性值"+fileItem.getFieldName());
                        System.out.println("上传文件名"+fileItem.getName());

                        fileItem.write(new File("C:\\Users\\Coder\\Desktop\\output1\\"+fileItem.getName()));

                    }
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
}
}