.class final Lcom/android/server/am/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    .line 314
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 315
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x100

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 321
    :sswitch_0
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 324
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity pause timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v4, v13, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pausing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 330
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 333
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_1
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 334
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 335
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v4, v13, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 338
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 341
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_2
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 344
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity destroy timeout for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 346
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v13, :cond_3

    iget-object v1, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_3
    const-string v4, "destroyTimeout"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 347
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 350
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_3
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 353
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stop timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 355
    :try_start_3
    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v13, v2, v4, v5}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 358
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 361
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_4
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    .line 362
    .local v11, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 363
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v11, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v11, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 364
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 367
    .end local v11    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 368
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 369
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 372
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 373
    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 374
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout waiting for cancelVisibleBehind player="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    if-eqz v13, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 378
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    .line 382
    :sswitch_7
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 383
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v0, :cond_6

    .line 384
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle screenshot application msg r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_6
    if-eqz v13, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v2, v9}, Lcom/android/server/wm/WindowManagerService;->scheduleScreenshotApplications(Landroid/os/IBinder;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 389
    .local v12, "bm":Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v0, :cond_7

    .line 390
    const-string v0, "ActivityManager"

    const-string v2, "done screenshot application"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_7
    invoke-virtual {v13, v12, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    .end local v12    # "bm":Landroid/graphics/Bitmap;
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_8
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 399
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle msg(CHECK_ACCESS_MSG) r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    if-eqz v13, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v9, v1

    move-object v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    goto/16 :goto_0

    .line 407
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_9
    iget-object v13, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    .line 408
    .restart local v13    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_0

    .line 409
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 410
    .local v3, "newIntent":Landroid/content/Intent;
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle msg(CHECK_ACCESS_MSG_RESULT) newIntent = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addEuiFlags(I)Landroid/content/Intent;

    .line 412
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move v8, v9

    move-object v9, v1

    move-object v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    goto/16 :goto_0

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_2
        0x67 -> :sswitch_1
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0xc9 -> :sswitch_7
        0xca -> :sswitch_8
        0xcb -> :sswitch_9
    .end sparse-switch
.end method
