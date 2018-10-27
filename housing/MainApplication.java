package FFF.imbaya.protect;

import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.util.ArrayMap;
import android.util.Log;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import dalvik.system.DexClassLoader;


public class MainApplication extends Application {

    private static String ApplicationName="com.example.imbaya.protectapk2.MyApplication";
    private static String path="/sdcard/ls/classes.dex";




    private  Object currentActivityThread;
    private  Object boundApplication;//是AMS传入的AppBindData
    private  Object loadedapk;

    @Override
    protected void attachBaseContext(Context base) {
            super.attachBaseContext(base);

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




    }

    //因为前面的attachBaseContext执行时app等待返回，因此无法更改方法内动作，
    @Override
    public void onCreate() {
        super.onCreate();
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

        RefInvoke.invokeMethod(
                "android.app.ActivityThread", "installContentProviders", currentActivityThread,
                new Class[] { Context.class, List.class},
                new Object[] { app, RefInvoke.getFieldOjbect("android.app.ActivityThread$AppBindData",
                        boundApplication, "providers") });










        app.onCreate();
    }





}
