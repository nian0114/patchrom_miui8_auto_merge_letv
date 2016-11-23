.class Landroid/view/ViewRootImpl$6;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 8091
    iput-object p1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 8094
    monitor-enter p0

    .line 8095
    :try_start_0
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentWatcher="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binderDied !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8096
    iget-object v1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    if-eqz v1, :cond_0

    .line 8097
    iget-object v1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    invoke-interface {v1}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 8098
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 8099
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8100
    iget-object v1, p0, Landroid/view/ViewRootImpl$6;->this$0:Landroid/view/ViewRootImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewRootImpl;->mCurrentWatcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    .line 8103
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    monitor-exit p0

    .line 8104
    return-void

    .line 8103
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
