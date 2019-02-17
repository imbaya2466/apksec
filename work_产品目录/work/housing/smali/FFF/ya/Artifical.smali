.class public LFFF/ya/Artifical;
.super Landroid/app/Application;
.source "Artifical.java"


# static fields
.field private static ApplicationName:Ljava/lang/String; = "com.example.imbaya.protectapk2.MyApplication"

.field private static path:Ljava/lang/String;


# instance fields
.field private boundApplication:Ljava/lang/Object;

.field private currentActivityThread:Ljava/lang/Object;

.field private loadedapk:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 7

    .line 0
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0, p1}, LFFF/ya/Artifical;->getdexpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, LFFF/ya/Artifical;->path:Ljava/lang/String;

    const-string p1, "android.app.ActivityThread"

    const-string v0, "currentActivityThread"

    const/4 v1, 0x0

    .line 42
    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v1}, LFFF/ya/RefInvoke;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    const-string p1, "android.app.ActivityThread"

    .line 46
    iget-object v0, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    const-string v1, "mBoundApplication"

    invoke-static {p1, v0, v1}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LFFF/ya/Artifical;->boundApplication:Ljava/lang/Object;

    const-string p1, "android.app.ActivityThread$AppBindData"

    .line 50
    iget-object v0, p0, LFFF/ya/Artifical;->boundApplication:Ljava/lang/Object;

    const-string v1, "info"

    invoke-static {p1, v0, v1}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    const-string p1, "android.app.LoadedApk"

    .line 53
    iget-object v0, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    const-string v1, "mApplicationInfo"

    invoke-static {p1, v0, v1}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android.app.ActivityThread$AppBindData"

    .line 55
    iget-object v1, p0, LFFF/ya/Artifical;->boundApplication:Ljava/lang/Object;

    const-string v2, "appInfo"

    invoke-static {v0, v1, v2}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.content.pm.ApplicationInfo"

    const-string v2, "className"

    .line 59
    invoke-static {v1, p1, v2}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v1, "android.content.pm.ApplicationInfo"

    const-string v2, "className"

    .line 61
    sget-object v3, LFFF/ya/Artifical;->ApplicationName:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, LFFF/ya/RefInvoke;->setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "android.content.pm.ApplicationInfo"

    const-string v2, "className"

    .line 63
    sget-object v3, LFFF/ya/Artifical;->ApplicationName:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, LFFF/ya/RefInvoke;->setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "android.content.pm.ApplicationInfo"

    const-string v1, "nativeLibraryDir"

    .line 68
    invoke-static {v0, p1, v1}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 74
    new-instance v0, Ldalvik/system/DexClassLoader;

    sget-object v1, LFFF/ya/Artifical;->path:Ljava/lang/String;

    const-string v2, "android.app.LoadedApk"

    iget-object v3, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    const-string v4, "mClassLoader"

    .line 75
    invoke-static {v2, v3, v4}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string p1, "android.app.LoadedApk"

    const-string v1, "mClassLoader"

    .line 79
    iget-object v2, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    invoke-static {p1, v1, v2, v0}, LFFF/ya/RefInvoke;->setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method getdexpath(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ls/target_classes.dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v0

    .line 139
    :cond_29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 143
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 147
    :cond_3e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const-string v2, "classes.dex"

    .line 150
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 151
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    .line 153
    new-array v1, v1, [B

    .line 155
    :goto_50
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    const/4 v4, 0x0

    .line 156
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_50

    .line 158
    :cond_5c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 159
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p1

    .line 162
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_6a
    return-object v0
.end method

.method public onCreate()V
    .registers 11

    .line 0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "android.app.LoadedApk"

    const-string v1, "mApplication"

    .line 92
    iget-object v2, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, LFFF/ya/RefInvoke;->setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "android.app.ActivityThread"

    .line 96
    iget-object v1, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    const-string v2, "mInitialApplication"

    invoke-static {v0, v1, v2}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android.app.ActivityThread"

    .line 99
    iget-object v2, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    const-string v4, "mAllApplications"

    .line 100
    invoke-static {v1, v2, v4}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "android.app.LoadedApk"

    const-string v1, "makeApplication"

    .line 106
    iget-object v2, p0, LFFF/ya/Artifical;->loadedapk:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/app/Instrumentation;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-array v6, v4, [Ljava/lang/Object;

    .line 109
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v7

    aput-object v3, v6, v8

    .line 106
    invoke-static {v0, v1, v2, v5, v6}, LFFF/ya/RefInvoke;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-string v1, "android.app.ActivityThread"

    const-string v2, "mInitialApplication"

    .line 112
    iget-object v3, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0}, LFFF/ya/RefInvoke;->setFieldOjbect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "android.app.ActivityThread"

    const-string v2, "installContentProviders"

    .line 116
    iget-object v3, p0, LFFF/ya/Artifical;->currentActivityThread:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    const-string v6, "android.app.ActivityThread$AppBindData"

    iget-object v7, p0, LFFF/ya/Artifical;->boundApplication:Ljava/lang/Object;

    const-string v9, "providers"

    .line 119
    invoke-static {v6, v7, v9}, LFFF/ya/RefInvoke;->getFieldOjbect(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v8

    .line 116
    invoke-static {v1, v2, v3, v5, v4}, LFFF/ya/RefInvoke;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
