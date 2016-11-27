.class public Lcom/letv/extsensor/ExtSensorManager;
.super Ljava/lang/Object;
.source "ExtSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final EXT_SENSOR_BOARD_TEMPERATURE:I = 0x1

.field private static final MIN_SAMPLE_PERIOD:I = 0x1388

.field private static final MSG_GET_BOARD_TEMPERATURE:I = 0x1

.field private static final MSM8976_BOARD_NAME:Ljava/lang/String; = "MSM8976"

.field private static final MSM8976_TEMP_FILE:Ljava/lang/String; = "/sys/devices/virtual/thermal/thermal_zone3/temp"

.field private static final MSM8996_BOARD_NAME:Ljava/lang/String; = "msm8996"

.field private static final MSM8996_TEMP_FILE:Ljava/lang/String; = "/sys/devices/virtual/thermal/thermal_zone27/temp"

.field private static final MT6797_BOARD_NAME:Ljava/lang/String; = "mt6797"

.field private static final MT6797_TEMP_FILE:Ljava/lang/String; = "/sys/class/thermal/thermal_zone9/temp"

.field private static final TAG:Ljava/lang/String; = "ExtSensorManager"

.field private static final TEMPERATURE_VALUE_SIZE:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/extsensor/ExtSensorManager$ExtSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/letv/extsensor/ExtSensorEventListener;",
            "Lcom/letv/extsensor/ExtSensorManager$ExtSensor;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorThread:Landroid/os/HandlerThread;

.field private mTempFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/extsensor/ExtSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    .line 64
    iput-object p1, p0, Lcom/letv/extsensor/ExtSensorManager;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->initBoardParameter()V

    .line 67
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->createFullSensorList()V

    .line 68
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->initExtSensorThread()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/letv/extsensor/ExtSensorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/extsensor/ExtSensorManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->handleBoardTemperatureSensor()Z

    move-result v0

    return v0
.end method

.method private createFullSensorList()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;

    const/4 v1, 0x1

    const/16 v2, 0x1388

    invoke-direct {v0, p0, v1, v2}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;-><init>(Lcom/letv/extsensor/ExtSensorManager;II)V

    .line 159
    .local v0, "tempSensor":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    iget-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method private getBoardTemperatureSensor()Lcom/letv/extsensor/ExtSensorEvent;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x447a0000    # 1000.0f

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, "temp":F
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/letv/extsensor/ExtSensorManager;->mTempFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v6, "tempFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    const-string v7, "ExtSensorManager"

    const-string v8, "Thermal file not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return-object v1

    .line 237
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v3, "fs":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 239
    .local v0, "ds":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "sTemp":Ljava/lang/String;
    const-string v7, "ExtSensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read temperature from sys file, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 244
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 245
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    new-instance v1, Lcom/letv/extsensor/ExtSensorEvent;

    invoke-direct {v1, v11}, Lcom/letv/extsensor/ExtSensorEvent;-><init>(I)V

    .line 252
    .local v1, "event":Lcom/letv/extsensor/ExtSensorEvent;
    iput v11, v1, Lcom/letv/extsensor/ExtSensorEvent;->sensor:I

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/letv/extsensor/ExtSensorEvent;->timestamp:J

    .line 255
    cmpl-float v7, v5, v10

    if-ltz v7, :cond_1

    div-float/2addr v5, v10

    .line 256
    :cond_1
    const-string v7, "ExtSensorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Temperature value after adjust: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v7, v1, Lcom/letv/extsensor/ExtSensorEvent;->values:[F

    const/4 v8, 0x0

    aput v5, v7, v8

    goto :goto_0

    .line 246
    .end local v0    # "ds":Ljava/io/DataInputStream;
    .end local v1    # "event":Lcom/letv/extsensor/ExtSensorEvent;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .end local v4    # "sTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleBoardTemperatureSensor()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 205
    const/4 v4, 0x0

    .line 208
    .local v4, "tempSensor":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->getBoardTemperatureSensor()Lcom/letv/extsensor/ExtSensorEvent;

    move-result-object v0

    .line 209
    .local v0, "event":Lcom/letv/extsensor/ExtSensorEvent;
    iget-object v6, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/extsensor/ExtSensorEventListener;

    .line 210
    .local v2, "l":Lcom/letv/extsensor/ExtSensorEventListener;
    iget-object v6, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;

    .line 211
    .local v3, "sensor":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    invoke-virtual {v3}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->getType()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 212
    move-object v4, v3

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v2, v0}, Lcom/letv/extsensor/ExtSensorEventListener;->onSensorChanged(Lcom/letv/extsensor/ExtSensorEvent;)V

    goto :goto_0

    .line 218
    .end local v2    # "l":Lcom/letv/extsensor/ExtSensorEventListener;
    .end local v3    # "sensor":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    :cond_1
    if-eqz v4, :cond_2

    .line 219
    const-string v6, "ExtSensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send delayed message for 1, delayed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->getSampleRate()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/letv/extsensor/ExtSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->getSampleRate()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    :goto_1
    if-eqz v4, :cond_3

    :goto_2
    return v5

    .line 223
    :cond_2
    const-string v6, "ExtSensorManager"

    const-string v7, "No listeners for board temperature sensor"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private initBoardParameter()V
    .locals 4

    .prologue
    .line 165
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 166
    .local v0, "strBoard":Ljava/lang/String;
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "ro.board.platform"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    const-string v1, "msm8996"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "ExtSensorManager"

    const-string v2, "Msm8996 platform found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "/sys/devices/virtual/thermal/thermal_zone27/temp"

    iput-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mTempFile:Ljava/lang/String;

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v1, "MSM8976"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const-string v1, "ExtSensorManager"

    const-string v2, "Msm8976 platform found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v1, "/sys/devices/virtual/thermal/thermal_zone3/temp"

    iput-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mTempFile:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "mt6797"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    const-string v1, "ExtSensorManager"

    const-string v2, "Mt6797 platform found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v1, "/sys/class/thermal/thermal_zone9/temp"

    iput-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mTempFile:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_3
    const-string v1, "ExtSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported board found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", default msm8996"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v1, "/sys/devices/virtual/thermal/thermal_zone27/temp"

    iput-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mTempFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private initExtSensorThread()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ext-sensor-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    .line 186
    iget-object v0, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v0, Lcom/letv/extsensor/ExtSensorManager$1;

    iget-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/letv/extsensor/ExtSensorManager$1;-><init>(Lcom/letv/extsensor/ExtSensorManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/letv/extsensor/ExtSensorManager;->mHandler:Landroid/os/Handler;

    .line 202
    return-void
.end method


# virtual methods
.method public getCurSensorValue(I)Lcom/letv/extsensor/ExtSensorEvent;
    .locals 1
    .param p1, "sensor"    # I

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/letv/extsensor/ExtSensorManager;->getBoardTemperatureSensor()Lcom/letv/extsensor/ExtSensorEvent;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Lcom/letv/extsensor/ExtSensorEventListener;II)Z
    .locals 7
    .param p1, "listener"    # Lcom/letv/extsensor/ExtSensorEventListener;
    .param p2, "sensor"    # I
    .param p3, "samplingPeriodMs"    # I

    .prologue
    .line 89
    const-string v4, "ExtSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; sensor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "msg":I
    packed-switch p2, :pswitch_data_0

    .line 100
    const-string v4, "ExtSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to register unsupported sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v4, 0x0

    .line 113
    :goto_0
    return v4

    .line 97
    :pswitch_0
    const/4 v2, 0x1

    .line 103
    iget-object v4, p0, Lcom/letv/extsensor/ExtSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;

    .line 104
    .local v0, "i":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    invoke-virtual {v0}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->getType()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 105
    move-object v3, v0

    .line 106
    .local v3, "s":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    iget-object v4, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v3, p3}, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;->setSampleRate(I)V

    .line 112
    .end local v0    # "i":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    .end local v3    # "s":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    :cond_1
    iget-object v4, p0, Lcom/letv/extsensor/ExtSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 113
    const/4 v4, 0x1

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterListener(Lcom/letv/extsensor/ExtSensorEventListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/letv/extsensor/ExtSensorEventListener;

    .prologue
    .line 120
    const-string v1, "ExtSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/extsensor/ExtSensorManager$ExtSensor;

    .line 125
    .local v0, "es":Lcom/letv/extsensor/ExtSensorManager$ExtSensor;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/letv/extsensor/ExtSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
