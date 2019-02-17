.class Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public newAccessibilityDelegateBridge(Landroid/support/v4/view/AccessibilityDelegateCompat;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    .line 0
    new-instance v0, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl$1;-><init>(Landroid/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateBaseImpl;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-object v0
.end method

.method public performAccessibilityAction(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
