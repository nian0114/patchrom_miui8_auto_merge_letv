.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field private static final ACTION_SIM_MONTH_CHANGED:Ljava/lang/String; = "com.letv.android.supermanager.ACTION_SIM_MONTH_CHANGED"

.field private static final ACTION_SNOOZE_DAILY_WARNING:Ljava/lang/String; = "com.letv.android.server.net.action.SNOOZE_DAILY_WARNING"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final AGNES_APP_USAGE:Ljava/lang/String; = "1.3.4"

.field private static final AGNES_REALTIME_SPEED:Ljava/lang/String; = "1.3.3.1"

.field private static final AGNES_RESTRICT_BACKGROUND:Ljava/lang/String; = "1.3.3.2.4"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final ATTR_WIFI_POLICY:Ljava/lang/String; = "wifiPolicy"

.field private static DISABLE_DATACONNECT_ACTION:Ljava/lang/String; = null

.field private static final INVALID_SUB_ID:J = -0x3e8L

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MIN_BYTES_TO_UPDATE_INTERFACE_QUOTA:J = 0x32000L

.field private static final MIN_BYTES_TO_UPDATE_REMAINING_STATUS:J = 0x7d000L

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_SHOW_RESTRICT_APP:I = 0x9

.field private static final SUPERMANAGER_PKGNAME:Ljava/lang/String; = "com.letv.android.supermanager"

.field private static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "NetworkPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_UID_WIFI_POLICY:Ljava/lang/String; = "uid-wifi-policy"

.field private static final TIME_CACHE_MAX_AGE:J = 0x5265c00L

.field public static final TYPE_DAILY_WARNING:I = 0x4

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field public static USE_TRUSTED_TIME:Z = false

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xa

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa


# instance fields
.field private final MOBILE:I

.field NetworkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final WIFI:I

.field private cur_KB_rx:J

.field private cur_KB_tx:J

.field private hasSupermanager:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private lastNetworkShowSpeedTime:J

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCycleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLastTotalBytes:J

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworkRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/NetworkPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkStats:Landroid/net/INetworkStatsService;

.field private mNotifManager:Landroid/app/INotificationManager;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private final mPowerManager:Landroid/os/IPowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z

.field volatile mRestrictPower:Z

.field final mRulesLock:Ljava/lang/Object;

.field volatile mScreenOn:Z

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSnoozeDailyWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field private final mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

.field private final mTime:Landroid/util/TrustedTime;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidState:Landroid/util/SparseIntArray;

.field final mUidWifiPolicy:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private networkPolicyApp:Lcom/letv/tracker/agnes/App;

.field networkWhiteApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field networkWhiteAppsUid:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private old_KB_rx:J

.field private old_KB_tx:J

.field realtimeSpeedHandler:Landroid/os/Handler;

.field private reportDatausageMonthlyRunner:Ljava/lang/Runnable;

.field screenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    const-string v0, "com.letv.telephonymanager.disabledataconnect"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->DISABLE_DATACONNECT_ACTION:Ljava/lang/String;

    .line 3136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->USE_TRUSTED_TIME:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;

    .prologue
    .line 375
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;Landroid/util/TrustedTime;Ljava/io/File;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "powerManager"    # Landroid/os/IPowerManager;
    .param p4, "networkStats"    # Landroid/net/INetworkStatsService;
    .param p5, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p6, "time"    # Landroid/util/TrustedTime;
    .param p7, "systemDir"    # Ljava/io/File;
    .param p8, "suppressDefaultPolicy"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 386
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 291
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 303
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    .line 312
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 314
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 317
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 319
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    .line 321
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 323
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 324
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 327
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 334
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 341
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 343
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 346
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 348
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 351
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 354
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 356
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 411
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    .line 412
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    .line 413
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    .line 414
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    .line 416
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->screenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->NetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    iput-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    .line 781
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 795
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 806
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 817
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 826
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 846
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 868
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 897
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 915
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 934
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 948
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 975
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1015
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1445
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2080
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI:I

    .line 2081
    iput v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->MOBILE:I

    .line 2899
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 3593
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$21;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCycleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 3624
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$22;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$22;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeDailyWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 3845
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$23;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$23;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    .line 387
    const-string v1, "missing context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 388
    const-string v1, "missing activityManager"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 389
    const-string v1, "missing powerManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 390
    const-string v1, "missing networkStats"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 391
    const-string v1, "missing networkManagement"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 392
    const-string v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 394
    const-string v1, "missing TrustedTime"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 395
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 397
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 399
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 401
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 403
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netpolicy.xml"

    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 405
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isNetworkAviailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;IIZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidWifiPolicyUncheckedLocked(IIZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;JLandroid/net/NetworkTemplate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;JLandroid/net/NetworkPolicy;)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->resetBytesLocked(JLandroid/net/NetworkPolicy;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->formatRealtimeSpeed(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->reportAgnes(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3162
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3164
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3165
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3166
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkPolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSnoozeDailyWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.letv.android.server.net.action.SNOOZE_DAILY_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3702
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3703
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3157
    return-object v0
.end method

.method private buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3171
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 3173
    .local v1, "subId":I
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    if-eqz v2, :cond_0

    .line 3174
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.letv.android.supermanager"

    const-string v4, "com.letv.android.supermanager.activity.FlowInfoActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3176
    const-string v2, "current_slot"

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotId(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3181
    :goto_0
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3182
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3183
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3184
    return-object v0

    .line 3178
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J
    .locals 30
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # J
    .param p4, "totalBytes"    # J
    .param p6, "onlyCommonTraffic"    # Z

    .prologue
    .line 3410
    if-eqz p6, :cond_4

    const-string v15, "last_corrected_total_bytes"

    .line 3412
    .local v15, "totalBytesKey":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "last_corrected_remaining_time"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v20

    .line 3414
    .local v20, "lastCorrectedRemainingTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    .line 3416
    .local v22, "lastCorrectedUsedBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "idle_time_flow_limit_bytes"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 3418
    .local v18, "idleTimeFlowTotalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "idle_time_flow_remaining_bytes"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    .line 3421
    .local v16, "idleTimeFlowRemainingBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3422
    .local v10, "currentTime":J
    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3423
    .local v6, "start":J
    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3426
    .local v8, "end":J
    cmp-long v4, v20, v6

    if-ltz v4, :cond_0

    cmp-long v4, v20, v8

    if-lez v4, :cond_1

    .line 3427
    :cond_0
    const-wide/16 v22, -0x1

    .line 3428
    move-wide/from16 v16, v18

    .line 3429
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3433
    .local v24, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "idle_time_flow_remaining_bytes"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3436
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3440
    .end local v24    # "token":J
    :cond_1
    if-eqz p6, :cond_3

    .line 3442
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 3443
    .local v12, "freeflowBytes":J
    sub-long p4, p4, v12

    .line 3445
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    const-wide/16 v28, -0x1

    cmp-long v4, v4, v28

    if-nez v4, :cond_5

    const-wide/16 v26, 0x0

    .line 3446
    .local v26, "usedBytes":J
    :goto_1
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "idle_time_flow_interval"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3450
    .local v14, "idleTimeFlowInterval":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10, v11}, Landroid/net/NetworkPolicy;->isDuringIdleTime(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_2

    .line 3451
    cmp-long v4, v16, v26

    if-gez v4, :cond_6

    .line 3452
    const-wide/16 v16, 0x0

    .line 3457
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3459
    .restart local v24    # "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "idle_time_flow_remaining_bytes"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3462
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3467
    .end local v24    # "token":J
    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v4, v18, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_3

    cmp-long v4, v18, v16

    if-ltz v4, :cond_3

    .line 3469
    sub-long v4, v18, v16

    sub-long p4, p4, v4

    .line 3473
    .end local v12    # "freeflowBytes":J
    .end local v14    # "idleTimeFlowInterval":Ljava/lang/String;
    .end local v26    # "usedBytes":J
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v4, v22, v4

    if-nez v4, :cond_7

    .end local p4    # "totalBytes":J
    :goto_3
    return-wide p4

    .line 3410
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "currentTime":J
    .end local v15    # "totalBytesKey":Ljava/lang/String;
    .end local v16    # "idleTimeFlowRemainingBytes":J
    .end local v18    # "idleTimeFlowTotalBytes":J
    .end local v20    # "lastCorrectedRemainingTime":J
    .end local v22    # "lastCorrectedUsedBytes":J
    .restart local p4    # "totalBytes":J
    :cond_4
    const-string v15, "last_corrected_all_bytes"

    goto/16 :goto_0

    .line 3436
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v10    # "currentTime":J
    .restart local v15    # "totalBytesKey":Ljava/lang/String;
    .restart local v16    # "idleTimeFlowRemainingBytes":J
    .restart local v18    # "idleTimeFlowTotalBytes":J
    .restart local v20    # "lastCorrectedRemainingTime":J
    .restart local v22    # "lastCorrectedUsedBytes":J
    .restart local v24    # "token":J
    :catchall_0
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3445
    .end local v24    # "token":J
    .restart local v12    # "freeflowBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    sub-long v26, p4, v4

    goto/16 :goto_1

    .line 3454
    .restart local v14    # "idleTimeFlowInterval":Ljava/lang/String;
    .restart local v26    # "usedBytes":J
    :cond_6
    sub-long v16, v16, v26

    goto :goto_2

    .line 3462
    .restart local v24    # "token":J
    :catchall_1
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3473
    .end local v12    # "freeflowBytes":J
    .end local v14    # "idleTimeFlowInterval":Ljava/lang/String;
    .end local v24    # "token":J
    .end local v26    # "usedBytes":J
    :cond_7
    sub-long p4, p4, v22

    goto :goto_3
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3193
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3194
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3195
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3197
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->USE_TRUSTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 1373
    const/4 v0, 0x0

    .line 1374
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 1376
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1378
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1380
    .local v2, "height":I
    invoke-virtual {p1, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1381
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1383
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1384
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1385
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1387
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "width":I
    :cond_0
    return-object v0
.end method

.method private enableFirewallChainLocked(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 3085
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 3098
    :goto_0
    return-void

    .line 3090
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3092
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3093
    :catch_0
    move-exception v0

    .line 3094
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3095
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJ)V
    .locals 45
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J

    .prologue
    .line 1173
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v11

    .line 1174
    .local v11, "tag":Ljava/lang/String;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1175
    .local v19, "builder":Landroid/app/Notification$Builder;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1176
    const-wide/16 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 1183
    .local v31, "res":Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v20

    .line 1184
    .local v20, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v6, v4

    .line 1185
    .local v6, "subId":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v36

    .line 1187
    .local v36, "start":J
    packed-switch p2, :pswitch_data_0

    .line 1360
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1361
    .local v9, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v14, v4, [I

    .line 1362
    .local v14, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v13

    const/4 v15, 0x0

    move-object v10, v9

    invoke-interface/range {v8 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v14    # "idReceived":[I
    :goto_1
    return-void

    .line 1189
    :pswitch_0
    const v4, 0x10404a1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1193
    .local v38, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1195
    .local v26, "lastCorrectedRemainingBytes":J
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v42

    .line 1196
    .local v42, "usedDuringCorrection":J
    sub-long v32, v26, v42

    .line 1197
    .local v32, "remainingBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-gez v4, :cond_0

    .line 1198
    const v4, 0x1040733

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v32

    neg-long v12, v0

    invoke-static {v4, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1200
    .local v34, "size":Ljava/lang/String;
    const v4, 0x1040734

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1211
    .end local v26    # "lastCorrectedRemainingBytes":J
    .end local v32    # "remainingBytes":J
    .end local v42    # "usedDuringCorrection":J
    .local v18, "body":Ljava/lang/String;
    :goto_2
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1213
    .local v17, "bigicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1214
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1215
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1216
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1218
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v35

    .line 1219
    .local v35, "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1222
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v39

    .line 1223
    .local v39, "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1202
    .end local v17    # "bigicon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "body":Ljava/lang/String;
    .end local v34    # "size":Ljava/lang/String;
    .end local v35    # "snoozeIntent":Landroid/content/Intent;
    .end local v39    # "viewIntent":Landroid/content/Intent;
    .restart local v26    # "lastCorrectedRemainingBytes":J
    .restart local v32    # "remainingBytes":J
    .restart local v42    # "usedDuringCorrection":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v32

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1203
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x104072f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "body":Ljava/lang/String;
    goto/16 :goto_2

    .line 1206
    .end local v18    # "body":Ljava/lang/String;
    .end local v26    # "lastCorrectedRemainingBytes":J
    .end local v32    # "remainingBytes":J
    .end local v34    # "size":Ljava/lang/String;
    .end local v42    # "usedDuringCorrection":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1207
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x10404a2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "body":Ljava/lang/String;
    goto/16 :goto_2

    .line 1229
    .end local v18    # "body":Ljava/lang/String;
    .end local v34    # "size":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const v4, 0x10404a7

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1232
    .local v18, "body":Ljava/lang/CharSequence;
    const v24, 0x108084a

    .line 1233
    .local v24, "icon":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080264

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1234
    .local v16, "bigIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1238
    const v4, 0x1040730

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1261
    .restart local v38    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1262
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1263
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1264
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1265
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1267
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v25

    .line 1268
    .local v25, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1240
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1255
    const/16 v38, 0x0

    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1242
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v4, 0x10404a3

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1243
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1245
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v4, 0x10404a4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1246
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1248
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v4, 0x10404a5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1249
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1251
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v4, 0x10404a6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1252
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v24, 0x1080078

    .line 1253
    goto :goto_3

    .line 1274
    .end local v16    # "bigIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v24    # "icon":I
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1275
    .restart local v26    # "lastCorrectedRemainingBytes":J
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v40

    .line 1276
    .local v40, "usedDuring":J
    sub-long v28, v40, v26

    .line 1283
    .local v28, "overBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1284
    move-wide/from16 v0, v28

    long-to-double v4, v0

    const-wide v12, 0x40247ae147ae147bL    # 10.24

    cmpg-double v4, v4, v12

    if-gez v4, :cond_3

    const/16 v30, 0x1

    .line 1285
    .local v30, "overZero":Z
    :goto_4
    if-eqz v30, :cond_4

    .line 1286
    const v4, 0x1040731

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1287
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v4, 0x1040732

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1318
    .end local v30    # "overZero":Z
    .restart local v18    # "body":Ljava/lang/CharSequence;
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1319
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1321
    .local v24, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1322
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1323
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1324
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1326
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v25

    .line 1327
    .restart local v25    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1284
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v24    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/16 v30, 0x0

    goto :goto_4

    .line 1289
    .restart local v30    # "overZero":Z
    :cond_4
    const v4, 0x1040733

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1291
    .restart local v38    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1292
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x1040734

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "body":Ljava/lang/CharSequence;
    goto :goto_5

    .line 1295
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v30    # "overZero":Z
    .end local v34    # "size":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :cond_5
    const v4, 0x10404ac

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v28

    invoke-static {v10, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1298
    .restart local v18    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 1312
    const/16 v38, 0x0

    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1300
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v4, 0x10404a8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1301
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1303
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v4, 0x10404a9

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1304
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1306
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v4, 0x10404aa

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1307
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1309
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v4, 0x10404ab

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1310
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1332
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v26    # "lastCorrectedRemainingBytes":J
    .end local v28    # "overBytes":J
    .end local v38    # "title":Ljava/lang/CharSequence;
    .end local v40    # "usedDuring":J
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getDailyUsageBytes(Landroid/net/NetworkPolicy;)J

    move-result-wide v22

    .line 1333
    .local v22, "dailyUsageBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1335
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x1040735

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1336
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v4, 0x1040736

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1338
    .restart local v18    # "body":Ljava/lang/CharSequence;
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1340
    .restart local v17    # "bigicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1341
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1342
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1343
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1346
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeDailyWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v35

    .line 1347
    .restart local v35    # "snoozeIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1350
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v39

    .line 1351
    .restart local v39    # "viewIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v8, 0x8000000

    move-object/from16 v0, v39

    invoke-static {v4, v5, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 1366
    .end local v17    # "bigicon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v22    # "dailyUsageBytes":J
    .end local v34    # "size":Ljava/lang/String;
    .end local v35    # "snoozeIntent":Landroid/content/Intent;
    .end local v38    # "title":Ljava/lang/CharSequence;
    .end local v39    # "viewIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_b
    .end packed-switch

    .line 1240
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1298
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1394
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1395
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1397
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x10404ad

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1398
    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x10404ae

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1400
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1401
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1402
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1403
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1404
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1080265

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1405
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1406
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1407
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1408
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1409
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1060059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1412
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1413
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v4, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1419
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1420
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 1421
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1423
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 1424
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 10

    .prologue
    .line 1738
    const-string v8, "NetworkPolicy"

    const-string v9, "ensureActiveMobilePolicyLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_1

    .line 1749
    :cond_0
    return-void

    .line 1741
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 1742
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1744
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 1745
    .local v5, "subIds":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 1746
    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1747
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    .line 1745
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 21
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1753
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1755
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    .line 1756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1757
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1759
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found template "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " which matches subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_1
    return-void

    .line 1755
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 1766
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    const-string v3, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No policy for subscriber "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "; generating default policy"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0082

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .line 1773
    .local v8, "warningBytes":J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 1774
    .local v20, "time":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 1778
    const/16 v18, 0x1

    .line 1780
    .local v18, "cycleDay":I
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1782
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1783
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1785
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 2353
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2354
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2355
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2359
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1
    return-object v1

    .line 2353
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2359
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static formatRealtimeSpeed(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # J
    .param p3, "shorter"    # Z

    .prologue
    const/high16 v7, 0x44800000    # 1024.0f

    const/high16 v5, 0x44610000    # 900.0f

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 458
    if-nez p0, :cond_0

    .line 459
    const-string v3, ""

    .line 502
    :goto_0
    return-object v3

    .line 462
    :cond_0
    long-to-float v0, p1

    .line 463
    .local v0, "result":F
    const-string v1, "b/s"

    .line 464
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 465
    const-string v1, "K/s"

    .line 466
    div-float/2addr v0, v7

    .line 468
    :cond_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    .line 469
    const-string v1, "M/s"

    .line 470
    div-float/2addr v0, v7

    .line 472
    :cond_2
    cmpl-float v3, v0, v5

    if-lez v3, :cond_3

    .line 473
    const-string v1, "G/s"

    .line 474
    div-float/2addr v0, v7

    .line 476
    :cond_3
    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    .line 477
    const-string v1, "T/s"

    .line 478
    div-float/2addr v0, v7

    .line 480
    :cond_4
    cmpl-float v3, v0, v5

    if-lez v3, :cond_5

    .line 481
    const-string v1, "P/s"

    .line 482
    div-float/2addr v0, v7

    .line 485
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 486
    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, "value":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 487
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 488
    if-eqz p3, :cond_7

    .line 489
    const-string v3, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 491
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 493
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 494
    if-eqz p3, :cond_9

    .line 495
    const-string v3, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 497
    .end local v2    # "value":Ljava/lang/String;
    :cond_9
    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 500
    .end local v2    # "value":Ljava/lang/String;
    :cond_a
    const-string v3, "%.0f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private getAppNameThroughUID(I)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x0

    .line 3221
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3222
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3223
    .local v4, "packagesForUid":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 3224
    aget-object v3, v4, v7

    .line 3226
    .local v3, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3227
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3234
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 3228
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3229
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v3

    .line 3231
    goto :goto_0

    .line 3234
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method private getDailyUsageBytes(Landroid/net/NetworkPolicy;)J
    .locals 14
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    const/4 v1, 0x0

    .line 3633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3634
    .local v6, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 3635
    .local v9, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 3637
    .local v8, "end":Ljava/util/Calendar;
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3639
    const/16 v0, 0xb

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3640
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3641
    const/16 v0, 0xd

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3642
    const/16 v0, 0xe

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3644
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3645
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3647
    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 3648
    .local v12, "totalBytes":J
    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 3650
    .local v10, "freeflowBytes":J
    sub-long v0, v12, v10

    return-wide v0
.end method

.method private getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 3120
    :goto_0
    return-wide v0

    .line 3115
    :catch_0
    move-exception v6

    .line 3116
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    .line 3117
    goto :goto_0

    .line 3118
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3120
    goto :goto_0
.end method

.method private getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J
    .locals 24
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # J

    .prologue
    .line 3375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "last_corrected_remaining_time"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, -0x1

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 3377
    .local v12, "lastCorrectedRemainingTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "last_corrected_remaining_bytes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-wide/16 v22, -0x1

    invoke-static/range {v20 .. v23}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 3380
    .local v10, "lastCorrectedRemainingBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3381
    .local v6, "current":J
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v16

    .line 3382
    .local v16, "start":J
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3383
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3385
    .local v4, "cr":Landroid/content/ContentResolver;
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-eqz v20, :cond_1

    cmp-long v20, v12, v16

    if-ltz v20, :cond_0

    cmp-long v20, v12, v8

    if-lez v20, :cond_1

    .line 3386
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3388
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MonthFlowSize"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v4, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 3389
    .local v14, "monthTotalBytes":J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-nez v20, :cond_1

    .line 3391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3393
    .local v18, "token":J
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init_manual_correction_subid_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3397
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3402
    .end local v14    # "monthTotalBytes":J
    .end local v18    # "token":J
    :cond_1
    :goto_0
    const-wide/16 v20, -0x1

    cmp-long v20, v10, v20

    if-nez v20, :cond_2

    .line 3403
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3406
    :cond_2
    return-wide v10

    .line 3394
    .restart local v14    # "monthTotalBytes":J
    .restart local v18    # "token":J
    :catch_0
    move-exception v5

    .line 3395
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "NetworkPolicy"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3397
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method private getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 22
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2380
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2381
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2382
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2384
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2386
    :cond_0
    const/4 v9, 0x0

    .line 2405
    :goto_0
    return-object v9

    .line 2382
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2389
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 2392
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2395
    .local v4, "start":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2397
    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2400
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2402
    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2405
    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 2400
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 2402
    .restart local v12    # "softLimitBytes":J
    :cond_3
    const-wide/16 v14, -0x1

    goto :goto_2
.end method

.method private static getSlotId(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3721
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 3727
    :goto_0
    return v0

    .line 3723
    :cond_0
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubId(I)I

    move-result v0

    if-ne v0, p0, :cond_1

    move v0, v1

    .line 3724
    goto :goto_0

    .line 3727
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getSubId(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 3730
    const/16 v0, -0x3e8

    .line 3732
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 3733
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 3734
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3737
    :cond_0
    return v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 3102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 3108
    :goto_0
    return-wide v0

    .line 3103
    :catch_0
    move-exception v6

    .line 3104
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v8

    .line 3105
    goto :goto_0

    .line 3106
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3108
    goto :goto_0
.end method

.method private initAgnes()Lcom/letv/tracker/agnes/App;
    .locals 3

    .prologue
    .line 3807
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 3808
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    const-string v2, "SuperManager"

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v0

    .line 3809
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 3125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3127
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    .line 3128
    :catch_0
    move-exception v0

    .line 3130
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3132
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private isLimitEnabled(J)Z
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3506
    const/4 v1, 0x0

    .line 3508
    .local v1, "limitEnabled":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usage_limit_enabled"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3509
    .local v2, "limitSet":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init_manual_correction_subid_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3511
    .local v3, "totalSet":I
    if-eqz v2, :cond_1

    move v1, v4

    .line 3512
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 3513
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    move v1, v4

    .line 3519
    .end local v2    # "limitSet":I
    .end local v3    # "totalSet":I
    :cond_0
    :goto_1
    return v1

    .restart local v2    # "limitSet":I
    .restart local v3    # "totalSet":I
    :cond_1
    move v1, v5

    .line 3511
    goto :goto_0

    :cond_2
    move v1, v5

    .line 3513
    goto :goto_1

    .line 3515
    .end local v2    # "limitSet":I
    .end local v3    # "totalSet":I
    :catch_0
    move-exception v0

    .line 3516
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NetworkPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isNetworkAviailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    if-eqz p1, :cond_0

    .line 448
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 450
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 451
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 455
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isOverDailyWarning(Landroid/net/NetworkPolicy;J)Z
    .locals 12
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # J

    .prologue
    .line 3654
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 3655
    :cond_0
    const/4 v3, 0x0

    .line 3692
    :goto_0
    return v3

    .line 3658
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3659
    .local v1, "cr":Landroid/content/ContentResolver;
    const-wide/16 v8, -0x1

    .line 3660
    .local v8, "warningBytes":J
    const-wide/16 v4, -0x1

    .line 3663
    .local v4, "lastDailyWarningSnooze":J
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "le_daily_warning_bytes"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v10, 0x1e00000

    invoke-static {v1, v3, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 3666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "le_daily_warning_snooze"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v10, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v10, -0x1

    invoke-static {v1, v3, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 3674
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v3, v4, v10

    if-eqz v3, :cond_2

    .line 3675
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3676
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3677
    const/16 v3, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3678
    const/16 v3, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3679
    const/16 v3, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3681
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-lez v3, :cond_2

    .line 3682
    const/4 v3, 0x0

    goto :goto_0

    .line 3669
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 3670
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3686
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    if-eqz v3, :cond_3

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    .line 3688
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3691
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getDailyUsageBytes(Landroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3692
    .local v6, "totalBytes":J
    cmp-long v3, v6, v8

    if-ltz v3, :cond_5

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private isOverlimit(Landroid/net/NetworkPolicy;JJJ)Z
    .locals 10
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # J
    .param p4, "start"    # J
    .param p6, "totalBytes"    # J

    .prologue
    .line 3486
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v8

    .line 3487
    .local v8, "lastCorrectedRemainingBytes":J
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v2

    .line 3488
    .local v2, "usedDuringCorrection":J
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isLimitEnabled(J)Z

    move-result v6

    .local v6, "limitEnabled":Z
    move-object v1, p1

    move-wide v4, v8

    .line 3490
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkPolicy;->isOverLimit(JJZ)Z

    move-result v0

    return v0
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2623
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z
    .locals 9
    .param p1, "subId"    # J
    .param p3, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 3527
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 3529
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p3}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3530
    long-to-int v2, p1

    invoke-virtual {v6, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 3531
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 3533
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p3, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    .line 3539
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v7

    goto :goto_0
.end method

.method private isTemplateRelevant(Landroid/net/NetworkTemplate;)Z
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 1125
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1127
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 1130
    .local v9, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .line 1131
    .local v11, "subIds":[I
    move-object v6, v11

    .local v6, "arr$":[I
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v10, v6, v7

    .line 1132
    .local v10, "subId":I
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1135
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v13

    .line 1141
    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return v1

    .line 1131
    .restart local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .restart local v3    # "subscriberId":Ljava/lang/String;
    .restart local v6    # "arr$":[I
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .restart local v10    # "subId":I
    .restart local v11    # "subIds":[I
    .restart local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v0    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v3    # "subscriberId":Ljava/lang/String;
    .end local v6    # "arr$":[I
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "sub":Landroid/telephony/SubscriptionManager;
    .end local v10    # "subId":I
    .end local v11    # "subIds":[I
    .end local v12    # "tele":Landroid/telephony/TelephonyManager;
    :cond_2
    move v1, v13

    .line 1141
    goto :goto_1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2767
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2768
    .local v4, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2770
    .local v5, "userId":I
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2771
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v3, p1, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2772
    const/4 v6, 0x0

    .line 2775
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    return v6

    .line 2770
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2775
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 2758
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2760
    :cond_0
    const/4 v0, 0x1

    .line 2763
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2215
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 10
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2218
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2219
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .line 2221
    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 2222
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 2225
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2226
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2227
    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_2

    .line 2228
    :cond_0
    if-eqz v1, :cond_1

    .line 2229
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Normalization replaced "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2234
    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1158
    return-void
.end method

.method private performDailyWarningSnooze(Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3708
    .local v4, "token":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3710
    .local v0, "currentTime":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "le_daily_warning_snooze"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3715
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3717
    :goto_0
    return-void

    .line 3712
    :catch_0
    move-exception v2

    .line 3713
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3715
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private postRestrictToast(IZZ)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "data"    # Z
    .param p3, "wifi"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3247
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3248
    .local v5, "res":Landroid/content/res/Resources;
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 3249
    const v6, 0x1040720

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    .line 3257
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3258
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3259
    .local v4, "packagesForUid":[Ljava/lang/String;
    const v6, 0x1080093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    .line 3260
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lt v6, v10, :cond_0

    .line 3261
    aget-object v3, v4, v9

    .line 3262
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3263
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 3265
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3266
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3273
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 3274
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "packagesForUid":[Ljava/lang/String;
    :cond_1
    return-void

    .line 3250
    :cond_2
    if-nez p2, :cond_3

    .line 3251
    const v6, 0x104071f

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    goto :goto_0

    .line 3252
    :cond_3
    if-eqz p3, :cond_1

    .line 3253
    const v6, 0x1040721

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    goto :goto_0

    .line 3270
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "packagesForUid":[Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 3267
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private readPolicyLocked()V
    .locals 32

    .prologue
    .line 1789
    const-string v4, "NetworkPolicy"

    const-string v30, "readPolicyLocked()"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1796
    const/16 v20, 0x0

    .line 1798
    .local v20, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1799
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1800
    .local v21, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1803
    const/16 v29, 0x1

    .line 1804
    .local v29, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_11

    .line 1805
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 1806
    .local v26, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_0

    .line 1807
    const-string v4, "policy-list"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1808
    const-string v4, "version"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 1809
    const/4 v4, 0x3

    move/from16 v0, v29

    if-lt v0, v4, :cond_1

    .line 1810
    const-string v4, "restrictBackground"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1908
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_0
    move-exception v19

    .line 1910
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1916
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1918
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 1813
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1911
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_1
    move-exception v19

    .line 1912
    .local v19, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1916
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1816
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_2
    :try_start_4
    const-string v4, "network-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1817
    const-string v4, "networkTemplate"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1818
    .local v23, "networkTemplate":I
    const/4 v4, 0x0

    const-string v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1820
    .local v25, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v29

    if-lt v0, v4, :cond_3

    .line 1821
    const/4 v4, 0x0

    const-string v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1825
    .local v22, "networkId":Ljava/lang/String;
    :goto_2
    const-string v4, "cycleDay"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1827
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v29

    if-lt v0, v4, :cond_4

    .line 1828
    const/4 v4, 0x0

    const-string v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1832
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string v4, "warningBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1833
    .local v8, "warningBytes":J
    const-string v4, "limitBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1835
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_5

    .line 1836
    const-string v4, "lastLimitSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1843
    .local v14, "lastLimitSnooze":J
    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v29

    if-lt v0, v4, :cond_7

    .line 1844
    const-string v4, "metered"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1857
    .local v16, "metered":Z
    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_8

    .line 1858
    const-string v4, "lastWarningSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1863
    .local v12, "lastWarningSnooze":J
    :goto_6
    const/4 v4, 0x7

    move/from16 v0, v29

    if-lt v0, v4, :cond_9

    .line 1864
    const-string v4, "inferred"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1869
    .local v17, "inferred":Z
    :goto_7
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1871
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move-object/from16 v30, v0

    new-instance v4, Landroid/net/NetworkPolicy;

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1913
    .end local v5    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_2
    move-exception v19

    .line 1914
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1916
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1823
    .end local v19    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "networkTemplate":I
    .restart local v25    # "subscriberId":Ljava/lang/String;
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v29    # "version":I
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "networkId":Ljava/lang/String;
    goto/16 :goto_2

    .line 1830
    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 1837
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v29

    if-lt v0, v4, :cond_6

    .line 1838
    const-string v4, "lastSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1840
    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1846
    :cond_7
    packed-switch v23, :pswitch_data_0

    .line 1853
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1850
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    .line 1851
    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1860
    :cond_8
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_6

    .line 1866
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_7

    .line 1875
    .end local v6    # "cycleDay":I
    .end local v7    # "cycleTimezone":Ljava/lang/String;
    .end local v8    # "warningBytes":J
    .end local v10    # "limitBytes":J
    .end local v12    # "lastWarningSnooze":J
    .end local v14    # "lastLimitSnooze":J
    .end local v16    # "metered":Z
    .end local v17    # "inferred":Z
    .end local v22    # "networkId":Ljava/lang/String;
    .end local v23    # "networkTemplate":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    :cond_a
    const-string v4, "uid-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1876
    const-string v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1877
    .local v28, "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1879
    .local v24, "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1880
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1916
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v28    # "uid":I
    .end local v29    # "version":I
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 1882
    .restart local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "policy":I
    .restart local v26    # "tag":Ljava/lang/String;
    .restart local v27    # "type":I
    .restart local v28    # "uid":I
    .restart local v29    # "version":I
    :cond_b
    :try_start_7
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1884
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_c
    const-string v4, "uid-wifi-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1885
    const-string v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1886
    .restart local v28    # "uid":I
    const-string v4, "wifiPolicy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1888
    .restart local v24    # "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1889
    const/16 v30, 0x1

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_d

    const/4 v4, 0x1

    :goto_8
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidWifiPolicyUncheckedLocked(IIZZ)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x0

    goto :goto_8

    .line 1891
    :cond_e
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1893
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_f
    const-string v4, "app-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1894
    const-string v4, "appId"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1895
    .local v18, "appId":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1898
    .restart local v24    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v28

    .line 1899
    .restart local v28    # "uid":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1900
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 1902
    :cond_10
    const-string v4, "NetworkPolicy"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "unable to apply policy to UID "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "; ignoring"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1916
    .end local v18    # "appId":I
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v28    # "uid":I
    :cond_11
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerCustomReceivers()V
    .locals 6

    .prologue
    .line 3544
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.letv.android.supermanager.ACTION_SIM_MONTH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3545
    .local v0, "simMonthChangFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCycleChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3548
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.letv.android.server.net.action.SNOOZE_DAILY_WARNING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3549
    .local v1, "snoozeDailyWarningFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeDailyWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3551
    return-void
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3022
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3028
    :goto_0
    return-void

    .line 3023
    :catch_0
    move-exception v0

    .line 3024
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3025
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private reportAgnes(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3818
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    if-nez v2, :cond_0

    .line 3819
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initAgnes()Lcom/letv/tracker/agnes/App;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    .line 3820
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    invoke-virtual {v2, p1}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v1

    .line 3821
    .local v1, "widget":Lcom/letv/tracker/agnes/Widget;
    const/4 v0, 0x0

    .line 3822
    .local v0, "event":Lcom/letv/tracker/agnes/Event;
    const-string v2, "1.3.3.1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3823
    const-string v2, "switch"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3824
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Open:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    .line 3839
    :goto_0
    if-eqz v0, :cond_1

    .line 3840
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    .line 3842
    :cond_1
    return-void

    .line 3826
    :cond_2
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Close:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3827
    :cond_3
    const-string v2, "1.3.3.2.4"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3828
    const-string v2, "switch"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3829
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Open:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3831
    :cond_4
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Close:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3832
    :cond_5
    const-string v2, "1.3.4"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3833
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3836
    :cond_6
    const-string v2, "NetworkPolicy"

    const-string v3, "agnes type error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetBytesLocked(JLandroid/net/NetworkPolicy;)V
    .locals 39
    .param p1, "subId"    # J
    .param p3, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 3555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 3557
    .local v36, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 3559
    .local v26, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 3560
    .local v28, "current":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3561
    .local v6, "start":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3564
    .local v8, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MonthFlowSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, -0x1

    move-object/from16 v0, v26

    invoke-static {v0, v4, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v34

    .line 3566
    .local v34, "monthTotalBytes":J
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 3567
    .local v14, "allUsedBytes":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v30

    .line 3568
    .local v30, "currentRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v22

    .line 3571
    .local v22, "totalBytes":J
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-nez v4, :cond_0

    .line 3572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init_manual_correction_subid_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3575
    :cond_0
    sub-long v20, v30, v22

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-wide/from16 v24, v14

    invoke-direct/range {v17 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRemainingStatusLocked(JJJJ)V

    .line 3578
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "idle_time_flow_limit_bytes"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v10, -0x1

    invoke-static {v4, v5, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v32

    .line 3581
    .local v32, "idleTimeFlowTotalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "idle_time_flow_remaining_bytes"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3586
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3588
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v14    # "allUsedBytes":J
    .end local v22    # "totalBytes":J
    .end local v26    # "cr":Landroid/content/ContentResolver;
    .end local v28    # "current":J
    .end local v30    # "currentRemainingBytes":J
    .end local v32    # "idleTimeFlowTotalBytes":J
    .end local v34    # "monthTotalBytes":J
    :goto_0
    return-void

    .line 3583
    :catch_0
    move-exception v27

    .line 3584
    .local v27, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "NetworkPolicy"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3586
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v27    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 3012
    invoke-static {p1, p2, p3}, Lcom/android/server/NetPluginDelegate;->setQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3018
    :goto_0
    return-void

    .line 3013
    :catch_0
    move-exception v0

    .line 3014
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3015
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .prologue
    .line 1525
    return-void
.end method

.method private setUidFirewallRule(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3066
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3067
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3073
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3079
    :goto_1
    return-void

    .line 3068
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3069
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3074
    :catch_0
    move-exception v0

    .line 3075
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3076
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private setUidFirewallRules(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .prologue
    .line 3047
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 3048
    .local v3, "size":I
    new-array v4, v3, [I

    .line 3049
    .local v4, "uids":[I
    new-array v2, v3, [I

    .line 3050
    .local v2, "rules":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3051
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    .line 3052
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 3050
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3054
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v4, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3060
    .end local v1    # "index":I
    .end local v2    # "rules":[I
    .end local v3    # "size":I
    .end local v4    # "uids":[I
    :goto_1
    return-void

    .line 3055
    :catch_0
    move-exception v0

    .line 3056
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string v6, "problem setting firewall uid rules"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3057
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private setUidNetworkRules(IZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 3032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3038
    :goto_0
    return-void

    .line 3033
    :catch_0
    move-exception v0

    .line 3034
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3035
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private setUidPolicyUncheckedLocked(IIZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2074
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2075
    if-eqz p3, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2078
    :cond_0
    return-void
.end method

.method private setUidWifiPolicyUncheckedLocked(IIZZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z
    .param p4, "persist"    # Z

    .prologue
    .line 2083
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 2084
    .local v1, "policy":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2094
    :goto_1
    if-eqz p4, :cond_0

    .line 2095
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2097
    :cond_0
    return-void

    .line 2083
    .end local v1    # "policy":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2089
    .restart local v1    # "policy":I
    :catch_0
    move-exception v0

    .line 2090
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkPolicy"

    const-string v3, "problem setting uid rules"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2091
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private showEuiNotification(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3502
    const/4 v0, 0x1

    return v0
.end method

.method private updateRemainingStatusLocked(JJJJ)V
    .locals 5
    .param p1, "subId"    # J
    .param p3, "currentRemainingBytes"    # J
    .param p5, "totalBytes"    # J
    .param p7, "allUsedBytes"    # J

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_corrected_remaining_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3495
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_corrected_remaining_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3, p4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3496
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_corrected_total_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5, p6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3497
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_corrected_all_bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p7, p8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3498
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 2613
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2614
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2615
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 2616
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2617
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2614
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2620
    :cond_1
    return-void
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2598
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2605
    monitor-exit v1

    .line 2606
    return-void

    .line 2605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2601
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1925
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1929
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1930
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1934
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1925
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3190
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2182
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2183
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2184
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2185
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2038
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2041
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2044
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2046
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 2047
    if-eq v0, p2, :cond_1

    .line 2048
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2050
    :cond_1
    monitor-exit v2

    .line 2051
    return-void

    .line 2050
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 506
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 507
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 510
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 511
    return-void
.end method

.method public checkInternetPermission(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 3202
    const/4 v0, 0x1

    .line 3203
    .local v0, "data":Z
    const/4 v4, 0x0

    .line 3204
    .local v4, "wifi":Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3205
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3206
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 3207
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3

    .line 3208
    .local v3, "policy":I
    if-ne v3, v7, :cond_0

    .line 3209
    const/4 v0, 0x0

    .line 3217
    .end local v3    # "policy":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->postRestrictToast(IZZ)V

    .line 3218
    return-void

    .line 3211
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 3212
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 3213
    .restart local v3    # "policy":I
    if-eqz v3, :cond_0

    .line 3214
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    const-string v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2439
    .local v4, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-direct {v2, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 2440
    .local v2, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v3, p3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v3, v6

    .line 2441
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2440
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2444
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2445
    :try_start_0
    const-string v14, "--unsnooze"

    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 2447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2446
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2450
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2454
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2456
    const-string v14, "Cleared snooze timestamps"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    monitor-exit v15

    .line 2540
    :goto_2
    return-void

    .line 2460
    .end local v5    # "i":I
    :cond_2
    const-string v14, "System ready: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2461
    const-string v14, "Restrict background: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2462
    const-string v14, "Restrict power: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2463
    const-string v14, "Device idle: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2464
    const-string v14, "Network policies:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2466
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 2467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2466
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2469
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2471
    const-string v14, "Metered ifaces: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2473
    const-string v14, "Policy for UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 2476
    .local v11, "size":I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v11, :cond_4

    .line 2477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2478
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 2479
    .local v9, "policy":I
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2480
    invoke-virtual {v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2481
    const-string v14, " policy="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2482
    const-class v14, Landroid/net/NetworkPolicyManager;

    const-string v16, "POLICY_"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v9}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2476
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2485
    .end local v9    # "policy":I
    .end local v13    # "uid":I
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2488
    if-lez v11, :cond_6

    .line 2489
    const-string v14, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2491
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_5

    .line 2492
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2494
    const-string v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2496
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2491
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2498
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2501
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2502
    if-lez v11, :cond_8

    .line 2503
    const-string v14, "Power save whitelist app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2505
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v11, :cond_7

    .line 2506
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2508
    const-string v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2510
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2505
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2512
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2515
    :cond_8
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2516
    .local v7, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v14, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2519
    const-string v14, "Status for known UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2521
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2522
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v11, :cond_a

    .line 2523
    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2524
    .restart local v13    # "uid":I
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2527
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 2528
    .local v12, "state":I
    const-string v14, " state="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2530
    const/4 v14, 0x2

    if-gt v12, v14, :cond_9

    const-string v14, " (fg)"

    :goto_8
    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2533
    .local v10, "rule":I
    const-string v14, " rule="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    const-class v14, Landroid/net/NetworkPolicyManager;

    const-string v16, "RULE_"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v10}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2522
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2530
    .end local v10    # "rule":I
    :cond_9
    const-string v14, " (bg)"

    goto :goto_8

    .line 2538
    .end local v12    # "state":I
    .end local v13    # "uid":I
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2539
    monitor-exit v15

    goto/16 :goto_2

    .end local v5    # "i":I
    .end local v7    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v11    # "size":I
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 11
    .param p1, "subscriber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 3279
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_network_reset"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3306
    :cond_0
    return-void

    .line 3286
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 3287
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 3288
    .local v5, "template":Landroid/net/NetworkTemplate;
    move-object v0, v3

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 3289
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3290
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3291
    iput-boolean v10, v4, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3292
    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3288
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3295
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3298
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3300
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_control_apps"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3302
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v6, v0, v1

    .line 3303
    .local v6, "uid":I
    invoke-virtual {p0, v6, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 3302
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFirewallUidChainRule(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3798
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3799
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 3800
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2189
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2204
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2205
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    .line 2206
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2207
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2194
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 2195
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2199
    const/4 v4, 0x0

    new-array v2, v4, [Landroid/net/NetworkPolicy;

    .line 2209
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return-object v2

    .restart local v1    # "i":I
    .restart local v2    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v3    # "size":I
    :cond_1
    :try_start_2
    monitor-exit v5

    goto :goto_1

    .line 2210
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    .line 2364
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2370
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRemainingBytes(J)J
    .locals 25
    .param p1, "subId"    # J

    .prologue
    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3352
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_0
    if-ltz v17, :cond_2

    .line 3353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 3355
    .local v11, "policy":Landroid/net/NetworkPolicy;
    if-eqz v11, :cond_1

    iget-object v4, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3352
    :cond_0
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 3359
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3360
    .local v18, "currentTime":J
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3361
    .local v6, "start":J
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3362
    .local v8, "end":J
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 3364
    .local v14, "totalBytes":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v20

    .line 3365
    .local v20, "lastRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v22

    .line 3367
    .local v22, "usedDuringCorrection":J
    sub-long v4, v20, v22

    monitor-exit v24

    .line 3371
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    .end local v18    # "currentTime":J
    .end local v20    # "lastRemainingBytes":J
    .end local v22    # "usedDuringCorrection":J
    :goto_1
    return-wide v4

    .line 3369
    :cond_2
    monitor-exit v24

    .line 3371
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 3369
    .end local v17    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getRestrictBackground()Z
    .locals 3

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2327
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 2328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 7
    .param p1, "policy"    # I

    .prologue
    .line 2110
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 2113
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2115
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2116
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 2117
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 2118
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2121
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 2122
    return-object v3

    .line 2121
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isNetworkMetered(Landroid/net/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .prologue
    const/4 v3, 0x1

    .line 2410
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2413
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return v3

    .line 2418
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2419
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2420
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2422
    if-eqz v1, :cond_2

    .line 2423
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 2420
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2425
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2426
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 2429
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2547
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isUidForegroundLocked(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 2553
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method maybeRefreshTrustedTime()V
    .locals 4

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->USE_TRUSTED_TIME:Z

    if-eqz v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3144
    :cond_0
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2249
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2250
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 2251
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2253
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2254
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2255
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find policy for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2280
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2258
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2269
    :pswitch_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2260
    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2272
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2273
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2277
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 2278
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2280
    :cond_1
    monitor-exit v4

    .line 2281
    return-void

    .line 2263
    :pswitch_2
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_0

    .line 2266
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->performDailyWarningSnooze(Landroid/net/NetworkTemplate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method purgePowerSaveTempWhitelistLocked()V
    .locals 3

    .prologue
    .line 555
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 556
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 556
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 561
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2157
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2130
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 2133
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2134
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2135
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 2136
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2140
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 2141
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 2142
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2143
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2141
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2145
    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2147
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_3
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2055
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2058
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot apply policy to UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2061
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2063
    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    .line 2064
    if-eq v0, p2, :cond_1

    .line 2065
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2067
    :cond_1
    monitor-exit v2

    .line 2068
    return-void

    .line 2067
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUidStateLocked(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/16 v3, 0x10

    .line 2575
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2576
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2577
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2578
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2579
    if-eq v1, v3, :cond_0

    .line 2580
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2582
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 2583
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2587
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public setDailyWarningBytes(JJ)V
    .locals 11
    .param p1, "subId"    # J
    .param p3, "dailyWarningBytes"    # J

    .prologue
    .line 3743
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3744
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 3745
    monitor-exit v7

    .line 3770
    :goto_0
    return-void

    .line 3748
    :cond_0
    long-to-int v1, p1

    .line 3749
    .local v1, "defaultSubId":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3750
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3752
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_2

    int-to-long v8, v1

    iget-object v6, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {p0, v8, v9, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3749
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3756
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3757
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3759
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "le_daily_warning_bytes"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, p3, p4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "le_daily_warning_snooze"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v8}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-static {v0, v6, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3764
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3766
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3769
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "defaultSubId":I
    .end local v2    # "i":I
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v4    # "token":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 3766
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "defaultSubId":I
    .restart local v2    # "i":I
    .restart local v3    # "policy":Landroid/net/NetworkPolicy;
    .restart local v4    # "token":J
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 3769
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v4    # "token":J
    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setDeviceIdleMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2336
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_1

    .line 2337
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2338
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2343
    :cond_0
    if-eqz p1, :cond_2

    .line 2344
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 2349
    :cond_1
    :goto_0
    monitor-exit v1

    .line 2350
    return-void

    .line 2346
    :cond_2
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 2349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirewallUidChainRule(IIZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 3777
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3778
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot apply policy to UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3781
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3782
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3784
    .local v2, "token":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3785
    .local v0, "oldPolicy":I
    if-eqz p3, :cond_2

    .line 3786
    .local v1, "policy":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 3787
    const/4 v4, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, p1, v4, p3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidWifiPolicyUncheckedLocked(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3790
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3792
    monitor-exit v5

    .line 3794
    return-void

    .end local v1    # "policy":I
    :cond_2
    move v1, v4

    .line 3785
    goto :goto_0

    .line 3790
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3792
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2172
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2175
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2176
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2177
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2178
    monitor-exit v1

    .line 2179
    return-void

    .line 2178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRemainingBytes(JJ)V
    .locals 33
    .param p1, "subId"    # J
    .param p3, "remainingBytes"    # J

    .prologue
    .line 3311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 3312
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_3

    .line 3313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/NetworkPolicy;

    .line 3315
    .local v28, "policy":Landroid/net/NetworkPolicy;
    if-eqz v28, :cond_1

    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3312
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 3319
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 3320
    .local v20, "currentTime":J
    move-wide/from16 v0, v20

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3321
    .local v6, "start":J
    move-wide/from16 v0, v20

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3322
    .local v8, "end":J
    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 3323
    .local v16, "totalBytes":J
    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v22

    .line 3325
    .local v22, "freeflowBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "idle_time_flow_limit_bytes"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v12, -0x1

    invoke-static {v4, v5, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v26

    .line 3327
    .local v26, "idleTimeFlowTotalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "idle_time_flow_remaining_bytes"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v12, -0x1

    invoke-static {v4, v5, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v24

    .line 3330
    .local v24, "idleTimeFlowRemainingBytes":J
    move-wide/from16 v18, v16

    .line 3331
    .local v18, "allBytes":J
    sub-long v16, v16, v22

    .line 3333
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_2

    .line 3334
    sub-long v4, v26, v24

    sub-long v16, v16, v4

    .line 3337
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v30

    .local v30, "token":J
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    .line 3339
    :try_start_1
    invoke-direct/range {v11 .. v19}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRemainingStatusLocked(JJJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3341
    :try_start_2
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    goto/16 :goto_1

    .line 3346
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "i":I
    .end local v16    # "totalBytes":J
    .end local v18    # "allBytes":J
    .end local v20    # "currentTime":J
    .end local v22    # "freeflowBytes":J
    .end local v24    # "idleTimeFlowRemainingBytes":J
    .end local v26    # "idleTimeFlowTotalBytes":J
    .end local v28    # "policy":Landroid/net/NetworkPolicy;
    .end local v30    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3341
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v10    # "i":I
    .restart local v16    # "totalBytes":J
    .restart local v18    # "allBytes":J
    .restart local v20    # "currentTime":J
    .restart local v22    # "freeflowBytes":J
    .restart local v24    # "idleTimeFlowRemainingBytes":J
    .restart local v26    # "idleTimeFlowTotalBytes":J
    .restart local v28    # "policy":Landroid/net/NetworkPolicy;
    .restart local v30    # "token":J
    :catchall_1
    move-exception v4

    :try_start_3
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3346
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v16    # "totalBytes":J
    .end local v18    # "allBytes":J
    .end local v20    # "currentTime":J
    .end local v22    # "freeflowBytes":J
    .end local v24    # "idleTimeFlowRemainingBytes":J
    .end local v26    # "idleTimeFlowTotalBytes":J
    .end local v28    # "policy":Landroid/net/NetworkPolicy;
    .end local v30    # "token":J
    :cond_3
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3347
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 11
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2285
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2288
    .local v4, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2289
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2290
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    const-string v7, "com.letv.android.phonecontrol"

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2294
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2295
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2296
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2297
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2298
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2299
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2300
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2301
    :try_start_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x6

    if-eqz p1, :cond_0

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2320
    .end local v0    # "ident":J
    :goto_1
    return-void

    .line 2300
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2305
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    move v5, v6

    .line 2301
    goto :goto_0

    .line 2308
    .end local v0    # "ident":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2309
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2310
    :try_start_5
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2311
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2312
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2313
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2315
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2316
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v7, v10, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2315
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_2
    move v5, v6

    .line 2316
    goto :goto_2
.end method

.method public setUidPolicy(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "NetworkPolicy"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2020
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot apply policy to UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2023
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2024
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2026
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2027
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 2028
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2031
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2033
    monitor-exit v4

    .line 2034
    return-void

    .line 2031
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2033
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2238
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2242
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2246
    return-void

    .line 2244
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 30

    .prologue
    .line 566
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v25

    if-nez v25, :cond_0

    .line 567
    const-string v25, "NetworkPolicy"

    const-string v26, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :goto_0
    return-void

    .line 571
    :cond_0
    const-class v25, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 574
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string v25, "NETWORK_BACKGROUND"

    const-string v26, "FeatureTypeWhite"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteApps:Ljava/util/List;

    .line 575
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteApps:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v9, v0, :cond_1

    .line 577
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteApps:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v19

    .line 578
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v19    # "uid":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 579
    :catch_0
    move-exception v8

    .line 580
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 584
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 585
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 586
    const-class v25, Landroid/os/PowerManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v25, v0

    new-instance v27, Lcom/android/server/net/NetworkPolicyManagerService$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 600
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 605
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 607
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 612
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 621
    :goto_3
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 622
    .local v15, "screenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v25, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 627
    new-instance v22, Landroid/content/IntentFilter;

    const-string v25, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 629
    .local v22, "whitelistFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 631
    const-class v25, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 633
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 636
    new-instance v6, Landroid/content/IntentFilter;

    const-string v25, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 637
    .local v6, "connFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string v27, "android.permission.CONNECTIVITY_INTERNAL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 640
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 641
    .local v12, "packageFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v25, "package"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/IntentFilter;

    const-string v28, "android.intent.action.UID_REMOVED"

    invoke-direct/range {v27 .. v28}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 650
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 651
    .local v20, "userFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v25, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 656
    new-instance v17, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 657
    .local v17, "statsFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string v27, "android.permission.READ_NETWORK_USAGE_HISTORY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 661
    new-instance v5, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 662
    .local v5, "allowFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string v27, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 665
    new-instance v16, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 666
    .local v16, "snoozeWarningFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const-string v27, "android.permission.MANAGE_NETWORK_POLICY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 670
    new-instance v23, Landroid/content/IntentFilter;

    const-string v25, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 671
    .local v23, "wifiConfigFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 674
    new-instance v24, Landroid/content/IntentFilter;

    const-string v25, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 676
    .local v24, "wifiStateFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual/range {v25 .. v26}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "realtime_speed"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 682
    .local v21, "value":I
    new-instance v18, Landroid/os/HandlerThread;

    const-string v25, "realtime"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 683
    .local v18, "thread":Landroid/os/HandlerThread;
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    .line 684
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    .line 685
    .local v14, "realtimelooper":Landroid/os/Looper;
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    .line 716
    const/16 v25, 0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-nez v25, :cond_2

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "content://settings/system/realtime_speed"

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/16 v27, 0x1

    new-instance v28, Lcom/android/server/net/NetworkPolicyManagerService$5;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    invoke-virtual/range {v25 .. v28}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 744
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 745
    .local v11, "mscreenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v25, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->screenOnOffReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    .restart local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->NetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 756
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 765
    :cond_3
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->registerCustomReceivers()V

    .line 770
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.letv.android.supermanager"

    const/16 v27, 0x2000

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 771
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_4

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 772
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 773
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 607
    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    .end local v12    # "packageFilter":Landroid/content/IntentFilter;
    .end local v14    # "realtimelooper":Landroid/os/Looper;
    .end local v15    # "screenFilter":Landroid/content/IntentFilter;
    .end local v16    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v17    # "statsFilter":Landroid/content/IntentFilter;
    .end local v18    # "thread":Landroid/os/HandlerThread;
    .end local v20    # "userFilter":Landroid/content/IntentFilter;
    .end local v21    # "value":I
    .end local v22    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v23    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v24    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v25

    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v25

    .line 757
    .restart local v5    # "allowFilter":Landroid/content/IntentFilter;
    .restart local v6    # "connFilter":Landroid/content/IntentFilter;
    .restart local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .restart local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    .restart local v12    # "packageFilter":Landroid/content/IntentFilter;
    .restart local v14    # "realtimelooper":Landroid/os/Looper;
    .restart local v15    # "screenFilter":Landroid/content/IntentFilter;
    .restart local v16    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .restart local v17    # "statsFilter":Landroid/content/IntentFilter;
    .restart local v18    # "thread":Landroid/os/HandlerThread;
    .restart local v20    # "userFilter":Landroid/content/IntentFilter;
    .restart local v21    # "value":I
    .restart local v22    # "whitelistFilter":Landroid/content/IntentFilter;
    .restart local v23    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .restart local v24    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catch_2
    move-exception v8

    .line 758
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 771
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v25, 0x0

    goto :goto_5

    .line 614
    .end local v5    # "allowFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    .end local v12    # "packageFilter":Landroid/content/IntentFilter;
    .end local v14    # "realtimelooper":Landroid/os/Looper;
    .end local v15    # "screenFilter":Landroid/content/IntentFilter;
    .end local v16    # "snoozeWarningFilter":Landroid/content/IntentFilter;
    .end local v17    # "statsFilter":Landroid/content/IntentFilter;
    .end local v18    # "thread":Landroid/os/HandlerThread;
    .end local v20    # "userFilter":Landroid/content/IntentFilter;
    .end local v21    # "value":I
    .end local v22    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v23    # "wifiConfigFilter":Landroid/content/IntentFilter;
    .end local v24    # "wifiStateFilter":Landroid/content/IntentFilter;
    :catch_3
    move-exception v25

    goto/16 :goto_3
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2165
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 22

    .prologue
    .line 1473
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1484
    .local v16, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v10, v2

    .line 1485
    .local v10, "defaultSubId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_5

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .line 1488
    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1489
    :cond_0
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1485
    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 1493
    :cond_1
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1496
    .local v4, "start":J
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1498
    .local v6, "end":J
    iget-object v3, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1505
    .local v14, "totalBytes":J
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v8, p0

    move-wide v12, v4

    .line 1506
    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverlimit(Landroid/net/NetworkPolicy;JJJ)Z

    move-result v20

    .line 1510
    .local v20, "overLimit":Z
    :goto_2
    if-eqz v20, :cond_3

    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const/16 v21, 0x1

    .line 1512
    .local v21, "overLimitWithoutSnooze":Z
    :goto_3
    if-nez v21, :cond_4

    const/16 v19, 0x1

    .line 1514
    .local v19, "networkEnabled":Z
    :goto_4
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_1

    .line 1508
    .end local v19    # "networkEnabled":Z
    .end local v20    # "overLimit":Z
    .end local v21    # "overLimitWithoutSnooze":Z
    :cond_2
    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v20

    .restart local v20    # "overLimit":Z
    goto :goto_2

    .line 1510
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 1512
    .restart local v21    # "overLimitWithoutSnooze":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    .line 1516
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v9    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    .end local v20    # "overLimit":Z
    .end local v21    # "overLimitWithoutSnooze":Z
    :cond_5
    return-void
.end method

.method updateNetworkRulesLocked()V
    .locals 56

    .prologue
    .line 1533
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v50

    .line 1548
    .local v50, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_2

    const/16 v43, 0x1

    .line 1552
    .local v43, "powerSave":Z
    :goto_0
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .local v19, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v20, Landroid/util/ArraySet;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1554
    .local v20, "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v17, v50

    .local v17, "arr$":[Landroid/net/NetworkState;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .local v28, "i$":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    aget-object v49, v17, v28

    .line 1555
    .local v49, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v29

    .line 1558
    .local v29, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    .line 1559
    .local v18, "baseIface":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 1560
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    if-eqz v43, :cond_0

    .line 1562
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1568
    :cond_0
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v48

    .line 1569
    .local v48, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v28    # "i$":I
    .local v27, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/net/LinkProperties;

    .line 1570
    .local v47, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v47 .. v47}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v46

    .line 1571
    .local v46, "stackedIface":Ljava/lang/String;
    if-eqz v46, :cond_1

    .line 1572
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    if-eqz v43, :cond_1

    .line 1574
    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1538
    .end local v17    # "arr$":[Landroid/net/NetworkState;
    .end local v18    # "baseIface":Ljava/lang/String;
    .end local v19    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .end local v20    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v29    # "ident":Landroid/net/NetworkIdentity;
    .end local v35    # "len$":I
    .end local v43    # "powerSave":Z
    .end local v46    # "stackedIface":Ljava/lang/String;
    .end local v47    # "stackedLink":Landroid/net/LinkProperties;
    .end local v48    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v49    # "state":Landroid/net/NetworkState;
    .end local v50    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v21

    .line 1731
    :goto_3
    return-void

    .line 1548
    .restart local v50    # "states":[Landroid/net/NetworkState;
    :cond_2
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 1554
    .restart local v17    # "arr$":[Landroid/net/NetworkState;
    .restart local v19    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v20    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "len$":I
    .restart local v43    # "powerSave":Z
    .restart local v49    # "state":Landroid/net/NetworkState;
    :cond_3
    add-int/lit8 v27, v28, 0x1

    .local v27, "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .restart local v28    # "i$":I
    goto :goto_1

    .line 1582
    .end local v49    # "state":Landroid/net/NetworkState;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1583
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v32

    .line 1584
    .local v32, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    .local v26, "i":I
    :goto_4
    if-ltz v26, :cond_8

    .line 1585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 1587
    .local v11, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1588
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v34, v4, -0x1

    .local v34, "j":I
    :goto_5
    if-ltz v34, :cond_6

    .line 1589
    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/util/Pair;

    .line 1590
    .local v30, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1591
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_5
    add-int/lit8 v34, v34, -0x1

    goto :goto_5

    .line 1595
    .end local v30    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_6
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1596
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 1597
    .local v33, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    .end local v33    # "ifaces":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    .line 1601
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v34    # "j":I
    :cond_8
    const-wide v40, 0x7fffffffffffffffL

    .line 1602
    .local v40, "lowestRule":J
    new-instance v42, Landroid/util/ArraySet;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1610
    .local v42, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1613
    .local v22, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    .end local v17    # "arr$":[Landroid/net/NetworkState;
    .end local v28    # "i$":I
    :goto_6
    if-ltz v26, :cond_19

    .line 1614
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 1615
    .restart local v11    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 1619
    .restart local v33    # "ifaces":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1620
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1623
    .local v6, "start":J
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1624
    .local v8, "end":J
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1632
    .end local v8    # "end":J
    .local v14, "totalBytes":J
    :goto_7
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applying policy "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " to ifaces "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v54, -0x1

    cmp-long v4, v4, v54

    if-eqz v4, :cond_d

    const/16 v25, 0x1

    .line 1637
    .local v25, "hasWarning":Z
    :goto_8
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v54, -0x1

    cmp-long v4, v4, v54

    if-eqz v4, :cond_e

    const/16 v24, 0x1

    .line 1638
    .local v24, "hasLimit":Z
    :goto_9
    if-nez v24, :cond_9

    iget-boolean v4, v11, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_16

    .line 1640
    :cond_9
    if-nez v24, :cond_f

    .line 1643
    const-wide v44, 0x7fffffffffffffffL

    .line 1687
    .local v44, "quotaBytes":J
    :goto_a
    move-object/from16 v0, v33

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 1689
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_a
    move-object/from16 v17, v33

    .local v17, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v35, v0

    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_b
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    aget-object v31, v17, v27

    .line 1693
    .local v31, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1694
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1695
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1696
    if-eqz v43, :cond_b

    .line 1697
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1692
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto :goto_b

    .line 1627
    .end local v6    # "start":J
    .end local v14    # "totalBytes":J
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v24    # "hasLimit":Z
    .end local v25    # "hasWarning":Z
    .end local v27    # "i$":I
    .end local v31    # "iface":Ljava/lang/String;
    .end local v44    # "quotaBytes":J
    :cond_c
    const-wide v6, 0x7fffffffffffffffL

    .line 1628
    .restart local v6    # "start":J
    const-wide/16 v14, 0x0

    .restart local v14    # "totalBytes":J
    goto/16 :goto_7

    .line 1636
    :cond_d
    const/16 v25, 0x0

    goto :goto_8

    .line 1637
    .restart local v25    # "hasWarning":Z
    :cond_e
    const/16 v24, 0x0

    goto :goto_9

    .line 1644
    .restart local v24    # "hasLimit":Z
    :cond_f
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_10

    .line 1647
    const-wide v44, 0x7fffffffffffffffL

    .restart local v44    # "quotaBytes":J
    goto :goto_a

    .line 1655
    .end local v44    # "quotaBytes":J
    :cond_10
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v12, v4

    .line 1656
    .local v12, "subId":J
    iget-object v4, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1657
    const/16 v38, 0x1

    .line 1659
    .local v38, "limitEnabled":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init_manual_correction_subid_"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v51

    .line 1660
    .local v51, "totalSet":I
    if-eqz v51, :cond_11

    const/16 v38, 0x1

    .line 1665
    .end local v51    # "totalSet":I
    :goto_c
    if-nez v38, :cond_13

    .line 1667
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    if-eqz v4, :cond_12

    const-wide v44, 0x7fffffffffffffffL

    .line 1679
    .restart local v44    # "quotaBytes":J
    :goto_d
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calculate quotaByte for ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "], subId is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ",hasSuperManager is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", quotaBytes is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1660
    .end local v44    # "quotaBytes":J
    .restart local v51    # "totalSet":I
    :cond_11
    const/16 v38, 0x0

    goto :goto_c

    .line 1661
    .end local v51    # "totalSet":I
    :catch_1
    move-exception v21

    .line 1662
    .local v21, "e":Ljava/lang/Exception;
    const-string v4, "NetworkPolicy"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1667
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_12
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    goto :goto_d

    .line 1670
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v36

    .line 1671
    .local v36, "lastRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v52

    .line 1673
    .local v52, "usedDuration":J
    const-wide/16 v4, -0x1

    cmp-long v4, v36, v4

    if-nez v4, :cond_14

    .line 1674
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto :goto_d

    .line 1676
    .end local v44    # "quotaBytes":J
    :cond_14
    const-wide/16 v4, 0x1

    sub-long v54, v36, v52

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto/16 :goto_d

    .line 1682
    .end local v36    # "lastRemainingBytes":J
    .end local v38    # "limitEnabled":Z
    .end local v44    # "quotaBytes":J
    .end local v52    # "usedDuration":J
    :cond_15
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto/16 :goto_a

    .line 1703
    .end local v12    # "subId":J
    .end local v44    # "quotaBytes":J
    :cond_16
    if-eqz v25, :cond_17

    iget-wide v4, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v40

    if-gez v4, :cond_17

    .line 1704
    iget-wide v0, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v40, v0

    .line 1706
    :cond_17
    if-eqz v24, :cond_18

    iget-wide v4, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v40

    if-gez v4, :cond_18

    .line 1707
    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v40, v0

    .line 1613
    :cond_18
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_6

    .line 1711
    .end local v6    # "start":J
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    .end local v24    # "hasLimit":Z
    .end local v25    # "hasWarning":Z
    .end local v33    # "ifaces":[Ljava/lang/String;
    :cond_19
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    :goto_e
    if-ltz v26, :cond_1a

    .line 1712
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1713
    .restart local v31    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1714
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1715
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1711
    add-int/lit8 v26, v26, -0x1

    goto :goto_e

    .line 1718
    .end local v31    # "iface":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    :goto_f
    if-ltz v26, :cond_1c

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1723
    .restart local v31    # "iface":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1724
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1721
    :cond_1b
    add-int/lit8 v26, v26, -0x1

    goto :goto_f

    .line 1727
    .end local v31    # "iface":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Ljava/lang/String;

    .line 1730
    .local v39, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method

.method updateNotificationsLocked()V
    .locals 32

    .prologue
    .line 1033
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNotificationsLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v22, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1037
    .local v22, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1049
    .local v24, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v10, v2

    .line 1050
    .local v10, "defaultSubId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "i":I
    :goto_0
    if-ltz v23, :cond_6

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .line 1053
    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1050
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1059
    .local v4, "start":J
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1061
    .local v6, "end":J
    iget-object v3, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 1065
    .local v12, "totalBytes":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1066
    .local v26, "remainingBytes":J
    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v30

    .line 1067
    .local v30, "usedBytes":J
    sub-long v2, v26, v30

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-ltz v2, :cond_2

    sub-long v2, v26, v30

    const-wide/32 v14, 0x32000

    cmp-long v2, v2, v14

    if-gtz v2, :cond_2

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    :cond_2
    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    .line 1075
    invoke-direct/range {v14 .. v21}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverlimit(Landroid/net/NetworkPolicy;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1076
    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 1077
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 1079
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1080
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 1084
    :cond_4
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 1088
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isLimitEnabled(J)Z

    move-result v20

    .line 1089
    .local v20, "limitEnabled":Z
    sub-long v18, v26, v30

    move-object v15, v9

    move-wide/from16 v16, v12

    invoke-virtual/range {v15 .. v20}, Landroid/net/NetworkPolicy;->isOverWarning(JJZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 1091
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1097
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverDailyWarning(Landroid/net/NetworkPolicy;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1098
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_1

    .line 1105
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v9    # "policy":Landroid/net/NetworkPolicy;
    .end local v12    # "totalBytes":J
    .end local v20    # "limitEnabled":Z
    .end local v26    # "remainingBytes":J
    .end local v30    # "usedBytes":J
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v2, :cond_7

    .line 1106
    const-string v2, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 1110
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    :goto_2
    if-ltz v23, :cond_9

    .line 1111
    invoke-virtual/range {v22 .. v23}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1112
    .local v28, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1113
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 1110
    :cond_8
    add-int/lit8 v23, v23, -0x1

    goto :goto_2

    .line 1116
    .end local v28    # "tag":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    .prologue
    .line 536
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 537
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 538
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v7}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v6

    .line 542
    .local v6, "whitelist":[I
    if-eqz v6, :cond_1

    .line 543
    move-object v1, v6

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    .line 544
    .local v5, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 547
    .end local v0    # "N":I
    .end local v1    # "arr$":[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "uid":I
    .end local v6    # "whitelist":[I
    :catch_0
    move-exception v7

    .line 549
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 7

    .prologue
    .line 515
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v4

    .line 516
    .local v4, "whitelist":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 517
    if-eqz v4, :cond_0

    .line 518
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 519
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v4

    .line 523
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 524
    if-eqz v4, :cond_1

    .line 525
    move-object v0, v4

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 526
    .restart local v3    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v5

    .line 531
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 2693
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2703
    :goto_0
    return-void

    .line 2695
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2696
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2697
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2702
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2699
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_1
.end method

.method updateRuleForDeviceIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 2660
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 2661
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2662
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2664
    :cond_0
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2670
    .end local v0    # "appId":I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2671
    return-void

    .line 2666
    .restart local v0    # "appId":I
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_0
.end method

.method updateRulesForAppIdleLocked()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 2674
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2675
    .local v6, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 2678
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2679
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ui":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2680
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2681
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v2

    .line 2682
    .local v2, "idleUids":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget v5, v0, v1

    .line 2683
    .local v5, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2684
    invoke-virtual {v6, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2682
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2679
    .end local v5    # "uid":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2689
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "idleUids":[I
    .end local v3    # "len$":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v12, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2690
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    .prologue
    .line 2706
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2707
    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2708
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V

    .line 2709
    return-void

    .line 2706
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2627
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_6

    .line 2630
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2631
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2632
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2633
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2634
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2635
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2636
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2637
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2638
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2639
    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2635
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2642
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 2643
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2644
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2645
    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2642
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2633
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2648
    .end local v1    # "i":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_5

    .line 2649
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2650
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2648
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2653
    :cond_5
    invoke-direct {p0, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2656
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2657
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 10
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 2716
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2718
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2719
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    .line 2722
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 2723
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v8, 0x2200

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2726
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2727
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2728
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2729
    .local v5, "uid":I
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2734
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v8, 0x3f5

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2735
    const/16 v8, 0x3fb

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2738
    if-eqz p1, :cond_2

    .line 2739
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2740
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2742
    :cond_2
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    .prologue
    .line 2745
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 2746
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2747
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2748
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2749
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2750
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 2751
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2747
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2754
    .end local v0    # "appId":I
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method

.method updateRulesForUidLocked(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 2789
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2793
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2795
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string v10, "android.permission.INTERNET"

    invoke-interface {v2, v10, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_0

    .line 2802
    :goto_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 2803
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v6

    .line 2806
    .local v6, "uidForeground":Z
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2807
    .local v0, "appId":I
    const/4 v8, 0x0

    .line 2808
    .local v8, "uidRules":I
    const/4 v3, 0x0

    .line 2809
    .local v3, "isWifi":Z
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2810
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 2811
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v3, 0x1

    .line 2815
    :cond_2
    :goto_2
    if-eqz v3, :cond_9

    if-nez v6, :cond_9

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_9

    .line 2816
    const/4 v8, 0x1

    .line 2839
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 2841
    const/4 v8, 0x2

    .line 2845
    :cond_4
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    .line 2847
    const/4 v8, 0x2

    .line 2850
    :cond_5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 2852
    .local v4, "oldRules":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2853
    const/4 v8, 0x0

    .line 2855
    :cond_6
    if-nez v8, :cond_e

    .line 2856
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2861
    :goto_4
    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    const/4 v5, 0x1

    .line 2862
    .local v5, "rejectMetered":Z
    :goto_5
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 2865
    if-eq v4, v8, :cond_7

    .line 2866
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2871
    :cond_7
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v10, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2872
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 2811
    .end local v4    # "oldRules":I
    .end local v5    # "rejectMetered":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 2817
    :cond_9
    if-nez v3, :cond_a

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_a

    .line 2820
    const/4 v8, 0x1

    goto :goto_3

    .line 2821
    :cond_a
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_b

    .line 2822
    if-nez v6, :cond_3

    .line 2824
    const/4 v8, 0x1

    goto :goto_3

    .line 2826
    :cond_b
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v10, :cond_3

    .line 2827
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_c
    const/4 v9, 0x1

    .line 2829
    .local v9, "whitelisted":Z
    :goto_6
    if-nez v9, :cond_3

    if-nez v6, :cond_3

    and-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_3

    .line 2834
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 2827
    .end local v9    # "whitelisted":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 2858
    .restart local v4    # "oldRules":I
    :cond_e
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 2861
    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    .line 2799
    .end local v0    # "appId":I
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "isWifi":Z
    .end local v4    # "oldRules":I
    .end local v6    # "uidForeground":Z
    .end local v7    # "uidPolicy":I
    .end local v8    # "uidRules":I
    :catch_1
    move-exception v10

    goto/16 :goto_1
.end method

.method updateRulesForUidStateChangeLocked(III)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2590
    if-gt p2, v3, :cond_1

    move v1, v0

    .line 2591
    .local v1, "oldForeground":Z
    :goto_0
    if-gt p3, v3, :cond_2

    .line 2592
    .local v0, "newForeground":Z
    :goto_1
    if-eq v1, v0, :cond_0

    .line 2593
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2595
    :cond_0
    return-void

    .end local v0    # "newForeground":Z
    .end local v1    # "oldForeground":Z
    :cond_1
    move v1, v2

    .line 2590
    goto :goto_0

    .restart local v1    # "oldForeground":Z
    :cond_2
    move v0, v2

    .line 2591
    goto :goto_1
.end method

.method updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "uids"    # Landroid/util/SparseIntArray;

    .prologue
    .line 2779
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2780
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2782
    :cond_0
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 2562
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2563
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 2565
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2566
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2567
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2569
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2572
    :cond_0
    return-void
.end method

.method writePolicyLocked()V
    .locals 12

    .prologue
    .line 1937
    const-string v9, "NetworkPolicy"

    const-string v10, "writePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v1, 0x0

    .line 1941
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1943
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1944
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1945
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1947
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1948
    const-string v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1949
    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1952
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1953
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 1954
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1956
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1957
    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1958
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1959
    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1960
    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1962
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1963
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1964
    const/4 v9, 0x0

    const-string v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1966
    :cond_1
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1967
    const/4 v9, 0x0

    const-string v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1968
    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1969
    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1970
    const-string v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1971
    const-string v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1972
    const-string v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1973
    const-string v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1974
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1978
    .end local v3    # "networkId":Ljava/lang/String;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "subscriberId":Ljava/lang/String;
    .end local v7    # "template":Landroid/net/NetworkTemplate;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 1979
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1980
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1983
    .local v5, "policy":I
    if-nez v5, :cond_3

    .line 1978
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1985
    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1986
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1987
    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1988
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2008
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    .line 2009
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 2010
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2013
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1991
    .restart local v2    # "i":I
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_5
    const/4 v2, 0x0

    :goto_4
    :try_start_1
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 1992
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1993
    .restart local v8    # "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1996
    .restart local v5    # "policy":I
    if-nez v5, :cond_6

    .line 1991
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1998
    :cond_6
    const/4 v9, 0x0

    const-string v10, "uid-wifi-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1999
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2000
    const-string v9, "wifiPolicy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2001
    const/4 v9, 0x0

    const-string v10, "uid-wifi-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2004
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_7
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2005
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2007
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
