.class public final Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
.super Ljava/lang/Object;
.source "PowerXtendPlugInImpl.java"

# interfaces
.implements Lcom/android/server/power/plug/IPowerXtendPlugIn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/xtend/PowerXtendPlugInImpl$1;,
        Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;,
        Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_BATTERY_STATE_CHANGE:I = 0x0

.field private static final MSG_SAVE_MODE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerXtendPolicy"

.field private static final XTEND_MODE_CHANGE_LEVEL:I = 0x14

.field private static final XTEND_OPEN_LEVEL:I = 0x1e


# instance fields
.field private mBattery:Landroid/os/BatteryManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mOpenXtend:Z

.field private mPendingOprator:Z

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mPowerXtendReady:Z

.field private mSystemReady:Z

.field private mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

.field private propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "open"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mOpenXtend:Z

    .line 79
    sget-object v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->UNKNOW:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    iput-object v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .line 93
    iput-object p1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean p2, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mOpenXtend:Z

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->calculateXtendMode()Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
    .param p1, "x1"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
    .param p1, "x1"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->setPowerXtendMode(Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)V

    return-void
.end method

.method private calculateXtendMode()Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    .locals 6

    .prologue
    .line 168
    iget-boolean v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->OFF:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .line 201
    :goto_0
    return-object v4

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mBattery:Landroid/os/BatteryManagerInternal;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    .line 178
    .local v1, "isCharging":Z
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mBattery:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    .line 185
    .local v0, "batteryLevel":I
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPower:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z

    move-result v2

    .line 187
    .local v2, "isLowPowerMode":Z
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPower:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->isPowerSaveLevelInternal()I

    move-result v3

    .line 188
    .local v3, "isPowerSavingLevel":I
    if-eqz v2, :cond_2

    .line 189
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 191
    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE3:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    goto :goto_0

    .line 192
    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 194
    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE4:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    goto :goto_0

    .line 196
    :cond_2
    const/16 v4, 0x1e

    if-gt v0, v4, :cond_3

    .line 197
    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->MODE3:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    goto :goto_0

    .line 201
    :cond_3
    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->OFF:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    goto :goto_0
.end method

.method private initLucid(Lcom/android/server/power/PowerManagerService;Landroid/os/BatteryManagerInternal;)V
    .locals 8
    .param p1, "power"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "battery"    # Landroid/os/BatteryManagerInternal;

    .prologue
    const/4 v7, 0x0

    .line 126
    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mSystemReady:Z

    if-nez v1, :cond_0

    .line 127
    const-string v1, "PowerXtendPolicy"

    const-string v4, "initLucid system not ready....."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "PowerXtendPolicy"

    const-string v4, "initLucid propApi is not null...."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 135
    .local v2, "start":J
    const-string v1, "PowerXtendPolicy"

    const-string v4, "initLucid, load data...."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_0
    new-instance v1, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-direct {v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    .line 140
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v4, "PowerXtendPolicy"

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 141
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 142
    new-instance v1, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;-><init>(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    .line 144
    iput-object p1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 145
    iput-object p2, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mBattery:Landroid/os/BatteryManagerInternal;

    .line 147
    const-string v1, "PowerXtendPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initLucid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->handleBatteryStateChanged()V

    .line 159
    const-string v1, "PowerXtendPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initLucid, App: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", init spant: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "PowerXtendPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initLucid error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v7, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    goto :goto_1
.end method

.method public static final newInstance(Landroid/content/Context;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static final newInstance(Landroid/content/Context;Z)Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "open"    # Z

    .prologue
    .line 89
    new-instance v0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private setPowerXtendMode(Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    .prologue
    .line 277
    iget-boolean v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mSystemReady:Z

    if-nez v4, :cond_0

    .line 278
    const-string v4, "PowerXtendPolicy"

    const-string v5, "setPowerXtendMode mSystemReady not ready....."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    if-nez v4, :cond_1

    .line 282
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode propApi is null, mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_1
    const/4 v3, 0x0

    .line 287
    .local v3, "result":Z
    sget-object v4, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$1;->$SwitchMap$com$android$server$power$xtend$PowerXtendPlugInImpl$XtendMode:[I

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 354
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode why mode is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_1
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToOff()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    const/4 v3, 0x1

    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 295
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 30up1 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 298
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 30up2 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToManualMode(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_4

    .line 306
    const/4 v3, 0x1

    goto :goto_1

    .line 307
    :catch_2
    move-exception v1

    .line 308
    .restart local v1    # "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 309
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20up1 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 311
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 312
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20up2 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 313
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v2

    .line 314
    .local v2, "e2":Ljava/security/InvalidParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 315
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20up3 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    .end local v2    # "e2":Ljava/security/InvalidParameterException;
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToManualMode(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_7

    .line 323
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 324
    :catch_5
    move-exception v1

    .line 325
    .restart local v1    # "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 326
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen1 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 329
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen2 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v2

    .line 331
    .restart local v2    # "e2":Ljava/security/InvalidParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 332
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen3 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .end local v2    # "e2":Ljava/security/InvalidParameterException;
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {p1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToManualMode(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_a

    .line 339
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 340
    :catch_8
    move-exception v1

    .line 341
    .restart local v1    # "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 342
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen1 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v0

    .line 344
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 345
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen2 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_a
    move-exception v2

    .line 347
    .restart local v2    # "e2":Ljava/security/InvalidParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 348
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerXtendMode 20downopen3 error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 423
    const-string v0, "PowerXtendPolicy"

    const-string v1, "setPowerXtendMode mSystemReady not ready....."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_0
    return-void

    .line 426
    :cond_0
    const-string v0, "Display Power xtend status: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOpenXtend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mOpenXtend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerXtendReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mXtendMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingOprator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleBatteryStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    if-nez v1, :cond_1

    .line 227
    const-string v1, "PowerXtendPolicy"

    const-string v2, "handleBatteryStateChanged, mPowerXtendReady is not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    if-nez v1, :cond_0

    .line 231
    iput-boolean v3, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    .line 232
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleLowPowerModeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 209
    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z

    if-nez v1, :cond_1

    .line 210
    const-string v1, "PowerXtendPolicy"

    const-string v2, "handleSaveModeChanged, mPowerXtendReady is not ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    if-nez v1, :cond_0

    .line 215
    iput-boolean v2, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z

    .line 216
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mHandler:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public setXTendModeForTest(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-boolean v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mSystemReady:Z

    if-nez v4, :cond_0

    .line 366
    const-string v4, "PowerXtendPolicy"

    const-string v5, "setXTendModeForTest mSystemReady not ready....."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return v3

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    if-nez v4, :cond_1

    .line 370
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest propApi is null, mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_1
    const/4 v3, 0x0

    .line 374
    .local v3, "result":Z
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest  mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    packed-switch p1, :pswitch_data_0

    .line 398
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToManualMode(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_5

    .line 399
    const/4 v3, 0x1

    .line 412
    :goto_1
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->propApi:Lcom/android/server/power/xtend/LucidPropertiesApiImpl;

    invoke-virtual {v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetPowerXtendToOff()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 379
    const/4 v3, 0x1

    goto :goto_1

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 382
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 383
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 385
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 386
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 387
    .local v2, "e2":Ljava/security/InvalidParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 388
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 393
    .end local v2    # "e2":Ljava/security/InvalidParameterException;
    :pswitch_1
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest  no mode mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 400
    :catch_3
    move-exception v1

    .line 401
    .restart local v1    # "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 402
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 403
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 404
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 405
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 406
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v2

    .line 407
    .restart local v2    # "e2":Ljava/security/InvalidParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->printStackTrace()V

    .line 408
    const-string v4, "PowerXtendPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setXTendModeForTest error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public systemReady(Lcom/android/server/power/PowerManagerService;Landroid/os/BatteryManagerInternal;)V
    .locals 2
    .param p1, "power"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "battery"    # Landroid/os/BatteryManagerInternal;

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mSystemReady:Z

    .line 102
    iget-boolean v0, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mOpenXtend:Z

    if-nez v0, :cond_0

    .line 103
    const-string v0, "PowerXtendPolicy"

    const-string v1, "systemReady xtend is close....."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->initLucid(Lcom/android/server/power/PowerManagerService;Landroid/os/BatteryManagerInternal;)V

    goto :goto_0
.end method
