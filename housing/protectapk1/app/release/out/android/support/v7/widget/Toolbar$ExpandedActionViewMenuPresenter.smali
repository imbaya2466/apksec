.class Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4

    .line 0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz p1, :cond_11

    .line 2407
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p1, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {p1}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2410
    :cond_11
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2411
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2412
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2414
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2415
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2416
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x0

    .line 2417
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 5

    .line 0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->ensureCollapseButtonView()V

    .line 2370
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2371
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_27

    .line 2372
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 2373
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2375
    :cond_1e
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2377
    :cond_27
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2378
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 2379
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2380
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_6f

    .line 2381
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4a

    .line 2382
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2384
    :cond_4a
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()Landroid/support/v7/widget/Toolbar$LayoutParams;

    move-result-object p1

    const v0, 0x800003

    .line 2385
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v0, 0x2

    .line 2386
    iput v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2387
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2388
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2391
    :cond_6f
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2392
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x1

    .line 2393
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2395
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of p2, p2, Landroid/support/v7/view/CollapsibleActionView;

    if-eqz p2, :cond_8e

    .line 2396
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast p2, Landroid/support/v7/view/CollapsibleActionView;

    invoke-interface {p2}, Landroid/support/v7/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_8e
    return p1
.end method

.method public flagActionItems()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_f

    .line 2315
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z

    .line 2317
    :cond_f
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 6

    .line 0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p1, :cond_2a

    .line 2331
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2332
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p1, :cond_21

    .line 2334
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2335
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_1e

    const/4 v0, 0x1

    goto :goto_21

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    :goto_21
    if-nez v0, :cond_2a

    .line 2344
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z

    :cond_2a
    return-void
.end method
