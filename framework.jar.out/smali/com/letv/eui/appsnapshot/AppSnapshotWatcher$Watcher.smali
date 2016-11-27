.class Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;
.super Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;


# direct methods
.method private constructor <init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    invoke-direct {p0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;
    .param p2, "x1"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;-><init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)V

    return-void
.end method


# virtual methods
.method public onSnapshotFailed(I)V
    .locals 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "AppSnapshotWatcher"

    const-string v1, "onSnapshotFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotFailed(I)V

    :cond_0
    return-void
.end method

.method public onSnapshotFinished(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "AppSnapshotWatcher"

    const-string v1, "onSnapshotFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotFinished(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onSnapshotStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v0, "AppSnapshotWatcher"

    const-string v1, "onSnapshotStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;->this$0:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    # getter for: Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    invoke-static {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;->onAppSnapshotStart()V

    :cond_0
    return-void
.end method
