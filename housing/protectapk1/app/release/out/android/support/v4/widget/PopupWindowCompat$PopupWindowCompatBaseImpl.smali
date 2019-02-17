.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatBaseImpl"
.end annotation


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 7

    .line 0
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    .line 87
    :try_start_6
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "getWindowLayoutType"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 89
    sget-object v2, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_17

    .line 93
    :catch_17
    sput-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 96
    :cond_19
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    .line 98
    :try_start_1d
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_2c

    return p1

    :catch_2c
    :cond_2c
    return v1
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3

    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 9

    .line 0
    sget-boolean v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1d

    .line 66
    :try_start_6
    const-class v0, Landroid/widget/PopupWindow;

    const-string v3, "setWindowLayoutType"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 68
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1b

    .line 72
    :catch_1b
    sput-boolean v2, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 75
    :cond_1d
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2e

    .line 77
    :try_start_21
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatBaseImpl;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-void
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 7

    .line 0
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 45
    invoke-static {p5, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p5

    and-int/lit8 p5, p5, 0x7

    const/4 v0, 0x5

    if-ne p5, v0, :cond_17

    .line 50
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p5, v0

    sub-int/2addr p3, p5

    .line 52
    :cond_17
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
