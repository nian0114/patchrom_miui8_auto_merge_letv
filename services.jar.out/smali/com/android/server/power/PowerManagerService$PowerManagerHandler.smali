.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3366
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3367
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3368
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, -0x1

    .line 3372
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 3415
    :cond_0
    :goto_0
    return-void

    .line 3374
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3377
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3380
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    .line 3384
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->letvVib:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2800(Lcom/android/server/power/PowerManagerService;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 3388
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->appSetBacklightDim:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3389
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->appSetBacklightDim:I

    goto :goto_0

    .line 3393
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mScreenBrightnessSetting:I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    # invokes: Lcom/android/server/power/PowerManagerService;->setScreenBrightnessOverrideFromAppInternal(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;I)V

    goto :goto_0

    .line 3398
    :sswitch_6
    # getter for: Lcom/android/server/power/PowerManagerService;->mBGControlWakelockOpen:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3399
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/power/PowerManagerService;->handleReleaseWakelock(II)V

    goto :goto_0

    .line 3404
    :sswitch_7
    # getter for: Lcom/android/server/power/PowerManagerService;->mBGControlWakelockOpen:Z
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->access$3200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3405
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/power/PowerManagerService;->handleReleaseWakelock(II)V

    goto :goto_0

    .line 3409
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePendingWakeLockDisabledStatesLocked(I)V
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;I)V

    .line 3411
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3372
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_8
    .end sparse-switch
.end method
