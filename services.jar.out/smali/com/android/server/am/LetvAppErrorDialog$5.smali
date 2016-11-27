.class Lcom/android/server/am/LetvAppErrorDialog$5;
.super Landroid/os/Handler;
.source "LetvAppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvAppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvAppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvAppErrorDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$100(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$200(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$200(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$200(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$300(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->isSystemApp:Z
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$400(Lcom/android/server/am/LetvAppErrorDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.letv.bug.reporter"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "name"

    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mAppName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/LetvAppErrorDialog;->access$500(Lcom/android/server/am/LetvAppErrorDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    # getter for: Lcom/android/server/am/LetvAppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/LetvAppErrorDialog;->access$600(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/LetvAppErrorDialog$5;->removeMessages(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/am/LetvAppErrorDialog$5;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$5;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-virtual {v2}, Lcom/android/server/am/LetvAppErrorDialog;->disappear()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LetvAppErrorDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start bugreport exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
