.class Lcom/android/server/wm/WindowManagerService$Watcher;
.super Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Watcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 12584
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$Watcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 12584
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$Watcher;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public onSnapshotFailed(I)V
    .locals 3
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12595
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSnapFailed resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12596
    return-void
.end method

.method public onSnapshotFinished(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12601
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSnapshotFinished bm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12602
    if-eqz p1, :cond_0

    .line 12603
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12604
    .local v0, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12605
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$Watcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$Watcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v5, "/data/snapshot/"

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$Watcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCurrentSnapshot:Lcom/android/server/wm/WindowState;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2300(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$Watcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCurrentSnapshot:Lcom/android/server/wm/WindowState;
    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService;->access$2300(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".png"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v3, v4, v0, v5, v1}, Lcom/android/server/wm/WindowManagerService$SaveImageRunnable;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 12608
    .end local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 12605
    .restart local v0    # "ret":Landroid/graphics/Bitmap;
    :cond_1
    const-string v1, "snapshot.png"

    goto :goto_0
.end method

.method public onSnapshotStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12589
    const-string v0, "WindowManager"

    const-string v1, "onSnapshotStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12590
    return-void
.end method
