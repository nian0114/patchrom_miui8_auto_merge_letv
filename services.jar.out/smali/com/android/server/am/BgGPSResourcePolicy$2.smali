.class Lcom/android/server/am/BgGPSResourcePolicy$2;
.super Ljava/lang/Object;
.source "BackAppResourcePolicyManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BgGPSResourcePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BgGPSResourcePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/BgGPSResourcePolicy;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1235
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 1221
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I
    invoke-static {v0}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1700(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    float-to-int v1, v1

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I
    invoke-static {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1702(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I
    invoke-static {v2}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1700(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v2

    sub-int/2addr v1, v2

    # += operator for: Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I
    invoke-static {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1412(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1227
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v0, :cond_1

    const-string v0, "BgGPSResourcePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIMIT_APP: mCurrSteps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I
    invoke-static {v2}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1400(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy$2;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    float-to-int v1, v1

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I
    invoke-static {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1702(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1230
    :cond_2
    return-void
.end method
