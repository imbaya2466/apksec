.class final Landroid/support/v4/provider/FontsContractCompat$3;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback<",
        "Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReply(Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;)V
    .registers 6

    .line 0
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sLock:Ljava/lang/Object;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 308
    :try_start_5
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_15

    .line 310
    monitor-exit v0

    return-void

    .line 312
    :cond_15
    # getter for: Landroid/support/v4/provider/FontsContractCompat;->sPendingReplies:Landroid/support/v4/util/SimpleArrayMap;
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->access$300()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/provider/FontsContractCompat$3;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_33

    const/4 v0, 0x0

    .line 314
    :goto_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;

    invoke-interface {v2, p1}, Landroid/support/v4/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_32
    return-void

    :catchall_33
    move-exception p1

    .line 313
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public bridge synthetic onReply(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;

    invoke-virtual {p0, p1}, Landroid/support/v4/provider/FontsContractCompat$3;->onReply(Landroid/support/v4/provider/FontsContractCompat$TypefaceResult;)V

    return-void
.end method
