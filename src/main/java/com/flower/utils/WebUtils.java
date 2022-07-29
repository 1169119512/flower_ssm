package com.flower.utils;

import org.apache.commons.beanutils.BeanUtils;


import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

public class WebUtils {
    /**
     * 不写成HttpServlet是因为项目有
     * Dao层
     * Service层
     * Web层

     * @param bean
     */
    public static <T>  T copyPaeamToBean(Map value, T bean){
        try {
            System.out.println("注入之前："+bean);
            BeanUtils.populate(bean, value);
            System.out.println("注入之后："+bean);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        return bean;
    }

    /**
     * 将字符串转换为int类型
     * @param string
     * @return
     */
    public static int parseInt(String string,Integer defaultValue){
        try {
            return Integer.parseInt(string);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return defaultValue;

    }

    public static void createFile(String pathname) {
        File file = new File(pathname);
        if (!file.exists()) {// 判断目录是否存在
            file.mkdir();
            System.out.println("执行了"+file);
        }
    }

    public static void reNameFile(String pathname,String oldName,String newName) {
        File file = new File(pathname+"\\"+oldName);
        file.renameTo(new File(pathname+newName+".jpg")); //改名
    }


    public static void deleteFile(File file) {
        // 判断传递进来的是文件还是文件夹,如果是文件,直接删除,如果是文件夹,则判断文件夹里面有没有东西
        if (file.isDirectory()) {
            // 如果是目录,就删除目录下所有的文件和文件夹
            File[] files = file.listFiles();
            // 遍历目录下的文件和文件夹
            for (File f : files) {
                // 如果是文件,就删除
                if (f.isFile()) {
                    System.out.println("已经被删除的文件:" + f);
                    // 删除文件
                    f.delete();
                } else if (file.isDirectory()) {
                    // 如果是文件夹,就递归调用文件夹的方法
                    deleteFile(f);
                }
            }
        }

    }
}
