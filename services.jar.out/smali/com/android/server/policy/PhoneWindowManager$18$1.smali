.class Lcom/android/server/policy/PhoneWindowManager$18$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$18;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$18;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$18;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 5736
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5739
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin release, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isMultiScrenshot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager$18;->val$isMultiScrenshot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5740
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_2

    .line 5742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->val$isMultiScrenshot:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    .line 5743
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5746
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->val$isMultiScrenshot:Z

    if-nez v0, :cond_2

    .line 5747
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$18$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$18;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5750
    :cond_2
    monitor-exit v1

    .line 5751
    return-void

    .line 5750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
