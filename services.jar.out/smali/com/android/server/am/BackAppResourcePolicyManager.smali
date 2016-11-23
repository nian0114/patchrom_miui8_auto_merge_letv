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
.field private static final DEFAULT_APP_WHITE_LIST:[Ljava/lang/String;

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
.field mAllowSetBackLight:Z

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

.field private mBgGPSResourcePolicy:Lcom/android/server/am/BgGPSResourcePolicy;

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

.field private mWhitelistApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 60
    sput-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    .line 62
    sput-boolean v2, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    .line 65
    sput-boolean v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    .line 124
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.bbm"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.tumblr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.discord"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.nimbuzz"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.hi5.app"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.pinterest"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.kakao.talk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.viber.voip"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.kakao.talk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cn.ledongli.ldl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.skype.raider"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.quora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.facebook.orca"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "org.telegram.plus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.facebook.lite"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.groupme.android"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.snapchat.android"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.linkedin.android"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.instagram.android"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "jp.naver.line.android"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.imo.android.imoim"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hko.MyObservatory_v1_0"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.glidetalk.glideapp"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.jiochat.jiochatapp"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "org.telegram.messenger"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.imo.android.imoimbeta"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.eg.android.AlipayGphone"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.google.android.apps.plus"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.yahoo.mobile.client.android.im"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.yahoo.mobile.client.android.weather"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->DEFAULT_APP_WHITE_LIST:[Ljava/lang/String;

    .line 731
    sput-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "allowDelayBehindServices"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowSetBackLight:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mBgGPSResourcePolicy:Lcom/android/server/am/BgGPSResourcePolicy;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mWhitelistApp:Ljava/util/HashSet;

    .line 82
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 83
    iput-object p2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mQueueName:Ljava/lang/String;

    .line 84
    iput-boolean p3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mDelayBehindServices:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 86
    new-instance v0, Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/BgGPSResourcePolicy;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mBgGPSResourcePolicy:Lcom/android/server/am/BgGPSResourcePolicy;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->initialize()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/BackAppResourcePolicyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 51
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
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcasts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->clearPendingBroadcast()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BackAppResourcePolicyManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BackAppResourcePolicyManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    return-void
.end method

.method private checkNetworkConnect()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 733
    const/4 v3, 0x0

    .line 734
    .local v3, "ret":Z
    const/4 v4, 0x0

    .line 735
    .local v4, "wifiValidateState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 737
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 738
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 739
    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 740
    .local v2, "mConnMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getWifiValidateState()Ljava/lang/String;

    move-result-object v4

    .line 741
    const-string v6, "ValidatedState"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 742
    const/4 v3, 0x1

    .line 750
    .end local v2    # "mConnMgr":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
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

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    if-eqz v3, :cond_3

    .line 754
    :goto_1
    return v5

    .line 744
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 745
    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v6, :cond_2

    .line 746
    new-instance v6, Landroid/net/NetSniffer;

    invoke-direct {v6}, Landroid/net/NetSniffer;-><init>()V

    sput-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    .line 747
    :cond_2
    sget-object v6, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v7, "http://www.androidbak.net/generate_204"

    invoke-virtual {v6, v7}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 754
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 761
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

    .line 762
    const/4 v1, 0x0

    .line 771
    :goto_0
    return v1

    .line 764
    :cond_0
    if-eqz p1, :cond_2

    .line 765
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    if-nez v1, :cond_1

    .line 766
    new-instance v1, Landroid/net/NetSniffer;

    invoke-direct {v1}, Landroid/net/NetSniffer;-><init>()V

    sput-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    .line 768
    :cond_1
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mNetSniffer:Landroid/net/NetSniffer;

    const-string v2, "http://www.gmail.com"

    invoke-virtual {v1, v2}, Landroid/net/NetSniffer;->SnifferNetAccess(Ljava/lang/String;)Z

    move-result v0

    .line 770
    :cond_2
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

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 771
    goto :goto_0
.end method

.method private checkOverseasNetworkConnect(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v1, 0x0

    .line 687
    .local v1, "oversearet":Z
    if-eqz p1, :cond_2

    .line 688
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 689
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    if-nez v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 690
    :goto_1
    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 692
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    return v1
.end method

.method private checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "add"    # Z

    .prologue
    .line 697
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v2, "recivers":Ljava/util/List;
    const/4 v3, 0x0

    .line 699
    .local v3, "spliteBroadcast":Lcom/android/server/am/BroadcastRecord;
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 700
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 701
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 702
    .local v4, "target":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 704
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    iget-object v5, v5, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 705
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_1

    :cond_0
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

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 710
    .restart local v4    # "target":Ljava/lang/Object;
    :cond_3
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .end local v4    # "target":Ljava/lang/Object;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 711
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 712
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 713
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v5, :cond_5

    :cond_4
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

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_5
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 720
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 721
    invoke-virtual {p1, v2}, Lcom/android/server/am/BroadcastRecord;->spliteBroadcastRecord(Ljava/util/List;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 722
    iget-boolean v5, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iput-boolean v5, v3, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    .line 725
    :cond_7
    if-eqz p3, :cond_8

    if-eqz v3, :cond_8

    .line 726
    invoke-direct {p0, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    .line 728
    :cond_8
    return-object v3
.end method

.method private clearPendingBroadcast()V
    .locals 2

    .prologue
    .line 817
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 818
    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 819
    monitor-exit v1

    .line 820
    return-void

    .line 819
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
    .line 445
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 446
    .local v5, "uid":I
    iget v6, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 447
    .local v6, "pid":I
    iget v7, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 448
    .local v7, "adj":I
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 449
    .local v4, "procName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v2, p0

    move-object v3, p2

    move v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;Ljava/lang/String;IIIJZ)V

    .line 452
    .local v1, "info":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    if-eqz p3, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 823
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 824
    :try_start_0
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    const-string v0, "com.android.systemui"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    .line 827
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

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 829
    monitor-exit v1

    .line 830
    return-void

    .line 829
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
    .line 779
    sget-boolean v0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    return v0
.end method

.method private getScreenOffDurationTime()J
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mLastScreenOnTime:J

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerService;->mLastScreenOffTime:J

    sub-long/2addr v0, v2

    .line 510
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handlePendingBroadcast()V
    .locals 2

    .prologue
    .line 588
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/android/server/am/BackAppResourcePolicyManager$1;

    const-string v1, "pendingBroadCast"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager$1;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    .line 654
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 657
    :cond_0
    return-void
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    .line 567
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 888
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->handlePendingBroadcast()V

    .line 889
    new-instance v5, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    .line 890
    new-instance v5, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;-><init>(Lcom/android/server/am/BackAppResourcePolicyManager;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    .line 891
    iget-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 892
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v5, "BG_CONTROL_SWITCH"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 896
    const-string v5, "leui_adaptive_app_brightness"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mSettingsObserver:Lcom/android/server/am/BackAppResourcePolicyManager$SettingsObserver;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 899
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLocked()V

    .line 901
    sget-object v5, Lcom/android/server/am/BackAppResourcePolicyManager;->DEFAULT_APP_WHITE_LIST:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 902
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->DEFAULT_APP_WHITE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 903
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mWhitelistApp:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z
    .locals 30
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 287
    const-wide/16 v4, 0x0

    .line 288
    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .line 289
    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .line 290
    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .line 291
    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .line 292
    .local v10, "MIN_15":J
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v15

    .line 293
    .local v15, "isGoogleApp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v21

    .line 294
    .local v21, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v21, :cond_1

    .line 295
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_0

    const-string v24, "BackAppResourcePolicyManager"

    const-string v25, "LIMIT_APP: acquire wakelock: proc is null."

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    const/16 v24, 0x1

    .line 420
    :goto_0
    return v24

    .line 298
    :cond_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_3

    const/16 v20, 0x1

    .line 299
    .local v20, "isSystemApp":Z
    :goto_1
    const/4 v14, 0x5

    .line 300
    .local v14, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v22

    .line 301
    .local v22, "screenOffDurationTime":J
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .line 302
    .local v16, "bgDurationTime":J
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v18

    .line 303
    .local v18, "isGoogleNetwork":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v19

    .line 320
    .local v19, "isSleepTime":Z
    const/16 v24, 0x2710

    move/from16 v0, p3

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    if-eqz p2, :cond_6

    const-string v24, "android"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    if-nez v15, :cond_6

    .line 322
    :cond_2
    const-string v24, "*backup*"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    if-nez v18, :cond_5

    const-string v24, "android"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 323
    const/16 v24, 0x0

    goto :goto_0

    .line 298
    .end local v14    # "baseAdj":I
    .end local v16    # "bgDurationTime":J
    .end local v18    # "isGoogleNetwork":Z
    .end local v19    # "isSleepTime":Z
    .end local v20    # "isSystemApp":Z
    .end local v22    # "screenOffDurationTime":J
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    :cond_4
    const/16 v20, 0x0

    goto :goto_1

    .line 325
    .restart local v14    # "baseAdj":I
    .restart local v16    # "bgDurationTime":J
    .restart local v18    # "isGoogleNetwork":Z
    .restart local v19    # "isSleepTime":Z
    .restart local v20    # "isSystemApp":Z
    .restart local v22    # "screenOffDurationTime":J
    :cond_5
    const/16 v24, 0x1

    goto :goto_0

    .line 328
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v24

    if-nez v24, :cond_8

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-gtz v24, :cond_8

    .line 329
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_7

    .line 330
    const-string v24, "wake lock:"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|FgApp|ScreenOff#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 333
    const-string v24, "BackAppResourcePolicyManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "LIMIT_APP: acquire wakelock allow: pkg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_7
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 336
    :cond_8
    if-nez v20, :cond_b

    const-wide/16 v24, 0x0

    cmp-long v24, v16, v24

    if-gtz v24, :cond_9

    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-lez v24, :cond_b

    .line 337
    :cond_9
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_a

    .line 338
    const-string v24, "wake lock:"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|third app|ScreenOff#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 341
    const-string v24, "BackAppResourcePolicyManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 346
    :cond_b
    if-eqz v15, :cond_d

    if-nez v18, :cond_d

    .line 347
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_c

    .line 348
    const-string v24, "wake lock:"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|GoogleApp|NotGoogleNet"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 349
    const-string v24, "BackAppResourcePolicyManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 354
    :cond_d
    if-eqz v19, :cond_15

    .line 355
    const-wide/16 v24, 0x2

    mul-long v24, v24, v10

    cmp-long v24, v22, v24

    if-lez v24, :cond_10

    .line 356
    const/16 v14, -0xb

    .line 394
    :cond_e
    :goto_2
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v14, :cond_1d

    .line 395
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_f

    .line 396
    const-string v24, "wake lock:"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|baseAdj#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|BgTime#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|Sleep#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "|ScreenOff#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 402
    const-string v24, "BackAppResourcePolicyManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "LIMIT_APP: acquire wakelock reject: pkg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", procName = "

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v21

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

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 357
    :cond_10
    cmp-long v24, v22, v10

    if-lez v24, :cond_11

    .line 358
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 359
    :cond_11
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-lez v24, :cond_12

    .line 360
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 362
    :cond_12
    cmp-long v24, v16, v10

    if-lez v24, :cond_13

    .line 363
    const/16 v14, -0xb

    goto/16 :goto_2

    .line 364
    :cond_13
    cmp-long v24, v16, v12

    if-lez v24, :cond_14

    .line 365
    const/16 v14, -0xb

    goto/16 :goto_2

    .line 366
    :cond_14
    cmp-long v24, v16, v6

    if-lez v24, :cond_e

    .line 367
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 371
    :cond_15
    const-wide/16 v24, 0x2

    mul-long v24, v24, v10

    cmp-long v24, v22, v24

    if-lez v24, :cond_16

    .line 372
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 373
    :cond_16
    cmp-long v24, v22, v12

    if-lez v24, :cond_18

    .line 374
    cmp-long v24, v16, v8

    if-lez v24, :cond_17

    .line 375
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 377
    :cond_17
    const/4 v14, 0x3

    goto/16 :goto_2

    .line 378
    :cond_18
    cmp-long v24, v22, v4

    if-lez v24, :cond_1a

    .line 379
    cmp-long v24, v16, v10

    if-lez v24, :cond_19

    .line 380
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 382
    :cond_19
    const/4 v14, 0x4

    goto/16 :goto_2

    .line 384
    :cond_1a
    cmp-long v24, v16, v10

    if-lez v24, :cond_1b

    .line 385
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 386
    :cond_1b
    cmp-long v24, v16, v12

    if-lez v24, :cond_1c

    .line 387
    const/4 v14, 0x2

    goto/16 :goto_2

    .line 388
    :cond_1c
    cmp-long v24, v16, v6

    if-lez v24, :cond_e

    .line 389
    const/4 v14, 0x3

    goto/16 :goto_2

    .line 410
    :cond_1d
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v24, :cond_1e

    .line 411
    const-string v24, "wake lock:"

    move-object/from16 v0, p5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 412
    const-string v24, "BackAppResourcePolicyManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "LIMIT_APP: acquire wakelock allow: pkg = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", procName = "

    move-object/from16 v0, p5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v21

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

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", baseAdj = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", isSleepTime = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", screenOffTime = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/16 v28, 0x3e8

    div-long v28, v22, v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1e
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method private isAllowPendingAlarm(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)I
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 232
    const v0, 0xa8c0

    .line 233
    .local v0, "HOUR_12":I
    iget-object v7, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 234
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_1

    .line 235
    const-string v7, "BackAppResourcePolicyManager"

    const-string v8, "LIMIT_APP: delay alarm: proc is null."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    .line 259
    .end local v0    # "HOUR_12":I
    :cond_0
    :goto_0
    return v0

    .line 239
    .restart local v0    # "HOUR_12":I
    :cond_1
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v3

    .line 240
    .local v3, "isGoogleNetwork":Z
    invoke-virtual {p0, v6}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 241
    .local v1, "isBackGroundApp":Z
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    .line 242
    .local v5, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v4

    .line 243
    .local v4, "isSleepTime":Z
    invoke-static {p2, p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v2

    .line 245
    .local v2, "isGoogleApp":Z
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 246
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v7, :cond_2

    const-string v7, "delay alarm:"

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|SystemApp|GoogleApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-direct {p0, v6, v8, v7}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 247
    :cond_2
    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 241
    .end local v2    # "isGoogleApp":Z
    .end local v4    # "isSleepTime":Z
    .end local v5    # "isSystemApp":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 246
    .restart local v2    # "isGoogleApp":Z
    .restart local v4    # "isSleepTime":Z
    .restart local v5    # "isSystemApp":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 248
    :cond_5
    if-eqz v5, :cond_7

    .line 249
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v7, :cond_6

    const-string v7, "delay alarm:"

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|SystemApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 250
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_7
    if-eqz v1, :cond_8

    .line 254
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v7, :cond_0

    const-string v7, "delay alarm:"

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|BgApp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 258
    :cond_8
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v7, :cond_9

    const-string v7, "delay alarm:"

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 259
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private isAllowReceiveBroadcast(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z
    .locals 28
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 179
    const-wide/16 v4, 0x0

    .line 180
    .local v4, "MIN_0":J
    const-wide/32 v6, 0xea60

    .line 181
    .local v6, "MIN_1":J
    const-wide/32 v12, 0x493e0

    .line 182
    .local v12, "MIN_5":J
    const-wide/32 v8, 0x927c0

    .line 183
    .local v8, "MIN_10":J
    const-wide/32 v10, 0xdbba0

    .line 185
    .local v10, "MIN_15":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 186
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v22, :cond_0

    if-nez p1, :cond_3

    .line 187
    :cond_0
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v23, :cond_1

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_2

    :cond_1
    const-string v23, "BackAppResourcePolicyManager"

    const-string v26, "LIMIT_APP: receive broadcast: proc is null, or action is null."

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    const/16 v23, 0x1

    .line 228
    :goto_0
    return v23

    .line 191
    :cond_3
    const/4 v14, 0x5

    .line 192
    .local v14, "baseAdj":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v24

    .line 193
    .local v24, "screenOffDurationTime":J
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessRecord;->getBgTime()J

    move-result-wide v16

    .line 194
    .local v16, "bgDurationTime":J
    invoke-static/range {p2 .. p3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isGoogleApp(Ljava/lang/String;I)Z

    move-result v18

    .line 195
    .local v18, "isGoogleApp":Z
    invoke-static {}, Lcom/android/server/am/BackAppResourcePolicyManager;->getOverseaNetStatus()Z

    move-result v19

    .line 196
    .local v19, "isGoogleNetwork":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v15

    .line 197
    .local v15, "isBackGroundApp":Z
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_6

    const/16 v21, 0x1

    .line 198
    .local v21, "isSystemApp":Z
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v20

    .line 201
    .local v20, "isSleepTime":Z
    if-nez v15, :cond_7

    .line 202
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v23, :cond_4

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_5

    .line 203
    :cond_4
    const-string v23, "broadcast:"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|FgApp"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 204
    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: receive broadcast allow: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 197
    .end local v20    # "isSleepTime":Z
    .end local v21    # "isSystemApp":Z
    :cond_6
    const/16 v21, 0x0

    goto :goto_1

    .line 209
    .restart local v20    # "isSleepTime":Z
    .restart local v21    # "isSystemApp":Z
    :cond_7
    const-string v23, "android.intent.action.ACTION_POWER_DISCONNECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, "android.intent.action.ACTION_POWER_CONNECTED"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    const-string v23, "android.intent.action.BATTERY_OKAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 212
    :cond_8
    if-nez v21, :cond_e

    .line 213
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v23, :cond_9

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_a

    .line 214
    :cond_9
    const-string v23, "broadcast:"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|3rdApp"

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

    .line 215
    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: receive broadcast reject: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 219
    :cond_b
    const-string v23, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 220
    if-nez v19, :cond_e

    if-eqz v18, :cond_e

    .line 221
    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v23, :cond_c

    sget-boolean v23, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v23, :cond_d

    .line 222
    :cond_c
    const-string v23, "broadcast:"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, "|GoogleApp|NotGoogleNet"

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

    .line 223
    const-string v23, "BackAppResourcePolicyManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "LIMIT_APP: receive broadcast reject: pkg = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 228
    :cond_e
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method private isAllowWifiScan(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 263
    iget-object v8, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p4}, Lcom/android/server/am/ActivityManagerService;->getBgProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 264
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_1

    .line 265
    const-string v7, "BackAppResourcePolicyManager"

    const-string v8, "LIMIT_APP: wifi scan: proc is null."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    :goto_0
    return v6

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->getScreenOffDurationTime()J

    move-result-wide v4

    .line 270
    .local v4, "screenOffDurationTime":J
    invoke-virtual {p0, v3}, Lcom/android/server/am/BackAppResourcePolicyManager;->isBgProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    .line 271
    .local v0, "isBackGroundApp":Z
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_4

    move v2, v6

    .line 272
    .local v2, "isSystemApp":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->isSleepTime()Z

    move-result v1

    .line 274
    .local v1, "isSleepTime":Z
    if-nez v0, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    .line 275
    :cond_2
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v8, :cond_3

    const-string v8, "wifi scan:"

    invoke-virtual {p5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|BgApp#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|ScreenOff#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8, v6}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    :cond_3
    move v6, v7

    .line 279
    goto :goto_0

    .end local v1    # "isSleepTime":Z
    .end local v2    # "isSystemApp":Z
    :cond_4
    move v2, v7

    .line 271
    goto :goto_1

    .line 282
    .restart local v1    # "isSleepTime":Z
    .restart local v2    # "isSystemApp":Z
    :cond_5
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v8, :cond_0

    const-string v8, "wifi scan:"

    invoke-virtual {p5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8, v7}, Lcom/android/server/am/BackAppResourcePolicyManager;->countReqResProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isGoogleApp(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "isGoogleApp":Z
    sget-object v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v5

    .line 527
    :try_start_0
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 528
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 529
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 540
    .end local v2    # "isGoogleApp":Z
    .local v3, "isGoogleApp":Z
    :goto_0
    return v3

    .line 532
    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 533
    .local v0, "_pm":Landroid/content/pm/IPackageManager;
    const-string v4, "com.google.android.gms"

    invoke-interface {v0, v4, p0}, Landroid/content/pm/IPackageManager;->isSameSignsApps(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 538
    .end local v0    # "_pm":Landroid/content/pm/IPackageManager;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    monitor-exit v5

    move v3, v2

    .line 540
    .end local v2    # "isGoogleApp":Z
    .restart local v3    # "isGoogleApp":Z
    goto :goto_0

    .line 534
    .end local v3    # "isGoogleApp":Z
    .restart local v2    # "isGoogleApp":Z
    :catch_0
    move-exception v1

    .line 535
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

    .line 539
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
    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 516
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 517
    .local v1, "curHour":I
    if-ltz v1, :cond_0

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 518
    const/4 v2, 0x1

    .line 521
    .end local v1    # "curHour":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWhiteListApp(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 175
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isWhiteListApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mWhitelistApp:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mWhitelistApp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mWhitelistApp:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static removeAppHashMap(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 544
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    monitor-enter v1

    .line 545
    :try_start_0
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

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v0, Lcom/android/server/am/BackAppResourcePolicyManager;->mApps:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    monitor-exit v1

    .line 548
    return-void

    .line 547
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
    .line 834
    sget-object v3, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 835
    :try_start_0
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 836
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 837
    .local v1, "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-ne v2, v4, :cond_2

    .line 838
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_1

    :cond_0
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

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_1
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 841
    const/4 v2, 0x1

    monitor-exit v3

    .line 847
    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :goto_1
    return v2

    .line 835
    .restart local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 845
    .end local v1    # "pendingBroadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_3
    monitor-exit v3

    .line 847
    const/4 v2, 0x0

    goto :goto_1

    .line 845
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
    .line 775
    sput-boolean p0, Lcom/android/server/am/BackAppResourcePolicyManager;->isOverseaNetStatus:Z

    .line 776
    return-void
.end method

.method private final syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "replaced":Z
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    if-eqz v1, :cond_2

    .line 786
    iget-boolean v1, p1, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    if-eqz v1, :cond_3

    .line 787
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    .line 788
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_1

    :cond_0
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

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_1
    if-nez v0, :cond_2

    .line 790
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 791
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 802
    :cond_2
    :goto_0
    monitor-exit v2

    .line 803
    const/4 v1, 0x1

    return v1

    .line 794
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->replaceParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    .line 795
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_5

    :cond_4
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

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_5
    if-nez v0, :cond_2

    .line 797
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 798
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final syncPendingBroadcasts(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 680
    .local v1, "r":Lcom/android/server/am/BroadcastRecord;
    invoke-direct {p0, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    goto :goto_0

    .line 683
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->updateSettingsLockedInternal()V

    .line 552
    return-void
.end method

.method private updateSettingsLockedInternal()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 570
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "BG_CONTROL_SWITCH"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "bgControl":I
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_adaptive_app_brightness"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowSetBackLight:Z

    .line 573
    if-ne v0, v1, :cond_1

    move v3, v1

    :goto_1
    sput-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    .line 574
    if-ne v0, v1, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlBroadcastOpen:Z

    .line 575
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

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v0    # "bgControl":I
    :goto_3
    return-void

    .restart local v0    # "bgControl":I
    :cond_0
    move v3, v2

    .line 571
    goto :goto_0

    :cond_1
    move v3, v2

    .line 573
    goto :goto_1

    :cond_2
    move v1, v2

    .line 574
    goto :goto_2

    .line 576
    .end local v0    # "bgControl":I
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private wakeUpPendingTask()V
    .locals 5

    .prologue
    .line 807
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 809
    :try_start_0
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 814
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
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

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
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

    .line 460
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 462
    const-string v3, "  Allowed Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 466
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 467
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
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

    .line 470
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

    .line 471
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 475
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    .end local v0    # "allowedInfo":Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mRejectedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 480
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 481
    const-string v3, "  Rejected Process List:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v3, "%-20s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "    TIME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 483
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "NAME"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "UID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "PID"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "ADJ"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "TAG"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
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

    .line 489
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

    .line 490
    const-string v3, "%-60s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->procName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 492
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    const-string v3, "%-10s"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->adj:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    const-string v3, "%-80s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/am/BackAppResourcePolicyManager$ReqResProcessInfo;->tag:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 497
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
    .line 581
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 583
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mHandler:Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BackAppResourcePolicyManager$BackAppRecourcePolicyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return-void
.end method

.method public hasRanCtsOrCta(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 933
    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    if-nez v1, :cond_1

    .line 935
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.letv.leui.cta"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 937
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "com.android.cts."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    sput-boolean v5, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    .line 945
    iget-object v1, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "BG_CONTROL_SWITCH"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 949
    :cond_1
    sget-boolean v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mHasRanCtsOrCta:Z

    return v1

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAllowAcquireResource(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/StringBuilder;)I
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "resourceType"    # I
    .param p6, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 95
    const/4 v6, 0x1

    .line 96
    .local v6, "isAllow":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->hasRanCtsOrCta(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->isWhiteListApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    packed-switch p5, :pswitch_data_0

    .line 121
    :goto_0
    return v6

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowAcquireWakeLock(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    .line 101
    :goto_1
    goto :goto_0

    :cond_0
    move v6, v8

    .line 100
    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowReceiveBroadcast(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v7

    .line 104
    :goto_2
    goto :goto_0

    :cond_2
    move v6, v8

    .line 103
    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_2

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowPendingAlarm(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)I

    move-result v6

    .line 107
    :goto_3
    goto :goto_0

    :cond_4
    move v6, v8

    .line 106
    goto :goto_3

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->isAllowWifiScan(Ljava/lang/String;Ljava/lang/String;IILjava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v6, v7

    .line 110
    :goto_4
    goto :goto_0

    :cond_5
    move v6, v8

    .line 109
    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_4

    .line 115
    :cond_7
    const/4 v0, 0x2

    if-ne p5, v0, :cond_8

    .line 116
    const/4 v6, 0x0

    goto :goto_0

    .line 118
    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    .line 98
    nop

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
    .line 500
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

    .line 501
    const/4 v0, 0x1

    .line 503
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
    .line 954
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->noteAppReacquireWakeLock(IZ)V

    .line 957
    :cond_0
    return-void
.end method

.method public noteAppSetBackLight(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isChangeBacklight"    # Z

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mAllowSetBackLight:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->noteAppSetBackLight(Ljava/lang/String;Z)V

    .line 963
    :cond_0
    return-void
.end method

.method public noteBackgroundApp(I)V
    .locals 7
    .param p1, "lastFocusedUid"    # I

    .prologue
    .line 851
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/BackAppResourcePolicyManager;->isWhiteListApp(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 853
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 854
    .local v1, "curFocusedUid":I
    if-eq v1, p1, :cond_6

    .line 855
    const/4 v3, 0x0

    .line 856
    .local v3, "isNote":Z
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 857
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 858
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_4

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastBgTime(J)V

    .line 860
    if-nez v3, :cond_3

    .line 861
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_0

    .line 862
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

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_2

    .line 865
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_1

    .line 866
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

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    .line 870
    :cond_2
    const/4 v3, 0x1

    .line 856
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 872
    :cond_4
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_3

    .line 873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->setLastFgTime(J)V

    .line 875
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-eqz v4, :cond_3

    .line 876
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v4, :cond_5

    .line 877
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

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/BackAppResourcePolicyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->noteBackgroundapp(IZ)V

    goto :goto_1

    .line 885
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "curFocusedUid":I
    .end local v2    # "i":I
    .end local v3    # "isNote":Z
    :cond_6
    return-void
.end method

.method public pendingBroadcastLocked(Landroid/content/Context;Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->replacePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    .line 72
    .local v0, "replaced":Z
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "BackAppResourcePolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: replacePending, replaced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r.inMOrderedBroadcasts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/server/am/BroadcastRecord;->inMOrderedBroadcasts:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    if-nez v0, :cond_2

    .line 74
    invoke-direct {p0, p2}, Lcom/android/server/am/BackAppResourcePolicyManager;->enqueuePendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/BackAppResourcePolicyManager;->wakeUpPendingTask()V

    .line 77
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "BackAppResourcePolicyManager"

    const-string v2, "LIMIT_APP: finish enqueuePendingBroadcastLocked and wakeup Pending Task."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    return-void
.end method

.method removePendingBroadcasts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    sget-object v2, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v2

    .line 664
    :try_start_0
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 665
    const-string v1, "BackAppResourcePolicyManager"

    const-string v3, "LIMIT_APP: debug chenxu mPendingBroadcasts.size() > 1"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_0
    :goto_0
    monitor-exit v2

    .line 674
    return-object v0

    .line 668
    :cond_1
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 669
    const-string v1, "BackAppResourcePolicyManager"

    const-string v3, "LIMIT_APP: debug chenxu PendingBroadcasts.size() == 1 "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    sget-object v1, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
