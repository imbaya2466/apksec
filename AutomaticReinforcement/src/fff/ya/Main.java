package fff.ya;

import util.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;




/*
 * 
  使用目录结构：
work/
	main.jar
	tool/
		apktool/
	housing/
		smali/
		lib/
	work/
		out/
	mubiao.apk
	sign.apk
 * 
 */




public class Main {
	File directory = new File(System.getProperty("user.dir"));
	File housing=new File(directory, "housing");
	File work=new File(directory,"work");
	File tool=new File(directory, "tool");
	
	String directorypath=directory.getAbsolutePath();
	String housingpath=housing.getAbsolutePath();
	String workpath=work.getAbsolutePath();
	String toolpath=tool.getAbsolutePath();
	
	String sourceApk;
	String targetApk;
	String apkout;
	
	
	public static void main(String[] args) {
		
		if(args.length==0)
		{
			log("输入需要处理的apk名");
			return;
			
		}
		Main mian=new Main();
		mian.run(args[0]);
		


	}
	
	void run(String args)
	{
		//执行apktool
		
		sourceApk=directorypath+File.separator+args;
		apkout=workpath+File.separator+"out";
		
		String command=toolpath+File.separator+"apktool"+File.separator+"apktool.bat d -o " + apkout  +" "+sourceApk;
		log(command);
		
		try {
			Process p = Runtime.getRuntime().exec(command);
			int exit=p.waitFor();
			if(exit!=0)
			{
				log("执行apktool失败"+exit+"可能已存在out");
			}
		} catch (IOException | InterruptedException e) {
			
			e.printStackTrace();
		}
		
		
		//提取dex到assets
		ZipHelp apk=new ZipHelp(sourceApk);
		apk.extractFileformZip("classes.dex",apkout+File.separator+"assets"+File.separator+"classes.dex");
		
		//smali替换
		log("植入壳");
		FileTool.delAllInPath(apkout+File.separator+"smali");
		try {
			FileTool.copyDir(housingpath+File.separator+"smali", apkout+File.separator+"smali");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		//更改AndroidManifest暂时不改壳smali中的目标application名，先固定下来
		ChangeAM(apkout+File.separator+"AndroidManifest.xml");
		
		//打包
		
		//签名
		
		log("SuccessAll");
		
		
	}
	
	
	//改变AndroidManifest
	void ChangeAM(String AM)
	{
		
		
		
	}
	
	
	static void log(String a)
	{
		System.out.println(a);
	}

}
