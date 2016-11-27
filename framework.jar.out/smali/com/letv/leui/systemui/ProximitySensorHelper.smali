.class public Lcom/letv/leui/systemui/ProximitySensorHelper;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;,
        Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;
    }
.end annotation


# static fields
.field private static final PROXIMITY_THRESHOLD:F = 0.5f

.field private static final SENSOR_TIME_OUT:J = 0x190L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private SensorTimeOutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

.field private mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

.field private taskFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->NONE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$1;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$2;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/letv/leui/systemui/ProximitySensorHelper$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/systemui/ProximitySensorHelper$3;-><init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->taskFinishedRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximitySensor:Landroid/hardware/Sensor;

    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object v0
.end method

.method static synthetic access$302(Lcom/letv/leui/systemui/ProximitySensorHelper;Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;
    .param p1, "x1"    # Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    return-object p1
.end method

.method static synthetic access$400(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->taskFinishedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProximitySensorHelper.mState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setStateCallback(Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mStateCallback:Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->SensorTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->STANDBY:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    iput-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
