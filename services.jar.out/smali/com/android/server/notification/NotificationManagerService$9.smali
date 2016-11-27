.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isShadow:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZZ)V
    .locals 0

    .prologue
    .line 3041
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$isShadow:Z

    iput-boolean p13, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_4

    const/4 v10, 0x0

    .line 3045
    .local v10, "listenerName":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3048
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3049
    const/16 v17, -0x1

    .line 3052
    .local v17, "index":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->isCloneProcessByPid(I)Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$isShadow:Z

    if-eqz v1, :cond_5

    :cond_1
    const/4 v6, 0x1

    .line 3054
    .local v6, "isShadowProc":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v17

    .line 3055
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double cancelNotification isShadowProc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",get index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    :cond_2
    if-ltz v17, :cond_8

    .line 3058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 3062
    .local v12, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 3066
    :cond_3
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    and-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    if-eq v1, v2, :cond_6

    .line 3067
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3081
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return-void

    .line 3044
    .end local v6    # "isShadowProc":Z
    .end local v10    # "listenerName":Ljava/lang/String;
    .end local v17    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 3052
    .restart local v10    # "listenerName":Ljava/lang/String;
    .restart local v17    # "index":I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 3069
    .restart local v6    # "isShadowProc":Z
    .restart local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    :try_start_1
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    .line 3070
    monitor-exit v7

    goto :goto_2

    .line 3080
    .end local v6    # "isShadowProc":Z
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3073
    .restart local v6    # "isShadowProc":Z
    .restart local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$sendDelete:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v1, v12, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    const/16 v16, 0xc

    move-object v15, v10

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    invoke-static/range {v11 .. v16}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 3078
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 3080
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_8
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
