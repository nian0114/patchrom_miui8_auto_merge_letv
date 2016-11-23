.class Lcom/android/server/display/DisplayPowerController$10;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1599
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1571
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mHallSensorEnabled:Z
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1573
    .local v4, "time":J
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v6, v3

    .line 1574
    .local v1, "mHallStatus":F
    const-string v6, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHallStatus ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mLastStatus:F
    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)F

    move-result v6

    cmpl-float v6, v6, v1

    if-eqz v6, :cond_0

    .line 1577
    cmpl-float v6, v1, v9

    if-nez v6, :cond_2

    .line 1578
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfHall:Z
    invoke-static {v6, v2}, Lcom/android/server/display/DisplayPowerController;->access$1602(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 1582
    :goto_0
    cmpl-float v6, v1, v9

    if-eqz v6, :cond_3

    .line 1583
    .local v2, "positive":Z
    :goto_1
    const-string v3, "sys.hallsensor.enable"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, "mHallEnable":Ljava/lang/String;
    const-string v3, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHallEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", positive == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1586
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleHallSensorEvent(JZ)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1592
    .end local v0    # "mHallEnable":Ljava/lang/String;
    .end local v2    # "positive":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mLastStatus:F
    invoke-static {v3, v1}, Lcom/android/server/display/DisplayPowerController;->access$1502(Lcom/android/server/display/DisplayPowerController;F)F

    .line 1594
    .end local v1    # "mHallStatus":F
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1580
    .restart local v1    # "mHallStatus":F
    .restart local v4    # "time":J
    :cond_2
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$10;->this$0:Lcom/android/server/display/DisplayPowerController;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfHall:Z
    invoke-static {v6, v3}, Lcom/android/server/display/DisplayPowerController;->access$1602(Lcom/android/server/display/DisplayPowerController;Z)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1582
    goto :goto_1
.end method
