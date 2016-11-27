.class final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 644
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 649
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 651
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 655
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mForceAdjust:Z
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 660
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 661
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mForceAdjust:Z
    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 662
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I
    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$302(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_0

    .line 665
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
