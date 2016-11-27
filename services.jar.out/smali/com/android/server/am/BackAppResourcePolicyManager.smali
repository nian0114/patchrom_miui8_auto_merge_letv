.class public final Lcom/android/server/am/BackAppResourcePolicyManager;
.super Ljava/lang/Object;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;,
        Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;,
        Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    }
.end annotation


# static fields
.field private static final NETWORK_VALIDATED_STATE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BackAppResourcePolicyManager"

.field static isOverseaNetStatus:Z

.field private static final mApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static mHasRanCtsOrCta:Z

.field static mNetSniffer:Landroid/net/NetSniffer;

.field static mObject:Ljava/lang/Object;

.field static mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field static mThread:Ljava/lang/Thread;


# instance fields
.field public mAllowedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mDelayBehindServices:Z

.field private mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

.field private mPowerManager:Landroid/os/PowerManager;

.field final mQueueName:Ljava/lang/String;

.field public mRejectedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    sput-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    sput-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "allowDelayBehindServices"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mQueueName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mDelayBehindServices:Z

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/BackAppResourcePolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkNetworkConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    return-void
.end method

.method private checkNetworkConnect()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .local v3, "ret":Z
    const/4 v4, 0x0

    .local v4, "wifiValidateState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_2

    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getWifiValidateState()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ValidatedState"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    .end local v2    # "mConnMgr":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v6, :cond_1

    const-string v6, "BackAppResourcePolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LIMIT_APP: call end contecet http://http://www.androidbak.net/generate_204 ret :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v3, :cond_4

    :goto_1
    return v5

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v6, :cond_3

    new-instance v6, Landroid/net/NetSniffer;

    invoke-direct {v6}, Landroid/net/NetSniffer;-><init>()V

    sput-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    :cond_3
    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v7, "http://www.androidbak.net/generate_204"

    invoke-virtual {v6, v7}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/4 v0, 0x0

    .local v0, "oversearet":Z
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v1, :cond_1

    new-instance v1, Landroid/net/NetSniffer;

    invoke-direct {v1}, Landroid/net/NetSniffer;-><init>()V

    sput-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    :cond_1
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v2, "http://www.gmail.com"

    invoke-virtual {v1, v2}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_3

    const-string v1, "BackAppResourcePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: call checkGNetworkConnect end contecet http://www.gmail.com after ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "recivers":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "spliteBroadcast":Lcom/android/server/am/BroadcastRecord;
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .local v4, "target":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_0

    const-string v5, "BackAppResourcePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LIMIT_APP: BroadcastFilter reciver pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .restart local v4    # "target":Ljava/lang/Object;
    :cond_2
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_3

    const-string v5, "BackAppResourcePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LIMIT_APP: ResolveInfo reciver pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v2}, Lcom/android/server/am/BroadcastRecord;->spliteBroadcastRecord(Ljava/util/List;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iput-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    :cond_5
    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    invoke-direct {p0, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    :cond_6
    return-object v3
.end method

.method private clearPendingBroadcast()V
    .locals 2

    .prologue
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "rejected"    # Z

    .prologue
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .local v5, "uid":I
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .local v6, "pid":I
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .local v7, "adj":I
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .local v4, "procName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p2

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;Ljava/lang/String;IIIJZ)V

    .local v1, "info":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v0, :cond_0

    const-string v0, "BackAppResourcePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: mPendingBroadcasts total size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getOverseaNetStatus()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    return v0
.end method

.method private getScreenOffDurationTime()J
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastScreenOnTime:J

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handlePendingBroadcast()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/BackAppResourcePolicyManager$1;

    const-string v1, "pendingBroadCast"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager$1;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handlePendingBroadcast()V

    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "BG_CONTROL_SWITCH"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    return-void
.end method

.method private isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 30
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .local v10, "MIN_15":J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wake lock:"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_tag":Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v18

    .local v18, "isGoogleApp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v22, :cond_1

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_0

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_0

    const-string v23, "BackAppResourcePolicyManager"

    const-string v26, "LIMIT_APP: acquire wakelock: proc is null."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v23, 0x1

    :goto_0
    return v23

    :cond_1
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_3

    const/16 v21, 0x1

    .local v21, "isSystemApp":Z
    :goto_1
    const/4 v15, 0x5

    .local v15, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v24

    .local v24, "screenOffDurationTime":J
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .local v16, "bgDurationTime":J
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v19

    .local v19, "isGoogleNetwork":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v20

    .local v20, "isSleepTime":Z
    const/16 v23, 0x2710

    move/from16 v0, p3

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_6

    const-string v23, "android"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    if-nez v18, :cond_6

    :cond_2
    const-string v23, "*backup*"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    if-nez v19, :cond_5

    const-string v23, "android"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    goto :goto_0

    .end local v15    # "baseAdj":I
    .end local v16    # "bgDurationTime":J
    .end local v19    # "isGoogleNetwork":Z
    .end local v20    # "isSleepTime":Z
    .end local v21    # "isSystemApp":Z
    .end local v24    # "screenOffDurationTime":J
    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .restart local v15    # "baseAdj":I
    .restart local v16    # "bgDurationTime":J
    .restart local v19    # "isGoogleNetwork":Z
    .restart local v20    # "isSleepTime":Z
    .restart local v21    # "isSystemApp":Z
    .restart local v24    # "screenOffDurationTime":J
    :cond_5
    const/16 v23, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v23

    if-nez v23, :cond_8

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_8

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|FgApp|ScreenOff#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_7

    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: acquire wakelock allow: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tag = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|FgApp|ScreenOff#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v21, :cond_b

    const-wide/16 v26, 0x0

    cmp-long v23, v16, v26

    if-gtz v23, :cond_9

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_b

    :cond_9
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|third app|ScreenOff#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_a

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_a

    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tag = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|third app|ScreenOff#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v18, :cond_d

    if-nez v19, :cond_d

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|AvailableNet#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|NotGoogleNet|GoogleApp"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_c

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_c

    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tag = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|AvailableNet#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|NotGoogleNet|GoogleApp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_d
    if-eqz v20, :cond_15

    const-wide/16 v26, 0x2

    mul-long v26, v26, v10

    cmp-long v23, v24, v26

    if-lez v23, :cond_10

    const/16 v15, -0xb

    :cond_e
    :goto_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v0, v15, :cond_1d

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|baseAdj#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|BgTime#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|Sleep#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|ScreenOff#"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_f

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_f

    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tag = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|baseAdj#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|BgTime#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|Sleep#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|ScreenOff#"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", procName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", pid = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", procAdj = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_10
    cmp-long v23, v24, v10

    if-lez v23, :cond_11

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_11
    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_12

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_12
    cmp-long v23, v16, v10

    if-lez v23, :cond_13

    const/16 v15, -0xb

    goto/16 :goto_2

    :cond_13
    cmp-long v23, v16, v12

    if-lez v23, :cond_14

    const/16 v15, -0xb

    goto/16 :goto_2

    :cond_14
    cmp-long v23, v16, v6

    if-lez v23, :cond_e

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_15
    const-wide/16 v26, 0x2

    mul-long v26, v26, v10

    cmp-long v23, v24, v26

    if-lez v23, :cond_16

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_16
    cmp-long v23, v24, v12

    if-lez v23, :cond_18

    cmp-long v23, v16, v8

    if-lez v23, :cond_17

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_17
    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_18
    cmp-long v23, v24, v4

    if-lez v23, :cond_1a

    cmp-long v23, v16, v10

    if-lez v23, :cond_19

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_19
    const/4 v15, 0x4

    goto/16 :goto_2

    :cond_1a
    cmp-long v23, v16, v10

    if-lez v23, :cond_1b

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_1b
    cmp-long v23, v16, v12

    if-lez v23, :cond_1c

    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_1c
    cmp-long v23, v16, v6

    if-lez v23, :cond_e

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_1d
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_1e

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_1e

    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: acquire wakelock allow: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tag = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", procName = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", pid = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", procAdj = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", baseAdj = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isSleepTime = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", screenOffTime = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    div-long v28, v24, v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method private isAllowPendingAlarm(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const v0, 0xa8c0

    .local v0, "HOUR_12":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delay alarm:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_tag":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_2

    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v8, :cond_0

    const-string v8, "BackAppResourcePolicyManager"

    const-string v9, "LIMIT_APP: delay alarm: proc is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "HOUR_12":I
    :cond_1
    :goto_0
    return v0

    .restart local v0    # "HOUR_12":I
    :cond_2
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v4

    .local v4, "isGoogleNetwork":Z
    invoke-virtual {p0, v7}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    .local v2, "isBackGroundApp":Z
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .local v6, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v5

    .local v5, "isSleepTime":Z
    invoke-static {p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v3

    .local v3, "isGoogleApp":Z
    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|SystemApp|GoogleApp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-direct {p0, v7, v9, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .end local v3    # "isGoogleApp":Z
    .end local v5    # "isSleepTime":Z
    .end local v6    # "isSystemApp":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .restart local v3    # "isGoogleApp":Z
    .restart local v5    # "isSleepTime":Z
    .restart local v6    # "isSystemApp":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|SystemApp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|BgApp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    invoke-direct {p0, v7, v1, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllowReceiveBroadcast(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 29
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    const-wide/16 v4, 0x0

    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .local v10, "MIN_15":J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "broadcast:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .local v23, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v26, :cond_1

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v26, :cond_1

    const-string v26, "BackAppResourcePolicyManager"

    const-string v27, "LIMIT_APP: receive broadcast: proc is null, or action is null."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v26, 0x1

    :goto_0
    return v26

    :cond_2
    const/4 v15, 0x5

    .local v15, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v24

    .local v24, "screenOffDurationTime":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .local v16, "bgDurationTime":J
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v19

    .local v19, "isGoogleApp":Z
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v20

    .local v20, "isGoogleNetwork":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    .local v18, "isBackGroundApp":Z
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    const/16 v22, 0x1

    .local v22, "isSystemApp":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v21

    .local v21, "isSleepTime":Z
    if-nez v18, :cond_5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|FgApp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v26, :cond_3

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v26, :cond_3

    const-string v26, "BackAppResourcePolicyManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "LIMIT_APP: receive broadcast allow: pkg = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", _tag = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "|FgApp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v26, 0x1

    goto/16 :goto_0

    .end local v21    # "isSleepTime":Z
    .end local v22    # "isSystemApp":Z
    :cond_4
    const/16 v22, 0x0

    goto :goto_1

    .restart local v21    # "isSleepTime":Z
    .restart local v22    # "isSystemApp":Z
    :cond_5
    const-string v26, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "android.intent.action.BATTERY_OKAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_6
    if-nez v22, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "|3rdApp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v26, :cond_7

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v26, :cond_7

    const-string v26, "BackAppResourcePolicyManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "LIMIT_APP: receive broadcast reject: pkg = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", _tag = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "|3rdApp"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v26, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    if-nez v20, :cond_a

    if-eqz v19, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " |NotGoogleNet|GoogleApp|AvailableNet"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v26, :cond_9

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v26, :cond_9

    const-string v26, "BackAppResourcePolicyManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "LIMIT_APP: receive broadcast reject: pkg = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", _tag = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " |NotGoogleNet|GoogleApp|AvailableNet"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v26, 0x1

    goto/16 :goto_0
.end method

.method private isAllowWifiScan(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_1

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v5, :cond_0

    const-string v5, "BackAppResourcePolicyManager"

    const-string v8, "LIMIT_APP: wifi scan: proc is null."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi scan:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_tag":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v6

    .local v6, "screenOffDurationTime":J
    invoke-virtual {p0, v4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .local v1, "isBackGroundApp":Z
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .local v3, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v2

    .local v2, "isSleepTime":Z
    if-nez v1, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|BgApp#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "|ScreenOff#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct {p0, v4, v5, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    goto :goto_0

    .end local v2    # "isSleepTime":Z
    .end local v3    # "isSystemApp":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .restart local v2    # "isSleepTime":Z
    .restart local v3    # "isSystemApp":Z
    :cond_4
    const/4 v5, 0x0

    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isGoogleApp(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "isGoogleApp":Z
    sget-object v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .end local v2    # "isGoogleApp":Z
    .local v3, "isGoogleApp":Z
    :goto_0
    return v3

    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .local v0, "_pm":Landroid/content/pm/IPackageManager;
    const-string v4, "com.google.android.gms"

    invoke-interface {v0, v4, p0}, Landroid/content/pm/IPackageManager;->isSameSignsApps(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .end local v0    # "_pm":Landroid/content/pm/IPackageManager;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    move v3, v2

    .end local v2    # "isGoogleApp":Z
    .restart local v3    # "isGoogleApp":Z
    goto :goto_0

    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "BackAppResourcePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isGoogleApp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private isSleepTime()Z
    .locals 3

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .local v1, "curHour":I
    if-ltz v1, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "curHour":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removeAppHashMap(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v0, :cond_0

    const-string v0, "BackAppResourcePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: remove uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from mApps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final replacePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    sget-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .local v1, "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-ne v2, v4, :cond_1

    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_0

    const-string v2, "BackAppResourcePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: dropping pending ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    monitor-exit v3

    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :goto_1
    return v2

    .restart local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static setOverseaNetStatus(Z)V
    .locals 0
    .param p0, "allow"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    return-void
.end method

.method private final syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    const/4 v0, 0x0

    .local v0, "replaced":Z
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_0

    const-string v1, "BackAppResourcePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIMIT_APP: pending broadcast replaced = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    :cond_1
    :goto_0
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_3

    const-string v1, "BackAppResourcePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIMIT_APP: pending broadcast replaced = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSettingsLocked()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLockedInternal()V

    return-void
.end method

.method private updateSettingsLockedInternal()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BG_CONTROL_SWITCH"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "bgControl":I
    if-ne v0, v1, :cond_1

    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-ne v0, v1, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_0

    const-string v1, "BackAppResourcePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: bgControl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBGControlOpen == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBGControlBroadcastOpen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bgControl":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "bgControl":I
    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .end local v0    # "bgControl":I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private wakeUpPendingTask()V
    .locals 5

    .prologue
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_0

    const-string v1, "BackAppResourcePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIMIT_APP: exception happens, mPendingBroadcasts\' size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dumpReqResProcesses(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Allowed Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;

    .local v0, "allowedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "allowedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Rejected Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;

    .local v2, "rejectedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rejectedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    :cond_1
    return-void
.end method

.method public handleNetworkValidatedState(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isInnerBg"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public hasRanCtsOrCta(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.letv.leui.cta"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "com.android.cts."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAllowAcquireResource(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "resourceType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x1

    .local v0, "isAllow":I
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->hasRanCtsOrCta(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    packed-switch p5, :pswitch_data_0

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->hasRanCtsOrCta(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    if-ne p5, v1, :cond_a

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowReceiveBroadcast(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowPendingAlarm(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    :goto_4
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowWifiScan(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    :goto_5
    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isBgProc(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noteAppReacquireWakeLock(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "resumed"    # Z

    .prologue
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->noteAppReacquireWakeLock(IZ)V

    :cond_0
    return-void
.end method

.method public noteBackgroundApp(I)V
    .locals 7
    .param p1, "lastFocusedUid"    # I

    .prologue
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .local v1, "curFocusedUid":I
    if-eq v1, p1, :cond_6

    const/4 v3, 0x0

    .local v3, "isNote":Z
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastBgTime(J)V

    if-nez v3, :cond_3

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_0

    const-string v4, "BackAppResourcePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LIMIT_APP: is not system app"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1

    const-string v4, "BackAppResourcePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LIMIT_APP: noteBackgroundapp background app.info.uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastFgTime(J)V

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    const-string v4, "BackAppResourcePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LIMIT_APP: noteBackgroundapp forceground app.info.uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    goto :goto_1

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "curFocusedUid":I
    .end local v2    # "i":I
    .end local v3    # "isNote":Z
    :cond_6
    return-void
.end method

.method public pendingBroadcastLocked(Landroid/content/Context;Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p3, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "mConnMgr":Landroid/net/ConnectivityManager;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_0

    const-string v3, "BackAppResourcePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: call check connectivity, mConnMgr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_1

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: mConnMgr is NULL."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .local v2, "replaced":Z
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_4

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: active networkInfo isn\'t available."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->clearPendingBroadcast()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V

    iget-boolean v3, p3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-eqz v3, :cond_6

    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_5

    const-string v3, "BackAppResourcePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: replaceOrdered, replaced = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v2, :cond_1

    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_7

    const-string v3, "BackAppResourcePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: replaceParallel, replaced = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez v2, :cond_1

    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    invoke-virtual {p2}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->replacePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_9

    const-string v3, "BackAppResourcePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: replacePending, replaced = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", r.inMOrderedBroadcasts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v2, :cond_a

    invoke-direct {p0, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_1

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: finish enqueuePendingBroadcastLocked and wakeup Pending Task."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
