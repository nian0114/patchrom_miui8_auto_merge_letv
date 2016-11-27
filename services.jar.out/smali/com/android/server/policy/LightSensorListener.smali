.class public Lcom/android/server/policy/LightSensorListener;
.super Ljava/lang/Object;
.source "LightSensorListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final AD_SOCKET_NAME:Ljava/lang/String; = "pps"

.field private static final DISABLE_AD_MSG:[B

.field private static final ENABLE_AD_MSG:[B


# instance fields
.field private mADEnabled:Z

.field private final mAddr:Landroid/net/LocalSocketAddress;

.field private mHandler:Landroid/os/Handler;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLock:Ljava/lang/Object;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSampleCount:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorOn:Z

.field private final mSkipCount:I

.field private final mSkipTimeout:I

.field private final mThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "ad:on;0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LightSensorListener;->ENABLE_AD_MSG:[B

    .line 46
    const-string v0, "ad:off;0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/LightSensorListener;->DISABLE_AD_MSG:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v2, p0, Lcom/android/server/policy/LightSensorListener;->mSampleCount:I

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/LightSensorListener;->mADEnabled:Z

    .line 49
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mLock:Ljava/lang/Object;

    .line 50
    iput-boolean v2, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    .line 55
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    .line 57
    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mAddr:Landroid/net/LocalSocketAddress;

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v1, Lcom/android/server/policy/LightSensorListener$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/LightSensorListener$1;-><init>(Lcom/android/server/policy/LightSensorListener;)V

    iput-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/LightSensorListener;->mThreshold:I

    .line 77
    const v1, 0x10e0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/LightSensorListener;->mSkipCount:I

    .line 78
    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/LightSensorListener;->mSkipTimeout:I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/LightSensorListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LightSensorListener;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/LightSensorListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LightSensorListener;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/LightSensorListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/LightSensorListener;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/policy/LightSensorListener;->mThreshold:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/LightSensorListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/LightSensorListener;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/policy/LightSensorListener;->setAdaptiveDisplay(Z)V

    return-void
.end method

.method private setAdaptiveDisplay(Z)V
    .locals 9
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 117
    iget-boolean v4, p0, Lcom/android/server/policy/LightSensorListener;->mADEnabled:Z

    if-ne p1, v4, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LightSensorListener::setAdaptiveDisplay "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Landroid/net/LocalSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "s":Landroid/net/LocalSocket;
    const/4 v5, 0x0

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/LightSensorListener;->mAddr:Landroid/net/LocalSocketAddress;

    invoke-virtual {v2, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 122
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .local v1, "os":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 123
    if-eqz p1, :cond_3

    :try_start_2
    sget-object v4, Lcom/android/server/policy/LightSensorListener;->ENABLE_AD_MSG:[B

    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 124
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 125
    iput-boolean p1, p0, Lcom/android/server/policy/LightSensorListener;->mADEnabled:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 126
    if-eqz v1, :cond_2

    if-eqz v6, :cond_5

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :cond_2
    :goto_2
    if-eqz v2, :cond_0

    if-eqz v6, :cond_8

    :try_start_4
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v2    # "s":Landroid/net/LocalSocket;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed using socket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_6
    sget-object v4, Lcom/android/server/policy/LightSensorListener;->DISABLE_AD_MSG:[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 126
    :catch_2
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 120
    .end local v1    # "os":Ljava/io/OutputStream;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 127
    :catchall_0
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_3
    if-eqz v2, :cond_4

    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_4
    :goto_4
    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 126
    .restart local v1    # "os":Ljava/io/OutputStream;
    :cond_5
    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 127
    .end local v1    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    goto :goto_3

    .line 122
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    :try_start_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 126
    :catchall_2
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_5
    if-eqz v1, :cond_6

    if-eqz v5, :cond_7

    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :cond_6
    :goto_6
    :try_start_e
    throw v4

    :catch_5
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    .line 127
    :cond_8
    :try_start_f
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    goto/16 :goto_0

    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_6
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_4

    .line 126
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_3
    move-exception v4

    move-object v5, v6

    goto :goto_5
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    .line 98
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/LightSensorListener;->mSensorOn:Z

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/LightSensorListener;->mSampleCount:I

    .line 88
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    iget-object v0, p0, Lcom/android/server/policy/LightSensorListener;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/LightSensorListener;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/policy/LightSensorListener;->mSkipTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 114
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v1

    .line 104
    .local v0, "lum":F
    iget v2, p0, Lcom/android/server/policy/LightSensorListener;->mSampleCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/policy/LightSensorListener;->mSampleCount:I

    iget v3, p0, Lcom/android/server/policy/LightSensorListener;->mSkipCount:I

    if-le v2, v3, :cond_1

    .line 105
    iget-object v2, p0, Lcom/android/server/policy/LightSensorListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/LightSensorListener;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/LightSensorListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/policy/LightSensorListener;->disable()V

    .line 108
    iget v3, p0, Lcom/android/server/policy/LightSensorListener;->mThreshold:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/policy/LightSensorListener;->setAdaptiveDisplay(Z)V

    .line 109
    monitor-exit v2

    .line 111
    :cond_1
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
