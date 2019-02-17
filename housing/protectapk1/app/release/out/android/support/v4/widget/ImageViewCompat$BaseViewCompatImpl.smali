.class Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ImageViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/ImageViewCompat$ImageViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 3

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .line 46
    invoke-interface {p1}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    .line 67
    invoke-interface {p1}, Landroid/support/v4/widget/TintableImageSourceView;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 4

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 53
    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 0
    instance-of v0, p1, Landroid/support/v4/widget/TintableImageSourceView;

    if-eqz v0, :cond_9

    .line 60
    check-cast p1, Landroid/support/v4/widget/TintableImageSourceView;

    invoke-interface {p1, p2}, Landroid/support/v4/widget/TintableImageSourceView;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method
