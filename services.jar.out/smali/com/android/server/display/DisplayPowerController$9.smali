.class Lcom/android/server/display/DisplayPowerController$9;
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
    .line 1471
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1489
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x0

    .line 1474
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1476
    .local v4, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v2

    .line 1477
    .local v0, "distance":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;)F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 1479
    .local v2, "positive":Z
    :cond_0
    float-to-int v1, v0

    .line 1480
    .local v1, "exdistance":I
    const/16 v3, 0xac5

    invoke-static {v3, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1482
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1484
    .end local v0    # "distance":F
    .end local v1    # "exdistance":I
    .end local v2    # "positive":Z
    .end local v4    # "time":J
    :cond_1
    return-void
.end method
