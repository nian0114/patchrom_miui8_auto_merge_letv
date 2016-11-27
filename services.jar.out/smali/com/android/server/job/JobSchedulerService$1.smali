.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 148
    const-string v4, "JobSchedulerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, "uidRemoved":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(I)V

    .line 174
    .end local v1    # "uidRemoved":I
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    goto :goto_0

    .line 165
    .end local v2    # "userId":I
    :cond_2
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/server/job/JobSchedulerService;->updateIdleMode(Z)V

    goto :goto_0

    .line 168
    :cond_4
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "allowRemoveJob"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(I)V

    goto :goto_0
.end method
