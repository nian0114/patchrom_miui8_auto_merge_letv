.class public Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoldAlarmStatuObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4153
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4154
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4155
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4158
    # getter for: Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$2900()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4182
    :cond_0
    :goto_0
    return-void

    .line 4162
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LEUI_HOLD_ALARM_ENABLE_KEY"

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 4165
    .local v2, "tempHoldAlarm":Z
    :goto_1
    const/4 v1, 0x0

    .line 4166
    .local v1, "flags":I
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4167
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$3000(Lcom/android/server/AlarmManagerService;)Z

    move-result v3

    if-eq v3, v2, :cond_2

    .line 4168
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z
    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->access$3002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 4169
    or-int/lit8 v1, v1, 0x4

    .line 4173
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4175
    if-eqz v1, :cond_0

    .line 4176
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->onHoldAlarmSettingChange(ZI)V
    invoke-static {v3, p1, v1}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService;ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4179
    .end local v1    # "flags":I
    .end local v2    # "tempHoldAlarm":Z
    :catch_0
    move-exception v0

    .line 4180
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting observer onChange Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 4173
    .restart local v1    # "flags":I
    .restart local v2    # "tempHoldAlarm":Z
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method
