.class public Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
.super Lcom/android/server/wifi/DefaultWifiFwkExt;
.source "WifiFwkExtOP01.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ReminderTypeObserver;,
        Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiFwkExtOP01"


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mCellToWiFiPolicy:I

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectTypeObserver:Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;

.field private mContext:Landroid/content/Context;

.field private mReminderType:I

.field private mReminderTypeObserver:Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ReminderTypeObserver;

.field private mReselectSuspendTime:J

.field private mSwitchSuspendTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/wifi/DefaultWifiFwkExt;-><init>(Landroid/content/Context;)V

    .line 34
    iput-wide v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    .line 35
    iput-wide v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    .line 36
    iput v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    .line 37
    iput v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    .line 44
    iput-object p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->sendUpdateSettingsBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    return p1
.end method

.method private isDisableForFailure(I)Z
    .locals 2
    .param p1, "reason"    # I

    .prologue
    const/4 v0, 0x1

    .line 301
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEnableAllNetworksBroadcast()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    return-void
.end method

.method private sendUpdateSettingsBroadcast()V
    .locals 3

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 292
    return-void
.end method


# virtual methods
.method public defaultFrameworkScanIntervalMs()I
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x3a98

    return v0
.end method

.method public getApDefaultSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "Le"

    return-object v0
.end method

.method public handleNetworkReselection()Z
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 260
    const-string v4, "@M_WifiFwkExtOP01"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNetworkReselection, currentTimeMillis:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mReselectSuspendTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mReminderType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x36ee80

    cmp-long v4, v8, v10

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    if-nez v4, :cond_2

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "cn":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 268
    .local v0, "classname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 269
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 270
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 272
    :cond_0
    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v4, "@M_WifiFwkExtOP01"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class Name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    const-string v4, "com.mediatek.op01.plugin.WifiReselectApDialog"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 279
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_RESELECTION_AP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 281
    iget-object v4, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 285
    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_1
    return v4

    .line 276
    .restart local v0    # "classname":Ljava/lang/String;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    const-string v4, "@M_WifiFwkExtOP01"

    const-string v7, "ComponentName is null!"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "classname":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    move v4, v6

    .line 285
    goto :goto_1
.end method

.method public hasConnectableAp()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 233
    const-string v0, "@M_WifiFwkExtOP01"

    const-string v1, "Scan for checking connectable AP."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCustomizedAutoConnect()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public hasNetworkSelection()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-super {p0}, Lcom/android/server/wifi/DefaultWifiFwkExt;->init()V

    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCm:Landroid/net/ConnectivityManager;

    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mAm:Landroid/app/ActivityManager;

    .line 51
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_type"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connect_reminder"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    .line 56
    new-instance v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;-><init>(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mConnectTypeObserver:Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;

    .line 57
    new-instance v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ReminderTypeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ReminderTypeObserver;-><init>(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderTypeObserver:Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ReminderTypeObserver;

    .line 58
    return-void
.end method

.method public isWifiConnecting(ILjava/util/List;)Z
    .locals 22
    .param p1, "connectingNetworkId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isWifiConnecting, mCellToWiFiPolicy:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", connectingNetworkId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v12, 0x0

    .line 78
    .local v12, "isConnecting":Z
    const/4 v2, 0x0

    .line 79
    .local v2, "autoConnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 80
    .local v10, "info":Landroid/net/NetworkInfo;
    if-nez v10, :cond_3

    .line 81
    const-string v18, "@M_WifiFwkExtOP01"

    const-string v19, "No active network."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    const/4 v7, 0x0

    .line 86
    .local v7, "highestPriorityNetworkSSID":Ljava/lang/String;
    const/4 v5, -0x1

    .line 87
    .local v5, "highestPriority":I
    const/4 v6, -0x1

    .line 88
    .local v6, "highestPriorityNetworkId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v14

    .line 89
    .local v14, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v16

    .line 90
    .local v16, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v14, :cond_4

    if-eqz v16, :cond_4

    .line 91
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 92
    .local v13, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 96
    .local v17, "scanresult":Landroid/net/wifi/ScanResult;
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 99
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v5, :cond_2

    .line 100
    iget v5, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 101
    iget v6, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 102
    iget-object v7, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 104
    :cond_2
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 105
    const/4 v12, 0x1

    goto :goto_1

    .line 83
    .end local v5    # "highestPriority":I
    .end local v6    # "highestPriorityNetworkId":I
    .end local v7    # "highestPriorityNetworkSSID":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v16    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v17    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_3
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Active network type:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 111
    .restart local v5    # "highestPriority":I
    .restart local v6    # "highestPriorityNetworkId":I
    .restart local v7    # "highestPriorityNetworkSSID":Ljava/lang/String;
    .restart local v14    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v16    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_4
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "highestPriorityNetworkId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriority:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", currentTimeMillis:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mSwitchSuspendTime:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mReminderType:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v12, :cond_5

    .line 118
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    if-nez v18, :cond_e

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 120
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/32 v20, 0x36ee80

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 124
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v18, "ssid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v18, "network_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isWifiConnecting, isConnecting:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", autoConnect:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v12, :cond_6

    if-eqz v2, :cond_12

    :cond_6
    const/16 v18, 0x1

    :goto_3
    return v18

    .line 130
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v5, -0x1

    .line 133
    const/4 v6, -0x1

    .line 134
    if-eqz v14, :cond_a

    if-eqz v16, :cond_a

    .line 135
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 136
    .restart local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->isDisableForFailure(I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 138
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 143
    .restart local v17    # "scanresult":Landroid/net/wifi/ScanResult;
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 146
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v5, :cond_9

    .line 147
    iget v5, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 148
    iget v6, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 149
    iget-object v7, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_4

    .line 156
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_a
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Mobile connected, highestPriorityNetworkId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriority:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 160
    const-string v18, "@M_WifiFwkExtOP01"

    const-string v19, "Enable all networks for mobile is connected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 164
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "cn":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 167
    .local v3, "classname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v15

    .line 168
    .local v15, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_c

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 169
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 171
    :cond_c
    if-eqz v4, :cond_d

    .line 172
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 173
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Class Name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_5
    const-string v18, "com.android.settings.Settings$WifiSettingsActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/32 v20, 0x36ee80

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReminderType:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 182
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.net.wifi.WIFI_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v11    # "intent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    const-string v18, "ssid"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v18, "network_id"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 175
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v18, "@M_WifiFwkExtOP01"

    const-string v19, "ComponentName is null!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 190
    .end local v3    # "classname":Ljava/lang/String;
    .end local v4    # "cn":Landroid/content/ComponentName;
    .end local v15    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 191
    const/4 v7, 0x0

    .line 192
    const/4 v5, -0x1

    .line 193
    const/4 v6, -0x1

    .line 194
    if-eqz v14, :cond_11

    if-eqz v16, :cond_11

    .line 195
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 196
    .restart local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->isDisableForFailure(I)Z

    move-result v18

    if-nez v18, :cond_f

    .line 198
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/ScanResult;

    .line 203
    .restart local v17    # "scanresult":Landroid/net/wifi/ScanResult;
    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    iget-object v0, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 206
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v5, :cond_10

    .line 207
    iget v5, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 208
    iget v6, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 209
    iget-object v7, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 216
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "scanresult":Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v18, "@M_WifiFwkExtOP01"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Mobile isn\'t connected, highestPriorityNetworkId:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriorityNetworkSSID:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", highestPriority:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 220
    const-string v18, "@M_WifiFwkExtOP01"

    const-string v19, "Enable all networks for mobile is not connected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 228
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method public shouldAutoConnect()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I

    if-nez v0, :cond_0

    .line 66
    const-string v0, "@M_WifiFwkExtOP01"

    const-string v1, "Should auto connect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 69
    :cond_0
    const-string v0, "@M_WifiFwkExtOP01"

    const-string v1, "Shouldn\'t auto connect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suspendNotification(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    .line 247
    :cond_0
    :goto_0
    const-string v0, "@M_WifiFwkExtOP01"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendNotification, mSwitchSuspendTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mReselectSuspendTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J

    goto :goto_0
.end method
