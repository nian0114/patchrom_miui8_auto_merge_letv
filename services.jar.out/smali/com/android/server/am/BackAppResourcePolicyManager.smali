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

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 45
    sput-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    .line 47
    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    .line 50
    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    .line 649
    sput-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "allowDelayBehindServices"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    .line 93
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mQueueName:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mDelayBehindServices:Z

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 97
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->initialize()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/BackAppResourcePolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 36
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
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    return-void
.end method

.method private checkNetworkConnect()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 651
    const/4 v3, 0x0

    .line 652
    .local v3, "ret":Z
    const/4 v4, 0x0

    .line 653
    .local v4, "wifiValidateState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 655
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 656
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_2

    .line 657
    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 658
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getWifiValidateState()Ljava/lang/String;

    move-result-object v4

    .line 659
    const-string v6, "ValidatedState"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 660
    const/4 v3, 0x1

    .line 668
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

    .line 669
    :cond_1
    if-eqz v3, :cond_4

    .line 672
    :goto_1
    return v5

    .line 662
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 663
    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v6, :cond_3

    .line 664
    new-instance v6, Landroid/net/NetSniffer;

    invoke-direct {v6}, Landroid/net/NetSniffer;-><init>()V

    sput-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    .line 665
    :cond_3
    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v7, "http://www.androidbak.net/generate_204"

    invoke-virtual {v6, v7}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 672
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
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

    .line 680
    const/4 v1, 0x0

    .line 689
    :goto_0
    return v1

    .line 682
    :cond_0
    if-eqz p1, :cond_2

    .line 683
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v1, :cond_1

    .line 684
    new-instance v1, Landroid/net/NetSniffer;

    invoke-direct {v1}, Landroid/net/NetSniffer;-><init>()V

    sput-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    .line 686
    :cond_1
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v2, "http://www.gmail.com"

    invoke-virtual {v1, v2}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v0

    .line 688
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

    .line 689
    goto :goto_0
.end method

.method private checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    .line 615
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v2, "recivers":Ljava/util/List;
    const/4 v3, 0x0

    .line 617
    .local v3, "spliteBroadcast":Lcom/android/server/am/BroadcastRecord;
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 618
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 619
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 620
    .local v4, "target":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 622
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 623
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

    .line 624
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 628
    .restart local v4    # "target":Ljava/lang/Object;
    :cond_2
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 629
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 630
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 631
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

    .line 632
    :cond_3
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 638
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 639
    invoke-virtual {p1, v2}, Lcom/android/server/am/BroadcastRecord;->spliteBroadcastRecord(Ljava/util/List;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 640
    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iput-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    .line 643
    :cond_5
    if-eqz p3, :cond_6

    if-eqz v3, :cond_6

    .line 644
    invoke-direct {p0, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    .line 646
    :cond_6
    return-object v3
.end method

.method private clearPendingBroadcast()V
    .locals 2

    .prologue
    .line 735
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 736
    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 737
    monitor-exit v1

    .line 738
    return-void

    .line 737
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
    .line 390
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 391
    .local v5, "uid":I
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 392
    .local v6, "pid":I
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 393
    .local v7, "adj":I
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 394
    .local v4, "procName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p2

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;Ljava/lang/String;IIIJZ)V

    .line 397
    .local v1, "info":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    if-eqz p3, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 741
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 742
    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    const-string v0, "com.android.systemui"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    .line 745
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

    .line 746
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 747
    monitor-exit v1

    .line 748
    return-void

    .line 747
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
    .line 697
    sget-boolean v0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    return v0
.end method

.method private getScreenOffDurationTime()J
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastScreenOnTime:J

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    sub-long/2addr v0, v2

    .line 455
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handlePendingBroadcast()V
    .locals 2

    .prologue
    .line 531
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/android/server/am/BackAppResourcePolicyManager$1;

    const-string v1, "pendingBroadCast"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager$1;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    .line 610
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 613
    :cond_0
    return-void
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    .line 512
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handlePendingBroadcast()V

    .line 806
    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    .line 807
    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    .line 808
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 809
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "BG_CONTROL_SWITCH"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 812
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    .line 813
    return-void
.end method

.method private isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 30
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 238
    const-wide/16 v4, 0x0

    .line 239
    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .line 240
    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .line 241
    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .line 242
    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .line 243
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

    .line 244
    .local v14, "_tag":Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v18

    .line 245
    .local v18, "isGoogleApp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 246
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v22, :cond_1

    .line 247
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_0

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_0

    const-string v23, "BackAppResourcePolicyManager"

    const-string v26, "LIMIT_APP: acquire wakelock: proc is null."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const/16 v23, 0x1

    .line 365
    :goto_0
    return v23

    .line 250
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

    .line 251
    .local v21, "isSystemApp":Z
    :goto_1
    const/4 v15, 0x5

    .line 252
    .local v15, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v24

    .line 253
    .local v24, "screenOffDurationTime":J
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .line 254
    .local v16, "bgDurationTime":J
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v19

    .line 255
    .local v19, "isGoogleNetwork":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v20

    .line 273
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

    .line 275
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

    .line 276
    const/16 v23, 0x0

    goto :goto_0

    .line 250
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

    .line 278
    .restart local v15    # "baseAdj":I
    .restart local v16    # "bgDurationTime":J
    .restart local v19    # "isGoogleNetwork":Z
    .restart local v20    # "isSleepTime":Z
    .restart local v21    # "isSystemApp":Z
    .restart local v24    # "screenOffDurationTime":J
    :cond_5
    const/16 v23, 0x1

    goto :goto_0

    .line 281
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v23

    if-nez v23, :cond_8

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-gtz v23, :cond_8

    .line 282
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

    .line 283
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_7

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_7

    .line 284
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

    .line 287
    :cond_7
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 288
    :cond_8
    if-nez v21, :cond_b

    const-wide/16 v26, 0x0

    cmp-long v23, v16, v26

    if-gtz v23, :cond_9

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_b

    .line 289
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

    .line 290
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_a

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_a

    .line 291
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

    .line 294
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 297
    :cond_b
    if-eqz v18, :cond_d

    if-nez v19, :cond_d

    .line 298
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

    .line 299
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_c

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_c

    .line 300
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

    .line 303
    :cond_c
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 306
    :cond_d
    if-eqz v20, :cond_15

    .line 307
    const-wide/16 v26, 0x2

    mul-long v26, v26, v10

    cmp-long v23, v24, v26

    if-lez v23, :cond_10

    .line 308
    const/16 v15, -0xb

    .line 346
    :cond_e
    :goto_2
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v0, v15, :cond_1d

    .line 347
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

    .line 349
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_f

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_f

    .line 350
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

    .line 355
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 309
    :cond_10
    cmp-long v23, v24, v10

    if-lez v23, :cond_11

    .line 310
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 311
    :cond_11
    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_12

    .line 312
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 314
    :cond_12
    cmp-long v23, v16, v10

    if-lez v23, :cond_13

    .line 315
    const/16 v15, -0xb

    goto/16 :goto_2

    .line 316
    :cond_13
    cmp-long v23, v16, v12

    if-lez v23, :cond_14

    .line 317
    const/16 v15, -0xb

    goto/16 :goto_2

    .line 318
    :cond_14
    cmp-long v23, v16, v6

    if-lez v23, :cond_e

    .line 319
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 323
    :cond_15
    const-wide/16 v26, 0x2

    mul-long v26, v26, v10

    cmp-long v23, v24, v26

    if-lez v23, :cond_16

    .line 324
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 325
    :cond_16
    cmp-long v23, v24, v12

    if-lez v23, :cond_18

    .line 326
    cmp-long v23, v16, v8

    if-lez v23, :cond_17

    .line 327
    const/4 v15, 0x2

    goto/16 :goto_2

    .line 329
    :cond_17
    const/4 v15, 0x3

    goto/16 :goto_2

    .line 330
    :cond_18
    cmp-long v23, v24, v4

    if-lez v23, :cond_1a

    .line 331
    cmp-long v23, v16, v10

    if-lez v23, :cond_19

    .line 332
    const/4 v15, 0x2

    goto/16 :goto_2

    .line 334
    :cond_19
    const/4 v15, 0x4

    goto/16 :goto_2

    .line 336
    :cond_1a
    cmp-long v23, v16, v10

    if-lez v23, :cond_1b

    .line 337
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 338
    :cond_1b
    cmp-long v23, v16, v12

    if-lez v23, :cond_1c

    .line 339
    const/4 v15, 0x2

    goto/16 :goto_2

    .line 340
    :cond_1c
    cmp-long v23, v16, v6

    if-lez v23, :cond_e

    .line 341
    const/4 v15, 0x3

    goto/16 :goto_2

    .line 358
    :cond_1d
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 359
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v23, :cond_1e

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_1e

    .line 360
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

    .line 365
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
    .line 184
    const v0, 0xa8c0

    .line 185
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

    .line 186
    .local v1, "_tag":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 187
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_2

    .line 188
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v8, :cond_0

    const-string v8, "BackAppResourcePolicyManager"

    const-string v9, "LIMIT_APP: delay alarm: proc is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 212
    .end local v0    # "HOUR_12":I
    :cond_1
    :goto_0
    return v0

    .line 192
    .restart local v0    # "HOUR_12":I
    :cond_2
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v4

    .line 193
    .local v4, "isGoogleNetwork":Z
    invoke-virtual {p0, v7}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    .line 194
    .local v2, "isBackGroundApp":Z
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 195
    .local v6, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v5

    .line 196
    .local v5, "isSleepTime":Z
    invoke-static {p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v3

    .line 198
    .local v3, "isGoogleApp":Z
    if-eqz v6, :cond_5

    if-eqz v3, :cond_5

    .line 199
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

    .line 200
    if-eqz v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 194
    .end local v3    # "isGoogleApp":Z
    .end local v5    # "isSleepTime":Z
    .end local v6    # "isSystemApp":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 199
    .restart local v3    # "isGoogleApp":Z
    .restart local v5    # "isSleepTime":Z
    .restart local v6    # "isSystemApp":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 201
    :cond_5
    if-eqz v6, :cond_6

    .line 202
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

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_6
    if-eqz v2, :cond_7

    .line 207
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

    .line 211
    :cond_7
    const/4 v8, 0x0

    invoke-direct {p0, v7, v1, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 212
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
    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .line 138
    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .line 139
    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .line 140
    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .line 141
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

    .line 143
    .local v14, "_tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v23

    .line 144
    .local v23, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v23, :cond_0

    if-nez p1, :cond_2

    .line 145
    :cond_0
    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v26, :cond_1

    sget-boolean v26, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v26, :cond_1

    const-string v26, "BackAppResourcePolicyManager"

    const-string v27, "LIMIT_APP: receive broadcast: proc is null, or action is null."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const/16 v26, 0x1

    .line 180
    :goto_0
    return v26

    .line 149
    :cond_2
    const/4 v15, 0x5

    .line 150
    .local v15, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v24

    .line 151
    .local v24, "screenOffDurationTime":J
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .line 152
    .local v16, "bgDurationTime":J
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v19

    .line 153
    .local v19, "isGoogleApp":Z
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v20

    .line 154
    .local v20, "isGoogleNetwork":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v18

    .line 155
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

    .line 156
    .local v22, "isSystemApp":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v21

    .line 159
    .local v21, "isSleepTime":Z
    if-nez v18, :cond_5

    .line 160
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

    .line 161
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

    .line 162
    :cond_3
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 155
    .end local v21    # "isSleepTime":Z
    .end local v22    # "isSystemApp":Z
    :cond_4
    const/16 v22, 0x0

    goto :goto_1

    .line 165
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

    .line 168
    :cond_6
    if-nez v22, :cond_a

    .line 169
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

    .line 170
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

    .line 171
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 173
    :cond_8
    const-string v26, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 174
    if-nez v20, :cond_a

    if-eqz v19, :cond_a

    .line 175
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

    .line 176
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

    .line 177
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 180
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
    .line 216
    iget-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 217
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v4, :cond_1

    .line 218
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v5, :cond_0

    const-string v5, "BackAppResourcePolicyManager"

    const-string v8, "LIMIT_APP: wifi scan: proc is null."

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    const/4 v5, 0x1

    .line 234
    :goto_0
    return v5

    .line 222
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

    .line 223
    .local v0, "_tag":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v6

    .line 224
    .local v6, "screenOffDurationTime":J
    invoke-virtual {p0, v4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 225
    .local v1, "isBackGroundApp":Z
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 226
    .local v3, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v2

    .line 228
    .local v2, "isSleepTime":Z
    if-nez v1, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 229
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

    .line 230
    const/4 v5, 0x0

    goto :goto_0

    .line 225
    .end local v2    # "isSleepTime":Z
    .end local v3    # "isSystemApp":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 233
    .restart local v2    # "isSleepTime":Z
    .restart local v3    # "isSystemApp":Z
    :cond_4
    const/4 v5, 0x0

    invoke-direct {p0, v4, v0, v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 234
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isGoogleApp(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, "isGoogleApp":Z
    sget-object v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v5

    .line 472
    :try_start_0
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 473
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 474
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 485
    .end local v2    # "isGoogleApp":Z
    .local v3, "isGoogleApp":Z
    :goto_0
    return v3

    .line 477
    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 478
    .local v0, "_pm":Landroid/content/pm/IPackageManager;
    const-string v4, "com.google.android.gms"

    invoke-interface {v0, v4, p0}, Landroid/content/pm/IPackageManager;->isSameSignsApps(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 483
    .end local v0    # "_pm":Landroid/content/pm/IPackageManager;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    monitor-exit v5

    move v3, v2

    .line 485
    .end local v2    # "isGoogleApp":Z
    .restart local v3    # "isGoogleApp":Z
    goto :goto_0

    .line 479
    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :catch_0
    move-exception v1

    .line 480
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

    .line 484
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
    .line 459
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 460
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 461
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 462
    .local v1, "curHour":I
    if-ltz v1, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 463
    const/4 v2, 0x1

    .line 466
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
    .line 489
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v1

    .line 490
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

    .line 491
    :cond_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
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
    .line 752
    sget-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 753
    :try_start_0
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 754
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 755
    .local v1, "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-ne v2, v4, :cond_1

    .line 756
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
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

    .line 758
    :cond_0
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 759
    const/4 v2, 0x1

    monitor-exit v3

    .line 765
    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :goto_1
    return v2

    .line 753
    .restart local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 763
    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    monitor-exit v3

    .line 765
    const/4 v2, 0x0

    goto :goto_1

    .line 763
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
    .line 693
    sput-boolean p0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    .line 694
    return-void
.end method

.method private final syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 701
    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "replaced":Z
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    if-eqz v1, :cond_1

    .line 704
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    .line 706
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

    .line 707
    :cond_0
    if-nez v0, :cond_1

    .line 708
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 709
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 720
    :cond_1
    :goto_0
    monitor-exit v2

    .line 721
    const/4 v1, 0x1

    return v1

    .line 712
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    .line 713
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

    .line 714
    :cond_3
    if-nez v0, :cond_1

    .line 715
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 716
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .line 720
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
    .line 496
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLockedInternal()V

    .line 497
    return-void
.end method

.method private updateSettingsLockedInternal()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BG_CONTROL_SWITCH"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 516
    .local v0, "bgControl":I
    if-ne v0, v1, :cond_1

    move v3, v1

    :goto_0
    sput-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    .line 517
    if-ne v0, v1, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    .line 518
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

    .line 521
    .end local v0    # "bgControl":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "bgControl":I
    :cond_1
    move v3, v2

    .line 516
    goto :goto_0

    :cond_2
    move v1, v2

    .line 517
    goto :goto_1

    .line 519
    .end local v0    # "bgControl":I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private wakeUpPendingTask()V
    .locals 5

    .prologue
    .line 725
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 727
    :try_start_0
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 732
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
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

    .line 731
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

    .line 405
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 407
    const-string v3, "  Allowed Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
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

    .line 415
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

    .line 416
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    .end local v0    # "allowedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 426
    const-string v3, "  Rejected Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
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

    .line 434
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

    .line 435
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 442
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
    .line 524
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 526
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 527
    return-void
.end method

.method public hasRanCtsOrCta(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 840
    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    if-nez v1, :cond_1

    .line 842
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.letv.leui.cta"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 844
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "com.android.cts."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    sput-boolean v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 852
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    :cond_1
    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    return v1

    .line 846
    :catch_0
    move-exception v0

    .line 847
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

    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "isAllow":I
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->hasRanCtsOrCta(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    packed-switch p5, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->hasRanCtsOrCta(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    :cond_1
    const/4 v1, 0x2

    if-ne p5, v1, :cond_a

    .line 127
    const/4 v0, 0x0

    .line 132
    :cond_2
    :goto_1
    return v0

    .line 109
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 110
    :goto_2
    goto :goto_0

    :cond_3
    move v0, v2

    .line 109
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    .line 112
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowReceiveBroadcast(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 113
    :goto_3
    goto :goto_0

    :cond_5
    move v0, v2

    .line 112
    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_3

    .line 115
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowPendingAlarm(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 116
    :goto_4
    goto :goto_0

    :cond_7
    move v0, v2

    .line 115
    goto :goto_4

    .line 118
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowWifiScan(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    .line 119
    :goto_5
    goto :goto_0

    :cond_8
    move v0, v2

    .line 118
    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_5

    .line 129
    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    .line 107
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
    .line 445
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

    .line 446
    const/4 v0, 0x1

    .line 448
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
    .line 860
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->noteAppReacquireWakeLock(IZ)V

    .line 863
    :cond_0
    return-void
.end method

.method public noteBackgroundApp(I)V
    .locals 7
    .param p1, "lastFocusedUid"    # I

    .prologue
    .line 769
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    .line 770
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 771
    .local v1, "curFocusedUid":I
    if-eq v1, p1, :cond_6

    .line 772
    const/4 v3, 0x0

    .line 773
    .local v3, "isNote":Z
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 774
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 775
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_4

    .line 776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastBgTime(J)V

    .line 777
    if-nez v3, :cond_3

    .line 778
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_0

    .line 779
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

    .line 781
    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_2

    .line 782
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_1

    .line 783
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

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    .line 787
    :cond_2
    const/4 v3, 0x1

    .line 773
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 789
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_3

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastFgTime(J)V

    .line 792
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_3

    .line 793
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v4, :cond_5

    .line 794
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

    .line 795
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    goto :goto_1

    .line 802
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
    .line 53
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 54
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

    .line 55
    :cond_0
    if-nez v1, :cond_2

    .line 56
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_1

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: mConnMgr is NULL."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 59
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    .line 60
    .local v2, "replaced":Z
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 61
    :cond_3
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_4

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: active networkInfo isn\'t available."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->clearPendingBroadcast()V

    .line 63
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V

    .line 64
    iget-boolean v3, p3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-eqz v3, :cond_6

    .line 65
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    .line 66
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

    .line 67
    :cond_5
    if-nez v2, :cond_1

    .line 68
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 69
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    .line 73
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

    .line 74
    :cond_7
    if-nez v2, :cond_1

    .line 75
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 76
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .line 80
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->replacePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v2

    .line 81
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

    .line 82
    :cond_9
    if-nez v2, :cond_a

    .line 83
    invoke-direct {p0, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 85
    :cond_a
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    .line 86
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v3, :cond_1

    const-string v3, "BackAppResourcePolicyManager"

    const-string v4, "LIMIT_APP: finish enqueuePendingBroadcastLocked and wakeup Pending Task."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
