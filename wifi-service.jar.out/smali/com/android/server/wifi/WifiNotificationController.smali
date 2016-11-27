.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$2;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080852

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiNotificationController"


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mShowReselectDialog:Z

.field private mWaitForScanResult:Z

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 13
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v12, 0x3

    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    if-ne v9, v12, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .local v7, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "WifiNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndSetNotification, mWaitForScanResult:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v9, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    :cond_3
    const-string v9, "WifiNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndSetNotification, state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v9, :cond_4

    sget-object v9, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v7, v9, :cond_9

    :cond_4
    if-eqz p2, :cond_9

    const/4 v5, 0x0

    .local v5, "numOpenNetworks":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[ESS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v6    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_6
    const-string v9, "wifi"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .local v8, "wifiService":Landroid/net/wifi/IWifiManager;
    const/4 v4, -0x1

    .local v4, "networkId":I
    if-eqz v8, :cond_7

    :try_start_2
    invoke-interface {v8}, Landroid/net/wifi/IWifiManager;->syncGetConnectingNetworkId()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    :cond_7
    :goto_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v4}, Lcom/android/server/wifi/WifiStateMachine;->isWifiConnecting(I)Z

    move-result v3

    .local v3, "isConnecting":Z
    const-string v9, "WifiNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connecting networkId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isConnecting:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v3, :cond_0

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v9, :cond_8

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    :cond_8
    const-string v9, "WifiNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Open network num:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_9

    iget v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-lt v9, v12, :cond_0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v9, v5, v10, v11}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "isConnecting":Z
    .end local v4    # "networkId":I
    .end local v5    # "numOpenNetworks":I
    .end local v7    # "state":Landroid/net/NetworkInfo$State;
    .end local v8    # "wifiService":Landroid/net/wifi/IWifiManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v4    # "networkId":I
    .restart local v5    # "numOpenNetworks":I
    .restart local v7    # "state":Landroid/net/NetworkInfo$State;
    .restart local v8    # "wifiService":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "WifiNotificationController"

    const-string v10, "syncGetConnectingNetworkId failed!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v4    # "networkId":I
    .end local v5    # "numOpenNetworks":I
    .end local v8    # "wifiService":Landroid/net/wifi/IWifiManager;
    :cond_9
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private isDataAvailable()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v4, :cond_1

    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v5

    .restart local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .local v1, "isSim1Insert":Z
    const/4 v2, 0x0

    .local v2, "isSim2Insert":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0

    .end local v1    # "isSim1Insert":Z
    .end local v2    # "isSim2Insert":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "WifiNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get phone service, error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v10, 0x0

    const v9, 0x1080852

    const/4 v8, 0x0

    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v4, :cond_2

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v10, v10, v8, v6}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140005

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140006

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    :goto_1
    const-string v4, "WifiNotificationController"

    const-string v5, "Pop up notification, mNotificationBuilder.setSound"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v9, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v1
    .end local v3    # "title":Ljava/lang/CharSequence;
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto/16 :goto_0

    .restart local v0    # "details":Ljava/lang/CharSequence;
    .restart local v1
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_1

    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v1
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_4
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v9, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2
.end method

.method private showSwitchDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->isDataAvailable()Z

    move-result v1

    .local v1, "isDataAvailable":Z
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSwitchDialog, isDataAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mShowReselectDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setWaitForScanResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    return-void
.end method
