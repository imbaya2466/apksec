package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTool {
	
	//删除文件夹下所有
	   public static boolean delAllInPath(String path) {
	       boolean flag = false;
	       File file = new File(path);
	       if (!file.exists()) {
	         return flag;
	       }
	       if (!file.isDirectory()) {
	         return flag;
	       }
	       String[] tempList = file.list();
	       File temp = null;
	       for (int i = 0; i < tempList.length; i++) {
	          if (path.endsWith(File.separator)) {
	             temp = new File(path + tempList[i]);
	          } else {
	              temp = new File(path + File.separator + tempList[i]);
	          }
	          if (temp.isFile()) {
	             temp.delete();
	          }
	          if (temp.isDirectory()) {
	        	  delAllInPath(path + "/" + tempList[i]);//先删除文件夹里面的文件
	             delFolder(path + "/" + tempList[i]);//再删除空文件夹
	             flag = true;
	          }
	       }
	       return flag;
	     }
	   
	   
	   //删除文件夹
	     public static void delFolder(String folderPath) {
	         try {
	        	 delAllInPath(folderPath); //删除完里面所有内容
	            String filePath = folderPath;
	            filePath = filePath.toString();
	            java.io.File myFilePath = new java.io.File(filePath);
	            myFilePath.delete(); //删除空文件夹
	         } catch (Exception e) {
	           e.printStackTrace(); 
	         }
	    }
	     
	     
	     //复制一个文件夹下的内容到另一个文件夹下
	     public static void copyDir(String sourcePath, String newPath) throws IOException {
	         File file = new File(sourcePath);
	         String[] filePath = file.list();
	         
	         if (!(new File(newPath)).exists()) {
	             (new File(newPath)).mkdir();
	         }
	         
	         for (int i = 0; i < filePath.length; i++) {
	             if ((new File(sourcePath +File.separator + filePath[i])).isDirectory()) {
	                 copyDir(sourcePath  + File.separator  + filePath[i], newPath  + File.separator + filePath[i]);
	             }
	             
	             if (new File(sourcePath  + File.separator + filePath[i]).isFile()) {
	                 copyFile(sourcePath + File.separator + filePath[i], newPath + File.separator + filePath[i]);
	             }
	             
	         }
	     }
	     
	     public static void copyFile(String oldPath, String newPath) throws IOException {
	         File oldFile = new File(oldPath);
	         File file = new File(newPath);
	         FileInputStream in = new FileInputStream(oldFile);
	         FileOutputStream out = new FileOutputStream(file);;

	         byte[] buffer=new byte[2048];
	         int readByte = 0;
	         while((readByte = in.read(buffer)) != -1){
	             out.write(buffer, 0, readByte);
	         }
	         out.flush();
	         in.close();
	         out.close();
	     }
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
	     
}
