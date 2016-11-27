.class public Lcom/android/server/operator/op01/ConnectivityServiceExt;
.super Lcom/android/server/operator/DefaultConnectivityServiceExt;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/operator/op01/ConnectivityServiceExt$1;,
        Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;,
        Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CMCC_MUSIC_RETRY:Ljava/lang/String; = "android.intent.action.EMMRRS_PS_RESUME"

.field private static final ACTION_PREBOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_PREBOOT_IPO"

.field private static final ACTION_PS_STATE_RESUMED:Ljava/lang/String; = "com.mtk.ACTION_PS_STATE_RESUMED"

.field public static final ACTION_SET_PACKETS_FLUSH:Ljava/lang/String; = "com.android.internal.ACTION_SET_PACKETS_FLUSH"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_SUBLIST_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field private static final MTK_TAG:Ljava/lang/String; = "CDS/ConnectivityServiceExt"

.field private static final WIFI_CONNECT_REMINDER_ALWAYS:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

.field private mIsRebooting:Z

.field private mPsNetworkType:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubIdList:[J

.field private mSynchronizedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/operator/DefaultConnectivityServiceExt;-><init>()V

    iput-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mSubIdList:[J

    iput-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    iput v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I

    iput-boolean v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mIsRebooting:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/operator/op01/ConnectivityServiceExt;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;

    .prologue
    iget-object v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/operator/op01/ConnectivityServiceExt;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mIsRebooting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/operator/op01/ConnectivityServiceExt;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;

    .prologue
    invoke-direct {p0}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->onSubInfoUpdated()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/operator/op01/ConnectivityServiceExt;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;

    .prologue
    iget v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/operator/op01/ConnectivityServiceExt;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mPsNetworkType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/operator/op01/ConnectivityServiceExt;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;

    .prologue
    iget-object v0, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isPsDataAvailable()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .local v9, "telMgr":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    const-string v11, "@M_CDS/ConnectivityServiceExt"

    const-string v12, "TelephonyManager is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/4 v5, 0x0

    .local v5, "isSIMReady":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .local v6, "n":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    invoke-virtual {v9, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3

    const/4 v5, 0x1

    :cond_2
    const-string v12, "@M_CDS/ConnectivityServiceExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isSIMReady: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .local v3, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_4

    const-string v11, "@M_CDS/ConnectivityServiceExt"

    const-string v12, "ITelephony is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .restart local v3    # "iTel":Lcom/android/internal/telephony/ITelephony;
    :cond_4
    iget-object v12, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .local v8, "subMgr":Landroid/telephony/SubscriptionManager;
    if-nez v8, :cond_5

    const-string v11, "@M_CDS/ConnectivityServiceExt"

    const-string v12, "SubscriptionManager is null"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v7

    .local v7, "subIdList":[I
    const/4 v6, 0x0

    if-eqz v7, :cond_6

    array-length v6, v7

    :cond_6
    const/4 v4, 0x0

    .local v4, "isRadioOn":Z
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_7

    :try_start_0
    aget v12, v7, v2

    iget-object v13, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    if-nez v4, :cond_9

    const-string v11, "@M_CDS/ConnectivityServiceExt"

    const-string v12, "All sub Radio OFF"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v12, "@M_CDS/ConnectivityServiceExt"

    const-string v13, "isRadioOnForSubscriber RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    iget-object v12, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "airplanMode":I
    const-string v12, "@M_CDS/ConnectivityServiceExt"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "airplanMode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v11, :cond_0

    move v10, v11

    goto/16 :goto_0
.end method

.method private onSubInfoUpdated()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    aget-object v5, v5, v1

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;->setSubId(I)V

    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    if-nez v3, :cond_2

    const-string v5, "@M_CDS/ConnectivityServiceExt"

    const-string v6, "SubscriptionManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .local v2, "subIdList":[I
    const/4 v0, 0x0

    .local v0, "count":I
    if-eqz v2, :cond_3

    array-length v0, v2

    :cond_3
    if-lez v0, :cond_1

    new-array v5, v0, [Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    iput-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    new-instance v6, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    aget v7, v2, v1

    invoke-direct {v6, p0, v7}, Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;-><init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;I)V

    aput-object v6, v5, v1

    iget-object v5, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mDataStateListeners:[Lcom/android/server/operator/op01/ConnectivityServiceExt$DataStateListener;

    aget-object v5, v5, v1

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private turnOffDataConnection()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "telMgr":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "last_simid_before_wifi_disconnected"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    :goto_1
    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method


# virtual methods
.method public UserPrompt()V
    .locals 10

    .prologue
    iget-object v7, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_connect_reminder"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, "isAsking":I
    if-eqz v5, :cond_1

    const-string v7, "@M_CDS/ConnectivityServiceExt"

    const-string v8, "Not ask mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mIsRebooting:Z

    if-eqz v7, :cond_2

    const-string v7, "@M_CDS/ConnectivityServiceExt"

    const-string v8, "IPO rebooting, skip datadialog"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->isPsDataAvailable()Z

    move-result v1

    .local v1, "dataAvailable":Z
    const-string v7, "@M_CDS/ConnectivityServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataAvailable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->turnOffDataConnection()V

    const-string v7, "wifi"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v6

    .local v6, "wifiService":Landroid/net/wifi/IWifiManager;
    const/4 v3, 0x0

    .local v3, "hasConnectableAP":Z
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/net/wifi/IWifiManager;->hasConnectableAp()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_3
    :goto_1
    const-string v7, "@M_CDS/ConnectivityServiceExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasConnectableAP: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "i":Landroid/content/Intent;
    const-string v7, "simId"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "@M_CDS/ConnectivityServiceExt"

    const-string v8, "Send ACTION_WIFI_FAILOVER_GPRS_DIALOG intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "@M_CDS/ConnectivityServiceExt"

    const-string v8, "hasConnectableAp failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.mtk.ACTION_PS_STATE_RESUMED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EMMRRS_PS_RESUME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.ACTION_SET_PACKETS_FLUSH"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;-><init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;Lcom/android/server/operator/op01/ConnectivityServiceExt$1;)V

    iput-object v2, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;

    const-string v2, "@M_CDS/ConnectivityServiceExt"

    const-string v3, "Init done in ConnectivityServiceExt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isControlBySetting(II)Z
    .locals 3
    .param p1, "netType"    # I
    .param p2, "radio"    # I

    .prologue
    const-string v0, "@M_CDS/ConnectivityServiceExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isControlBySetting: netType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " readio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
