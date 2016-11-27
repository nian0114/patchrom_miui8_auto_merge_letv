.class Lcom/letv/leui/systemui/ProximitySensorHelper$1;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/ProximitySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .local v1, "isCoverBySomething":Z
    :cond_0
    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged(),distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCoverBySomething:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$200(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$100(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$300(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$300(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v2

    sget-object v4, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    sget-object v4, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    # setter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    invoke-static {v2, v4}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$302(Lcom/letv/leui/systemui/ProximitySensorHelper;Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$400(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$400(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;->AntiInadevertentlyRelease()V

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$200(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->taskFinishedRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$500(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit v3

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
