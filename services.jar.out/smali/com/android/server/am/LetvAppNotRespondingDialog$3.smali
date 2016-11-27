.class Lcom/android/server/am/LetvAppNotRespondingDialog$3;
.super Landroid/os/Handler;
.source "LetvAppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvAppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->isSystemApp:Z
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$300(Lcom/android/server/am/LetvAppNotRespondingDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.letv.bug.reporter"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "name"

    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mAppName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$400(Lcom/android/server/am/LetvAppNotRespondingDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "type"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$500(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-virtual {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->disappear()V

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-virtual {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$200(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$100(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$200(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$100(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$200(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    if-ne v4, v6, :cond_3

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$3;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$200(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "LetvAppNotRespondingDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start bugreport exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "LetvAppNotRespondingDialog"

    const-string v5, "bug report receiver dissappeared"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
