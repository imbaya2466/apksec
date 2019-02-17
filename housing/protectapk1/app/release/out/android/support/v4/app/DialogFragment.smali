.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/DialogFragment$DialogStyle;
    }
.end annotation


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 0
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 90
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 92
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    const/4 v0, 0x0

    .line 0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .registers 2

    const/4 v0, 0x1

    .line 0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method dismissInternal(Z)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    const/4 v1, 0x0

    .line 208
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 209
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_14

    .line 210
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    :cond_14
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 213
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_27

    .line 214
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    const/4 p1, -0x1

    .line 216
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_3b

    .line 218
    :cond_27
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_38

    .line 221
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3b

    .line 223
    :cond_38
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_3b
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getShowsDialog()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .registers 2
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .line 0
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 401
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_8

    return-void

    .line 405
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 411
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_22

    .line 408
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 415
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 417
    :cond_2d
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4d

    const-string v0, "android:savedDialogState"

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 423
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4d
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 289
    iget-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    :cond_a
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_3b

    const-string v0, "android:style"

    .line 314
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const-string v0, "android:theme"

    .line 315
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    const-string v0, "android:cancelable"

    .line 316
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    const-string v0, "android:showsDialog"

    .line 317
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    .line 318
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    :cond_3b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 478
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 483
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_12
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 299
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    :cond_e
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    iget-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-nez p1, :cond_8

    const/4 p1, 0x1

    .line 393
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    :cond_8
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    .line 0
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_9

    .line 325
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 328
    :cond_9
    invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 330
    iget-object p1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_29

    .line 331
    iget-object p1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/DialogFragment;->setupDialog(Landroid/app/Dialog;I)V

    .line 333
    iget-object p1, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 336
    :cond_29
    iget-object p1, p0, Landroid/support/v4/app/DialogFragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 441
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    .line 442
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "android:savedDialogState"

    .line 444
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    :cond_14
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1f

    const-string v0, "android:style"

    .line 448
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    :cond_1f
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2a

    const-string v0, "android:theme"

    .line 451
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    :cond_2a
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_35

    const-string v0, "android:cancelable"

    .line 454
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    :cond_35
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_40

    const-string v0, "android:showsDialog"

    .line 457
    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    :cond_40
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4c

    const-string v0, "android:backStackId"

    .line 460
    iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4c
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 432
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 434
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_c
    return-void
.end method

.method public setCancelable(Z)V
    .registers 3

    .line 0
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 248
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_b
    return-void
.end method

.method public setShowsDialog(Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .registers 4
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 0
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 119
    iget p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    iget p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_11

    :cond_c
    const p1, 0x1030059

    .line 120
    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    :cond_11
    if-eqz p2, :cond_15

    .line 123
    iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I

    :cond_15
    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    packed-switch p2, :pswitch_data_12

    goto :goto_11

    .line 0
    :pswitch_4
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x18

    .line 351
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    :pswitch_d
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_11
    return-void

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_4
    .end packed-switch
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    .line 0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 157
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 158
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 159
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 160
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 161
    iget p1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    return p1
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    .line 142
    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public showNow(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 178
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    .line 179
    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNow()V

    return-void
.end method
