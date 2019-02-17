package FFF.ya;

import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.res.AssetManager;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import dalvik.system.DexClassLoader;

//----------------------注释是旧java版的替换代码，留作参考


public class Artifical extends Application {
/*
    private static String ApplicationName="com.example.imbaya.protectapk2.MyApplication";
    private static String path;

    private  Object currentActivityThread;
    private  Object boundApplication;//是AMS传入的AppBindData
    private  Object loadedapk;
*/
    @Override
    protected void attachBaseContext(Context base) {
            super.attachBaseContext(base);//先注册了可以使用

        String path;
        //从assets中读取dex放于path
        path=getdexpath(base);

        donative(path);

/*
        //获取ActivityThread对象
        currentActivityThread = RefInvoke.invokeStaticMethod(
                "android.app.ActivityThread", "currentActivityThread",
                new Class[] {}, new Object[] {});

        boundApplication  =  RefInvoke.getFieldOjbect(
                "android.app.ActivityThread", currentActivityThread,
                "mBoundApplication");

        loadedapk= RefInvoke.getFieldOjbect(
                "android.app.ActivityThread$AppBindData",boundApplication , "info");

        Object applicationInfo_LoadedApk= RefInvoke.getFieldOjbect(
                "android.app.LoadedApk",loadedapk, "mApplicationInfo");
        Object applicationInfo_AppBindData= RefInvoke.getFieldOjbect(
                "android.app.ActivityThread$AppBindData",boundApplication, "appInfo");

        //获取当前包的名字，并更改为目标包的名字,有俩处：LoadedApk与AppBindData的ApplicationInfo
        String nowname=(String) RefInvoke.getFieldOjbect(
                "android.content.pm.ApplicationInfo", applicationInfo_LoadedApk, "className");
        RefInvoke.setFieldOjbect(
                "android.content.pm.ApplicationInfo", "className",applicationInfo_LoadedApk, ApplicationName);
        RefInvoke.setFieldOjbect(
                "android.content.pm.ApplicationInfo", "className",applicationInfo_AppBindData, ApplicationName);


        //获取nativelib的路径
        String nownativeLibraryDir=(String) RefInvoke.getFieldOjbect(
                "android.content.pm.ApplicationInfo", applicationInfo_LoadedApk, "nativeLibraryDir");



        //新的classloader
        DexClassLoader dLoader = new DexClassLoader(path, null,
                nownativeLibraryDir, (ClassLoader) RefInvoke.getFieldOjbect(
                "android.app.LoadedApk",loadedapk, "mClassLoader"));

        //设置成新的classloader
        RefInvoke.setFieldOjbect("android.app.LoadedApk", "mClassLoader",
                loadedapk, dLoader);


*/

    }

    //因为前面的attachBaseContext执行时app等待返回，因此无法更改方法内动作，
    @Override
    public void onCreate() {
        super.onCreate();
        donative2();
        /*
        //LoadedApk.mApplication删除
        RefInvoke.setFieldOjbect("android.app.LoadedApk", "mApplication",
                loadedapk, null);

        //mActivityThread.mAllApplications.add(app);删除
        Object oldApplication = RefInvoke.getFieldOjbect(
                "android.app.ActivityThread", currentActivityThread,
                "mInitialApplication");

        ArrayList<Application> mAllApplications = (ArrayList<Application>) RefInvoke
                .getFieldOjbect("android.app.ActivityThread",
                        currentActivityThread, "mAllApplications");

        mAllApplications.remove(oldApplication);


        //执行makeApplication，此时的ApplicationInfo与classloader是修改过的
        Application app = (Application) RefInvoke.invokeMethod(
                "android.app.LoadedApk", "makeApplication", loadedapk,
                new Class[] { boolean.class, Instrumentation.class },
                new Object[] { false, null });

        //恢复makeApplication到oncreate之间的操作
        RefInvoke.setFieldOjbect("android.app.ActivityThread",
                "mInitialApplication", currentActivityThread, app);

        //泛型的概念是在编译时替换内部，因此其class对象为不加泛型的本类
        RefInvoke.invokeMethod(
                "android.app.ActivityThread", "installContentProviders", currentActivityThread,
                new Class[] { Context.class, List.class},
                new Object[] { app, RefInvoke.getFieldOjbect("android.app.ActivityThread$AppBindData",
                        boundApplication, "providers") });




        app.onCreate();
        */
    }


    //加密dex路径
    String getdexpath(Context base)
    {
        String dexpath=base.getFilesDir().getParentFile().getAbsolutePath()+"/ls/target_classes.dex";
        File dexfile=new File(dexpath);
        if(dexfile.exists())
        {
            return  dexpath;
        }

        AssetManager am=base.getAssets();
        try {

            //创建文件
            if(!dexfile.getParentFile().exists())
            {
                dexfile.getParentFile().mkdir();
            }
            dexfile.createNewFile();


            InputStream is=am.open("classes.dex");
            FileOutputStream fos = new FileOutputStream(dexfile);

            byte[] buffer = new byte[1024];
            int byteCount=0;
            while((byteCount=is.read(buffer))!=-1) {//循环从输入流读取 buffer字节
                fos.write(buffer, 0, byteCount);//将读取的输入流写入到输出流
            }
            fos.flush();//刷新缓冲区
            is.close();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return dexpath;

    }

    static {
        System.loadLibrary("jiagu");
    }

    native void donative(String path);
    native void donative2();

}
