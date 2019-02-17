.class Landroid/arch/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;)V
    .registers 2

    .line 0
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$1;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_7
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$1;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;
    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$1;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;
    invoke-static {}, Landroid/arch/lifecycle/LiveData;->access$200()Ljava/lang/Object;

    move-result-object v3

    # setter for: Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;
    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1d

    .line 87
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$1;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void

    :catchall_1d
    move-exception v1

    .line 85
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
