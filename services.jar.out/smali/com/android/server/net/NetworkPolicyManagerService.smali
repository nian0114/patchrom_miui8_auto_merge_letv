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

.field private static final TYPE_DATA:I = 0x0

.field public static final TYPE_LIMIT:I = 0x2

.field public static final TYPE_LIMIT_SNOOZED:I = 0x3

.field public static final TYPE_WARNING:I = 0x1

.field private static final TYPE_WIFI:I = 0x1

.field private static final UID_RULE_CHANGE:Ljava/lang/String; = "NETWORKPOLICY_UID_RULE_CHANGE"

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
    .line 782
    const-string v0, "com.letv.telephonymanager.disabledataconnect"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->DISABLE_DATACONNECT_ACTION:Ljava/lang/String;

    .line 3145
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
    .line 376
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

    .line 378
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

    .line 387
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 292
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 304
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    .line 313
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 315
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    .line 318
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 320
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    .line 322
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 324
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 325
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 328
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 335
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 342
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 344
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 347
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 349
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 352
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 355
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 357
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 412
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    .line 413
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    .line 414
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    .line 415
    iput-wide v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    .line 417
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->screenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->NetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 566
    iput-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    .line 784
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 798
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 809
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    .line 820
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 829
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 849
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 871
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 900
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 918
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 937
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 951
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 978
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1018
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1448
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2089
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->WIFI:I

    .line 2090
    iput v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->MOBILE:I

    .line 2908
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 3602
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$21;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCycleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 3633
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$22;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$22;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeDailyWarningReceiver:Landroid/content/BroadcastReceiver;

    .line 3855
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$23;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$23;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    .line 388
    const-string v1, "missing context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 389
    const-string v1, "missing activityManager"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 390
    const-string v1, "missing powerManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    .line 391
    const-string v1, "missing networkStats"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/INetworkStatsService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    .line 392
    const-string v1, "missing networkManagement"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 393
    const-string v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 395
    const-string v1, "missing TrustedTime"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    .line 396
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 398
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 400
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 402
    iput-boolean p8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 404
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "netpolicy.xml"

    invoke-direct {v2, p7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 406
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 206
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
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidWifiPolicyUncheckedLocked(IIZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;JLandroid/net/NetworkTemplate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 206
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
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->resetBytesLocked(JLandroid/net/NetworkPolicy;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 206
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->formatRealtimeSpeed(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/net/NetworkPolicyManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->reportAgnes(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 3160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 4
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3171
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3173
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3174
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3175
    return-object v0
.end method

.method private buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I

    .prologue
    .line 1168
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
    .line 3710
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.letv.android.server.net.action.SNOOZE_DAILY_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3711
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3712
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3166
    return-object v0
.end method

.method private buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3180
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 3182
    .local v1, "subId":I
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    if-eqz v2, :cond_0

    .line 3183
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.letv.android.supermanager"

    const-string v4, "com.letv.android.supermanager.activity.FlowInfoActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3185
    const-string v2, "current_slot"

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSlotId(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3190
    :goto_0
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3191
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3192
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3193
    return-object v0

    .line 3187
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
    .line 3419
    if-eqz p6, :cond_4

    const-string v15, "last_corrected_total_bytes"

    .line 3421
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

    .line 3423
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

    .line 3425
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

    .line 3427
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

    .line 3430
    .local v16, "idleTimeFlowRemainingBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3431
    .local v10, "currentTime":J
    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3432
    .local v6, "start":J
    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3435
    .local v8, "end":J
    cmp-long v4, v20, v6

    if-ltz v4, :cond_0

    cmp-long v4, v20, v8

    if-lez v4, :cond_1

    .line 3436
    :cond_0
    const-wide/16 v22, -0x1

    .line 3437
    move-wide/from16 v16, v18

    .line 3438
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3442
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

    .line 3445
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3449
    .end local v24    # "token":J
    :cond_1
    if-eqz p6, :cond_3

    .line 3451
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 3452
    .local v12, "freeflowBytes":J
    sub-long p4, p4, v12

    .line 3454
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    const-wide/16 v28, -0x1

    cmp-long v4, v4, v28

    if-nez v4, :cond_5

    const-wide/16 v26, 0x0

    .line 3455
    .local v26, "usedBytes":J
    :goto_1
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3456
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

    .line 3459
    .local v14, "idleTimeFlowInterval":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v10, v11}, Landroid/net/NetworkPolicy;->isDuringIdleTime(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_2

    .line 3460
    cmp-long v4, v16, v26

    if-gez v4, :cond_6

    .line 3461
    const-wide/16 v16, 0x0

    .line 3466
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 3468
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

    .line 3471
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3476
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

    .line 3478
    sub-long v4, v18, v16

    sub-long p4, p4, v4

    .line 3482
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

    .line 3419
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

    .line 3445
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

    .line 3454
    .end local v24    # "token":J
    .restart local v12    # "freeflowBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    sub-long v26, p4, v4

    goto/16 :goto_1

    .line 3463
    .restart local v14    # "idleTimeFlowInterval":Ljava/lang/String;
    .restart local v26    # "usedBytes":J
    :cond_6
    sub-long v16, v16, v26

    goto :goto_2

    .line 3471
    .restart local v24    # "token":J
    :catchall_1
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3482
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
    .line 1436
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1437
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, p1, v2, v3}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 3202
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 3203
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3204
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3206
    :cond_0
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .prologue
    .line 3156
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

    .line 1376
    const/4 v0, 0x0

    .line 1377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 1379
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1381
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1383
    .local v2, "height":I
    invoke-virtual {p1, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1384
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1386
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1387
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1388
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1390
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
    .line 3094
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 3107
    :goto_0
    return-void

    .line 3099
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3102
    :catch_0
    move-exception v0

    .line 3103
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3104
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
    .line 1176
    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNotificationTag(Landroid/net/NetworkPolicy;I)Ljava/lang/String;

    move-result-object v11

    .line 1177
    .local v11, "tag":Ljava/lang/String;
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1178
    .local v19, "builder":Landroid/app/Notification$Builder;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1179
    const-wide/16 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 1186
    .local v31, "res":Landroid/content/res/Resources;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v20

    .line 1187
    .local v20, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v6, v4

    .line 1188
    .local v6, "subId":J
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v36

    .line 1190
    .local v36, "start":J
    packed-switch p2, :pswitch_data_0

    .line 1363
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1364
    .local v9, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v14, v4, [I

    .line 1365
    .local v14, "idReceived":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v13

    const/4 v15, 0x0

    move-object v10, v9

    invoke-interface/range {v8 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v14    # "idReceived":[I
    :goto_1
    return-void

    .line 1192
    :pswitch_0
    const v4, 0x10404a1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1196
    .local v38, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1198
    .local v26, "lastCorrectedRemainingBytes":J
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v42

    .line 1199
    .local v42, "usedDuringCorrection":J
    sub-long v32, v26, v42

    .line 1200
    .local v32, "remainingBytes":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-gez v4, :cond_0

    .line 1201
    const v4, 0x1040749

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v32

    neg-long v12, v0

    invoke-static {v4, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1203
    .local v34, "size":Ljava/lang/String;
    const v4, 0x104074a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1214
    .end local v26    # "lastCorrectedRemainingBytes":J
    .end local v32    # "remainingBytes":J
    .end local v42    # "usedDuringCorrection":J
    .local v18, "body":Ljava/lang/String;
    :goto_2
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1216
    .local v17, "bigicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1217
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1218
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1219
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1221
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v35

    .line 1222
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

    .line 1225
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v39

    .line 1226
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

    .line 1205
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

    .line 1206
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x1040745

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "body":Ljava/lang/String;
    goto/16 :goto_2

    .line 1209
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

    .line 1210
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

    .line 1232
    .end local v18    # "body":Ljava/lang/String;
    .end local v34    # "size":Ljava/lang/String;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    const v4, 0x10404a7

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 1235
    .local v18, "body":Ljava/lang/CharSequence;
    const v24, 0x1080869

    .line 1236
    .local v24, "icon":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080264

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1237
    .local v16, "bigIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1241
    const v4, 0x1040746

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1264
    .restart local v38    # "title":Ljava/lang/CharSequence;
    :goto_3
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1265
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1266
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1267
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1268
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1270
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v25

    .line 1271
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

    .line 1243
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1258
    const/16 v38, 0x0

    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1245
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v4, 0x10404a3

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1246
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1248
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    const v4, 0x10404a4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1249
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1251
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    const v4, 0x10404a5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1252
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1254
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    const v4, 0x10404a6

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1255
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v24, 0x1080078

    .line 1256
    goto :goto_3

    .line 1277
    .end local v16    # "bigIcon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v24    # "icon":I
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1278
    .restart local v26    # "lastCorrectedRemainingBytes":J
    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v40

    .line 1279
    .local v40, "usedDuring":J
    sub-long v28, v40, v26

    .line 1286
    .local v28, "overBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->showEuiNotification(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1287
    move-wide/from16 v0, v28

    long-to-double v4, v0

    const-wide v12, 0x40247ae147ae147bL    # 10.24

    cmpg-double v4, v4, v12

    if-gez v4, :cond_3

    const/16 v30, 0x1

    .line 1288
    .local v30, "overZero":Z
    :goto_4
    if-eqz v30, :cond_4

    .line 1289
    const v4, 0x1040747

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1290
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v4, 0x1040748

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1321
    .end local v30    # "overZero":Z
    .restart local v18    # "body":Ljava/lang/CharSequence;
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1322
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1324
    .local v24, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1325
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1326
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1327
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1329
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v25

    .line 1330
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

    .line 1287
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v24    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v38    # "title":Ljava/lang/CharSequence;
    :cond_3
    const/16 v30, 0x0

    goto :goto_4

    .line 1292
    .restart local v30    # "overZero":Z
    :cond_4
    const v4, 0x1040749

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1294
    .restart local v38    # "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v28

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1295
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x104074a

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "body":Ljava/lang/CharSequence;
    goto :goto_5

    .line 1298
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

    .line 1301
    .restart local v18    # "body":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    .line 1315
    const/16 v38, 0x0

    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1303
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_7
    const v4, 0x10404a8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1304
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1306
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_8
    const v4, 0x10404a9

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1307
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1309
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_9
    const v4, 0x10404aa

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1310
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1312
    .end local v38    # "title":Ljava/lang/CharSequence;
    :pswitch_a
    const v4, 0x10404ab

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 1313
    .restart local v38    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_5

    .line 1335
    .end local v18    # "body":Ljava/lang/CharSequence;
    .end local v26    # "lastCorrectedRemainingBytes":J
    .end local v28    # "overBytes":J
    .end local v38    # "title":Ljava/lang/CharSequence;
    .end local v40    # "usedDuring":J
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getDailyUsageBytes(Landroid/net/NetworkPolicy;)J

    move-result-wide v22

    .line 1336
    .local v22, "dailyUsageBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v22

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v34

    .line 1338
    .restart local v34    # "size":Ljava/lang/String;
    const v4, 0x104074b

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1339
    .restart local v38    # "title":Ljava/lang/CharSequence;
    const v4, 0x104074c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v34, v5, v8

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 1341
    .restart local v18    # "body":Ljava/lang/CharSequence;
    const v4, 0x1080078

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1080265

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1343
    .restart local v17    # "bigicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1344
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1345
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1346
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1349
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeDailyWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v35

    .line 1350
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

    .line 1353
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v39

    .line 1354
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

    .line 1369
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

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_b
    .end packed-switch

    .line 1243
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1301
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

    .line 1397
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1398
    .local v12, "res":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v9, "builder":Landroid/app/Notification$Builder;
    const v0, 0x10404ad

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1401
    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x10404ae

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1403
    .local v8, "body":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1404
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1405
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1406
    const v0, 0x1080078

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1407
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1080265

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1408
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1409
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1410
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1411
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1412
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1060059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1415
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->buildAllowBackgroundDataIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1416
    .local v11, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v0, v4, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1422
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 1424
    .local v6, "idReceived":[I
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v6    # "idReceived":[I
    :goto_0
    return-void

    .line 1427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked()V
    .locals 10

    .prologue
    .line 1745
    const-string v8, "NetworkPolicy"

    const-string v9, "ensureActiveMobilePolicyLocked()"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-boolean v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v8, :cond_1

    .line 1756
    :cond_0
    return-void

    .line 1748
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    .line 1749
    .local v7, "tele":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 1751
    .local v3, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v5

    .line 1752
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

    .line 1753
    .local v4, "subId":I
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 1754
    .local v6, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked(Ljava/lang/String;)V

    .line 1752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ensureActiveMobilePolicyLocked(Ljava/lang/String;)V
    .locals 21
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 1760
    new-instance v2, Landroid/net/NetworkIdentity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1762
    .local v2, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v19, v3, -0x1

    .local v19, "i":I
    :goto_0
    if-ltz v19, :cond_1

    .line 1763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 1764
    .local v5, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v5, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
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

    .line 1793
    :goto_1
    return-void

    .line 1762
    :cond_0
    add-int/lit8 v19, v19, -0x1

    goto :goto_0

    .line 1773
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

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x10e0084

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v10, v3

    const-wide/32 v12, 0x100000

    mul-long v8, v10, v12

    .line 1780
    .local v8, "warningBytes":J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 1781
    .local v20, "time":Landroid/text/format/Time;
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->setToNow()V

    .line 1785
    const/16 v18, 0x1

    .line 1787
    .local v18, "cycleDay":I
    move-object/from16 v0, v20

    iget-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1789
    .local v7, "cycleTimezone":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 1790
    .restart local v5    # "template":Landroid/net/NetworkTemplate;
    new-instance v4, Landroid/net/NetworkPolicy;

    const/4 v6, 0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-direct/range {v4 .. v17}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 1792
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    goto :goto_1
.end method

.method private findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;
    .locals 3
    .param p1, "ident"    # Landroid/net/NetworkIdentity;

    .prologue
    .line 2362
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2363
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2364
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2368
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :goto_1
    return-object v1

    .line 2362
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2368
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

    .line 461
    if-nez p0, :cond_0

    .line 462
    const-string v3, ""

    .line 505
    :goto_0
    return-object v3

    .line 465
    :cond_0
    long-to-float v0, p1

    .line 466
    .local v0, "result":F
    const-string v1, "b/s"

    .line 467
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 468
    const-string v1, "K/s"

    .line 469
    div-float/2addr v0, v7

    .line 471
    :cond_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    .line 472
    const-string v1, "M/s"

    .line 473
    div-float/2addr v0, v7

    .line 475
    :cond_2
    cmpl-float v3, v0, v5

    if-lez v3, :cond_3

    .line 476
    const-string v1, "G/s"

    .line 477
    div-float/2addr v0, v7

    .line 479
    :cond_3
    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    .line 480
    const-string v1, "T/s"

    .line 481
    div-float/2addr v0, v7

    .line 483
    :cond_4
    cmpl-float v3, v0, v5

    if-lez v3, :cond_5

    .line 484
    const-string v1, "P/s"

    .line 485
    div-float/2addr v0, v7

    .line 488
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 489
    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 505
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

    .line 490
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 491
    if-eqz p3, :cond_7

    .line 492
    const-string v3, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 494
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

    .line 496
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 497
    if-eqz p3, :cond_9

    .line 498
    const-string v3, "%.0f"

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

    .line 503
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

    .line 3230
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3231
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3232
    .local v4, "packagesForUid":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 3233
    aget-object v3, v4, v7

    .line 3235
    .local v3, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3236
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3243
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 3237
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3238
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v5, v3

    .line 3240
    goto :goto_0

    .line 3243
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

    .line 3642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3643
    .local v6, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 3644
    .local v9, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 3646
    .local v8, "end":Ljava/util/Calendar;
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3648
    const/16 v0, 0xb

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3649
    const/16 v0, 0xc

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3650
    const/16 v0, 0xd

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3651
    const/16 v0, 0xe

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3653
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3654
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 3656
    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 3657
    .local v12, "totalBytes":J
    iget-object v1, p1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 3659
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

    .line 3123
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

    .line 3129
    :goto_0
    return-wide v0

    .line 3124
    :catch_0
    move-exception v6

    .line 3125
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

    .line 3126
    goto :goto_0

    .line 3127
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3129
    goto :goto_0
.end method

.method private getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J
    .locals 24
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "subId"    # J

    .prologue
    .line 3384
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

    .line 3386
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

    .line 3389
    .local v10, "lastCorrectedRemainingBytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3390
    .local v6, "current":J
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v16

    .line 3391
    .local v16, "start":J
    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3392
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3394
    .local v4, "cr":Landroid/content/ContentResolver;
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-eqz v20, :cond_1

    cmp-long v20, v12, v16

    if-ltz v20, :cond_0

    cmp-long v20, v12, v8

    if-lez v20, :cond_1

    .line 3395
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3397
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

    .line 3398
    .local v14, "monthTotalBytes":J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-nez v20, :cond_1

    .line 3400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3402
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

    .line 3406
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3411
    .end local v14    # "monthTotalBytes":J
    .end local v18    # "token":J
    :cond_1
    :goto_0
    const-wide/16 v20, -0x1

    cmp-long v20, v10, v20

    if-nez v20, :cond_2

    .line 3412
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3415
    :cond_2
    return-wide v10

    .line 3403
    .restart local v14    # "monthTotalBytes":J
    .restart local v18    # "token":J
    :catch_0
    move-exception v5

    .line 3404
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v20, "NetworkPolicy"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3406
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
    .line 2386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 2389
    .local v8, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2390
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v18

    .line 2391
    .local v18, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2395
    :cond_0
    const/4 v9, 0x0

    .line 2414
    :goto_0
    return-object v9

    .line 2391
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2398
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v16

    .line 2401
    .local v16, "currentTime":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 2404
    .local v4, "start":J
    invoke-static/range {v16 .. v18}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 2406
    .local v6, "end":J
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v10

    .line 2409
    .local v10, "totalBytes":J
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_2

    move-object/from16 v0, v18

    iget-wide v12, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2411
    .local v12, "softLimitBytes":J
    :goto_1
    move-object/from16 v0, v18

    iget-wide v2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v20, -0x1

    cmp-long v2, v2, v20

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-wide v14, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2414
    .local v14, "hardLimitBytes":J
    :goto_2
    new-instance v9, Landroid/net/NetworkQuotaInfo;

    invoke-direct/range {v9 .. v15}, Landroid/net/NetworkQuotaInfo;-><init>(JJJ)V

    goto :goto_0

    .line 2409
    .end local v12    # "softLimitBytes":J
    .end local v14    # "hardLimitBytes":J
    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_1

    .line 2411
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

    .line 3730
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubId(I)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 3736
    :goto_0
    return v0

    .line 3732
    :cond_0
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubId(I)I

    move-result v0

    if-ne v0, p0, :cond_1

    move v0, v1

    .line 3733
    goto :goto_0

    .line 3736
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getSubId(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 3739
    const/16 v0, -0x3e8

    .line 3741
    .local v0, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 3742
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 3743
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3746
    :cond_0
    return v0
.end method

.method private static getSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 381
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

    .line 3111
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

    .line 3117
    :goto_0
    return-wide v0

    .line 3112
    :catch_0
    move-exception v6

    .line 3113
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

    .line 3114
    goto :goto_0

    .line 3115
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    move-wide v0, v8

    .line 3117
    goto :goto_0
.end method

.method private initAgnes()Lcom/letv/tracker/agnes/App;
    .locals 3

    .prologue
    .line 3817
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Agnes;->setContext(Landroid/content/Context;)V

    .line 3818
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v1

    const-string v2, "SuperManager"

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v0

    .line 3819
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 3134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3136
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3141
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v1

    .line 3137
    :catch_0
    move-exception v0

    .line 3139
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 3141
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

    .line 3515
    const/4 v1, 0x0

    .line 3517
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

    .line 3518
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

    .line 3520
    .local v3, "totalSet":I
    if-eqz v2, :cond_1

    move v1, v4

    .line 3521
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 3522
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    move v1, v4

    .line 3528
    .end local v2    # "limitSet":I
    .end local v3    # "totalSet":I
    :cond_0
    :goto_1
    return v1

    .restart local v2    # "limitSet":I
    .restart local v3    # "totalSet":I
    :cond_1
    move v1, v5

    .line 3520
    goto :goto_0

    :cond_2
    move v1, v5

    .line 3522
    goto :goto_1

    .line 3524
    .end local v2    # "limitSet":I
    .end local v3    # "totalSet":I
    :catch_0
    move-exception v0

    .line 3525
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
    .line 448
    if-eqz p1, :cond_0

    .line 449
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 451
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 452
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 456
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
    .line 3663
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 3664
    :cond_0
    const/4 v3, 0x0

    .line 3701
    :goto_0
    return v3

    .line 3667
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3668
    .local v1, "cr":Landroid/content/ContentResolver;
    const-wide/16 v8, -0x1

    .line 3669
    .local v8, "warningBytes":J
    const-wide/16 v4, -0x1

    .line 3672
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

    .line 3675
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

    .line 3683
    :goto_1
    const-wide/16 v10, -0x1

    cmp-long v3, v4, v10

    if-eqz v3, :cond_2

    .line 3684
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3685
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3686
    const/16 v3, 0xc

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3687
    const/16 v3, 0xd

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3688
    const/16 v3, 0xe

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/Calendar;->set(II)V

    .line 3690
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v3, v4, v10

    if-lez v3, :cond_2

    .line 3691
    const/4 v3, 0x0

    goto :goto_0

    .line 3678
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    .line 3679
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3695
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

    .line 3697
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3700
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getDailyUsageBytes(Landroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3701
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
    .line 3495
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v8

    .line 3496
    .local v8, "lastCorrectedRemainingBytes":J
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v2

    .line 3497
    .local v2, "usedDuringCorrection":J
    invoke-direct {p0, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->isLimitEnabled(J)Z

    move-result v6

    .local v6, "limitEnabled":Z
    move-object v1, p1

    move-wide v4, v8

    .line 3499
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkPolicy;->isOverLimit(JJZ)Z

    move-result v0

    return v0
.end method

.method static isProcStateAllowedWhileIdle(I)Z
    .locals 1
    .param p0, "procState"    # I

    .prologue
    .line 2632
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

    .line 3536
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 3538
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p3}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3539
    long-to-int v2, p1

    invoke-virtual {v6, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 3540
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 3542
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p3, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v7

    .line 3548
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

    .line 1128
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1129
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 1130
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 1133
    .local v9, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    .line 1134
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

    .line 1135
    .local v10, "subId":I
    invoke-virtual {v12, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 1136
    .local v3, "subscriberId":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 1138
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v13

    .line 1144
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

    .line 1134
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

    .line 1144
    goto :goto_1
.end method

.method private isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 2776
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 2777
    .local v4, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2779
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

    .line 2780
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v3, p1, v5}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2781
    const/4 v6, 0x0

    .line 2784
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_1
    return v6

    .line 2779
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2784
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private static isUidValidForRules(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 2767
    const/16 v0, 0x3f5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3fb

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2769
    :cond_0
    const/4 v0, 0x1

    .line 2772
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizePoliciesLocked()V
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2224
    return-void
.end method

.method private normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V
    .locals 10
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2227
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2228
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v4

    .line 2230
    .local v4, "merged":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 2231
    move-object v0, p1

    .local v0, "arr$":[Landroid/net/NetworkPolicy;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 2234
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v7, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2235
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 2236
    .local v1, "existing":Landroid/net/NetworkPolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v7

    if-lez v7, :cond_2

    .line 2237
    :cond_0
    if-eqz v1, :cond_1

    .line 2238
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

    .line 2240
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2243
    .end local v1    # "existing":Landroid/net/NetworkPolicy;
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    return-void
.end method

.method private notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1155
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_0
    return-void
.end method

.method private notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method private performDailyWarningSnooze(Landroid/net/NetworkTemplate;)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 3716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3717
    .local v4, "token":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3719
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

    .line 3724
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3726
    :goto_0
    return-void

    .line 3721
    :catch_0
    move-exception v2

    .line 3722
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3724
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

    .line 3256
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3257
    .local v5, "res":Landroid/content/res/Resources;
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 3258
    const v6, 0x1040736

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    .line 3266
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3267
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3268
    .local v4, "packagesForUid":[Ljava/lang/String;
    const v6, 0x1080093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    .line 3269
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lt v6, v10, :cond_0

    .line 3270
    aget-object v3, v4, v9

    .line 3271
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/content/res/theme/LeIconCustomHelper;->getCurrentPackageIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3272
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 3274
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3275
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3282
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

    .line 3283
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    .end local v4    # "packagesForUid":[Ljava/lang/String;
    :cond_1
    return-void

    .line 3259
    :cond_2
    if-nez p2, :cond_3

    .line 3260
    const v6, 0x1040735

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    goto :goto_0

    .line 3261
    :cond_3
    if-eqz p3, :cond_1

    .line 3262
    const v6, 0x1040737

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppNameThroughUID(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;

    goto :goto_0

    .line 3279
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "packagesForUid":[Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 3276
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private readPolicyLocked()V
    .locals 32

    .prologue
    .line 1796
    const-string v4, "NetworkPolicy"

    const-string v30, "readPolicyLocked()"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 1803
    const/16 v20, 0x0

    .line 1805
    .local v20, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v20

    .line 1806
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1807
    .local v21, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1810
    const/16 v29, 0x1

    .line 1811
    .local v29, "version":I
    :cond_0
    :goto_0
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_11

    .line 1812
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    .line 1813
    .local v26, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    move/from16 v0, v27

    if-ne v0, v4, :cond_0

    .line 1814
    const-string v4, "policy-list"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1815
    const-string v4, "version"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v29

    .line 1816
    const/4 v4, 0x3

    move/from16 v0, v29

    if-lt v0, v4, :cond_1

    .line 1817
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

    .line 1915
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_0
    move-exception v19

    .line 1917
    .local v19, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeLegacyBackgroundData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1923
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1925
    .end local v19    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-void

    .line 1820
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

    .line 1918
    .end local v21    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "tag":Ljava/lang/String;
    .end local v27    # "type":I
    .end local v29    # "version":I
    :catch_1
    move-exception v19

    .line 1919
    .local v19, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1923
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1823
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

    .line 1824
    const-string v4, "networkTemplate"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v23

    .line 1825
    .local v23, "networkTemplate":I
    const/4 v4, 0x0

    const-string v30, "subscriberId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1827
    .local v25, "subscriberId":Ljava/lang/String;
    const/16 v4, 0x9

    move/from16 v0, v29

    if-lt v0, v4, :cond_3

    .line 1828
    const/4 v4, 0x0

    const-string v30, "networkId"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1832
    .local v22, "networkId":Ljava/lang/String;
    :goto_2
    const-string v4, "cycleDay"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 1834
    .local v6, "cycleDay":I
    const/4 v4, 0x6

    move/from16 v0, v29

    if-lt v0, v4, :cond_4

    .line 1835
    const/4 v4, 0x0

    const-string v30, "cycleTimezone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1839
    .local v7, "cycleTimezone":Ljava/lang/String;
    :goto_3
    const-string v4, "warningBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 1840
    .local v8, "warningBytes":J
    const-string v4, "limitBytes"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .line 1842
    .local v10, "limitBytes":J
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_5

    .line 1843
    const-string v4, "lastLimitSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .line 1850
    .local v14, "lastLimitSnooze":J
    :goto_4
    const/4 v4, 0x4

    move/from16 v0, v29

    if-lt v0, v4, :cond_7

    .line 1851
    const-string v4, "metered"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 1864
    .local v16, "metered":Z
    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v29

    if-lt v0, v4, :cond_8

    .line 1865
    const-string v4, "lastWarningSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v12

    .line 1870
    .local v12, "lastWarningSnooze":J
    :goto_6
    const/4 v4, 0x7

    move/from16 v0, v29

    if-lt v0, v4, :cond_9

    .line 1871
    const-string v4, "inferred"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 1876
    .local v17, "inferred":Z
    :goto_7
    new-instance v5, Landroid/net/NetworkTemplate;

    move/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1878
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

    .line 1920
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

    .line 1921
    .local v19, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    const-string v4, "NetworkPolicy"

    const-string v30, "problem reading network policy"

    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1923
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1830
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

    .line 1837
    .restart local v6    # "cycleDay":I
    :cond_4
    :try_start_6
    const-string v7, "UTC"

    .restart local v7    # "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 1844
    .restart local v8    # "warningBytes":J
    .restart local v10    # "limitBytes":J
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v29

    if-lt v0, v4, :cond_6

    .line 1845
    const-string v4, "lastSnooze"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v14

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1847
    .end local v14    # "lastLimitSnooze":J
    :cond_6
    const-wide/16 v14, -0x1

    .restart local v14    # "lastLimitSnooze":J
    goto :goto_4

    .line 1853
    :cond_7
    packed-switch v23, :pswitch_data_0

    .line 1860
    const/16 v16, 0x0

    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1857
    .end local v16    # "metered":Z
    :pswitch_0
    const/16 v16, 0x1

    .line 1858
    .restart local v16    # "metered":Z
    goto :goto_5

    .line 1867
    :cond_8
    const-wide/16 v12, -0x1

    .restart local v12    # "lastWarningSnooze":J
    goto :goto_6

    .line 1873
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "inferred":Z
    goto :goto_7

    .line 1882
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

    .line 1883
    const-string v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1884
    .local v28, "uid":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1886
    .local v24, "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1887
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

    .line 1923
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

    .line 1889
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

    .line 1891
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_c
    const-string v4, "uid-wifi-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1892
    const-string v4, "uid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v28

    .line 1893
    .restart local v28    # "uid":I
    const-string v4, "wifiPolicy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1895
    .restart local v24    # "policy":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1896
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

    .line 1898
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

    .line 1900
    .end local v24    # "policy":I
    .end local v28    # "uid":I
    :cond_f
    const-string v4, "app-policy"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1901
    const-string v4, "appId"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 1902
    .local v18, "appId":I
    const-string v4, "policy"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v24

    .line 1905
    .restart local v24    # "policy":I
    const/4 v4, 0x0

    move/from16 v0, v18

    invoke-static {v4, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v28

    .line 1906
    .restart local v28    # "uid":I
    invoke-static/range {v28 .. v28}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1907
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    goto/16 :goto_0

    .line 1909
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

    .line 1923
    .end local v18    # "appId":I
    .end local v24    # "policy":I
    .end local v26    # "tag":Ljava/lang/String;
    .end local v28    # "uid":I
    :cond_11
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 1853
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
    .line 3553
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.letv.android.supermanager.ACTION_SIM_MONTH_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3554
    .local v0, "simMonthChangFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCycleChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3557
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.letv.android.server.net.action.SNOOZE_DAILY_WARNING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3558
    .local v1, "snoozeDailyWarningFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeDailyWarningReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3560
    return-void
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 3031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3037
    :goto_0
    return-void

    .line 3032
    :catch_0
    move-exception v0

    .line 3033
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3034
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
    .line 3828
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    if-nez v2, :cond_0

    .line 3829
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initAgnes()Lcom/letv/tracker/agnes/App;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    .line 3830
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkPolicyApp:Lcom/letv/tracker/agnes/App;

    invoke-virtual {v2, p1}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v1

    .line 3831
    .local v1, "widget":Lcom/letv/tracker/agnes/Widget;
    const/4 v0, 0x0

    .line 3832
    .local v0, "event":Lcom/letv/tracker/agnes/Event;
    const-string v2, "1.3.3.1"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3833
    const-string v2, "switch"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3834
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Open:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    .line 3849
    :goto_0
    if-eqz v0, :cond_1

    .line 3850
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    .line 3852
    :cond_1
    return-void

    .line 3836
    :cond_2
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Close:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3837
    :cond_3
    const-string v2, "1.3.3.2.4"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3838
    const-string v2, "switch"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3839
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Open:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3841
    :cond_4
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Close:Lcom/letv/tracker/enums/EventType;

    invoke-virtual {v1, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v0

    goto :goto_0

    .line 3842
    :cond_5
    const-string v2, "1.3.4"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3843
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3846
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
    .line 3564
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .line 3566
    .local v36, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 3568
    .local v26, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 3569
    .local v28, "current":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3570
    .local v6, "start":J
    move-wide/from16 v0, v28

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3573
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

    .line 3575
    .local v34, "monthTotalBytes":J
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 3576
    .local v14, "allUsedBytes":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v30

    .line 3577
    .local v30, "currentRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v22

    .line 3580
    .local v22, "totalBytes":J
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-nez v4, :cond_0

    .line 3581
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

    .line 3584
    :cond_0
    sub-long v20, v30, v22

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move-wide/from16 v24, v14

    invoke-direct/range {v17 .. v25}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRemainingStatusLocked(JJJJ)V

    .line 3587
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mLastTotalBytes:J

    .line 3588
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

    .line 3590
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

    .line 3595
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3597
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

    .line 3592
    :catch_0
    move-exception v27

    .line 3593
    .local v27, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "NetworkPolicy"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3595
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v27    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private sendBoardcast2Freeflow(IZI)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "check"    # Z
    .param p3, "type"    # I

    .prologue
    .line 3905
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3906
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NETWORKPOLICY_UID_RULE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3907
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3908
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3909
    const-string v1, "check"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3910
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3911
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 3020
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 3021
    invoke-static {p1, p2, p3}, Lcom/android/server/NetPluginDelegate;->setQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3027
    :goto_0
    return-void

    .line 3022
    :catch_0
    move-exception v0

    .line 3023
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3024
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
    .line 1528
    return-void
.end method

.method private setUidFirewallRule(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .prologue
    .line 3075
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3076
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3082
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3088
    :goto_1
    return-void

    .line 3077
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3078
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 3083
    :catch_0
    move-exception v0

    .line 3084
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3085
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
    .line 3056
    :try_start_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 3057
    .local v3, "size":I
    new-array v4, v3, [I

    .line 3058
    .local v4, "uids":[I
    new-array v2, v3, [I

    .line 3059
    .local v2, "rules":[I
    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3060
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    .line 3061
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v2, v1

    .line 3059
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3063
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v4, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3069
    .end local v1    # "index":I
    .end local v2    # "rules":[I
    .end local v3    # "size":I
    .end local v4    # "uids":[I
    :goto_1
    return-void

    .line 3064
    :catch_0
    move-exception v0

    .line 3065
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NetworkPolicy"

    const-string v6, "problem setting firewall uid rules"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3066
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
    .line 3041
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2}, Landroid/os/INetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3047
    :goto_0
    return-void

    .line 3042
    :catch_0
    move-exception v0

    .line 3043
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string v2, "problem setting uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3044
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
    .line 2080
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2083
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2084
    if-eqz p3, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2087
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
    .line 2092
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 2093
    .local v1, "policy":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2097
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2103
    :goto_1
    if-eqz p4, :cond_0

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2106
    :cond_0
    return-void

    .line 2092
    .end local v1    # "policy":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2098
    .restart local v1    # "policy":I
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "NetworkPolicy"

    const-string v3, "problem setting uid rules"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2100
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private showEuiNotification(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3511
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
    .line 3503
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

    .line 3504
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

    .line 3505
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

    .line 3506
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

    .line 3507
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .locals 5

    .prologue
    .line 2622
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 2623
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2624
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_0

    .line 2625
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2626
    .local v2, "uid":I
    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2623
    .end local v2    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2629
    :cond_1
    return-void
.end method

.method private updateScreenOn()V
    .locals 2

    .prologue
    .line 2607
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2609
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenOn:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2613
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenLocked()V

    .line 2614
    monitor-exit v1

    .line 2615
    return-void

    .line 2614
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2610
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeLegacyBackgroundData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1932
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "background_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 1936
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    .line 1937
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1939
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1941
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1932
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3199
    return-void
.end method

.method addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 2191
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2192
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2193
    .restart local v0    # "policies":[Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2194
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    .line 2047
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2050
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

    .line 2053
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2055
    .local v0, "oldPolicy":I
    or-int/2addr p2, v0

    .line 2056
    if-eq v0, p2, :cond_1

    .line 2057
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2059
    :cond_1
    monitor-exit v2

    .line 2060
    return-void

    .line 2059
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
    .line 509
    const-string v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 510
    return-void
.end method

.method public bindNotificationManager(Landroid/app/INotificationManager;)V
    .locals 1
    .param p1, "notifManager"    # Landroid/app/INotificationManager;

    .prologue
    .line 513
    const-string v0, "missing INotificationManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 514
    return-void
.end method

.method public checkInternetPermission(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    .line 3211
    const/4 v0, 0x1

    .line 3212
    .local v0, "data":Z
    const/4 v4, 0x0

    .line 3213
    .local v4, "wifi":Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 3214
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 3215
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 3216
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v3

    .line 3217
    .local v3, "policy":I
    if-ne v3, v7, :cond_0

    .line 3218
    const/4 v0, 0x0

    .line 3226
    .end local v3    # "policy":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->postRestrictToast(IZZ)V

    .line 3227
    return-void

    .line 3220
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 3221
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 3222
    .restart local v3    # "policy":I
    if-eqz v3, :cond_0

    .line 3223
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DUMP"

    const-string v16, "NetworkPolicy"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v14, "  "

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v14}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2448
    .local v4, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v0, p3

    array-length v14, v0

    invoke-direct {v2, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 2449
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

    .line 2450
    .local v1, "arg":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2449
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2453
    .end local v1    # "arg":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2454
    :try_start_0
    const-string v14, "--unsnooze"

    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2455
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_1

    .line 2456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 2455
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2459
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2462
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2465
    const-string v14, "Cleared snooze timestamps"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2466
    monitor-exit v15

    .line 2549
    :goto_2
    return-void

    .line 2469
    .end local v5    # "i":I
    :cond_2
    const-string v14, "System ready: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2470
    const-string v14, "Restrict background: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2471
    const-string v14, "Restrict power: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2472
    const-string v14, "Device idle: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2473
    const-string v14, "Network policies:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2475
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_3

    .line 2476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkPolicy;

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2478
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2480
    const-string v14, "Metered ifaces: "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2482
    const-string v14, "Policy for UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2484
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    .line 2485
    .local v11, "size":I
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v11, :cond_4

    .line 2486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 2487
    .local v13, "uid":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 2488
    .local v9, "policy":I
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2490
    const-string v14, " policy="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    const-class v14, Landroid/net/NetworkPolicyManager;

    const-string v16, "POLICY_"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v9}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2485
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2494
    .end local v9    # "policy":I
    .end local v13    # "uid":I
    :cond_4
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2497
    if-lez v11, :cond_6

    .line 2498
    const-string v14, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2500
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v11, :cond_5

    .line 2501
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2503
    const-string v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2505
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2500
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 2507
    :cond_5
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2510
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2511
    if-lez v11, :cond_8

    .line 2512
    const-string v14, "Power save whitelist app ids:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2514
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v11, :cond_7

    .line 2515
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2517
    const-string v14, ": "

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 2519
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2514
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2521
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2524
    :cond_8
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2525
    .local v7, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v14, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v14, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 2528
    const-string v14, "Status for known UIDs:"

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 2530
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 2531
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v11, :cond_a

    .line 2532
    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    .line 2533
    .restart local v13    # "uid":I
    const-string v14, "UID="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 2537
    .local v12, "state":I
    const-string v14, " state="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    invoke-virtual {v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 2539
    const/4 v14, 0x2

    if-gt v12, v14, :cond_9

    const-string v14, " (fg)"

    :goto_8
    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2542
    .local v10, "rule":I
    const-string v14, " rule="

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    const-class v14, Landroid/net/NetworkPolicyManager;

    const-string v16, "RULE_"

    move-object/from16 v0, v16

    invoke-static {v14, v0, v10}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2531
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2539
    .end local v10    # "rule":I
    :cond_9
    const-string v14, " (bg)"

    goto :goto_8

    .line 2547
    .end local v12    # "state":I
    .end local v13    # "uid":I
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 2548
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

    .line 3288
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_network_reset"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3315
    :cond_0
    return-void

    .line 3295
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 3296
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 3297
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

    .line 3298
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3299
    const-wide/16 v8, -0x1

    iput-wide v8, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3300
    iput-boolean v10, v4, Landroid/net/NetworkPolicy;->inferred:Z

    .line 3301
    invoke-virtual {v4}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3297
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3304
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3307
    invoke-virtual {p0, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3309
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_control_apps"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3311
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget v6, v0, v1

    .line 3312
    .local v6, "uid":I
    invoke-virtual {p0, v6, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 3311
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFirewallUidChainRule(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3808
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3809
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

    .line 3810
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
    .line 2198
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2213
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 2214
    .local v3, "size":I
    new-array v2, v3, [Landroid/net/NetworkPolicy;

    .line 2215
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2216
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2203
    .end local v1    # "i":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PHONE_STATE"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2208
    const/4 v4, 0x0

    new-array v2, v4, [Landroid/net/NetworkPolicy;

    .line 2218
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

    .line 2219
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
    .line 2373
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2379
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkQuotaInfoUnchecked(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2381
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
    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3361
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    .local v17, "i":I
    :goto_0
    if-ltz v17, :cond_2

    .line 3362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 3364
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

    .line 3361
    :cond_0
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 3368
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3369
    .local v18, "currentTime":J
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3370
    .local v6, "start":J
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3371
    .local v8, "end":J
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 3373
    .local v14, "totalBytes":J
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v11, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v20

    .line 3374
    .local v20, "lastRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v22

    .line 3376
    .local v22, "usedDuringCorrection":J
    sub-long v4, v20, v22

    monitor-exit v24

    .line 3380
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    .end local v18    # "currentTime":J
    .end local v20    # "lastRemainingBytes":J
    .end local v22    # "usedDuringCorrection":J
    :goto_1
    return-wide v4

    .line 3378
    :cond_2
    monitor-exit v24

    .line 3380
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 3378
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
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v1

    return v0

    .line 2337
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
    .line 2110
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 2114
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
    .line 2119
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v6, "NetworkPolicy"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 2122
    .local v3, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2124
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 2125
    .local v1, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 2126
    .local v2, "uidPolicy":I
    if-ne v2, p1, :cond_0

    .line 2127
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2130
    .end local v1    # "uid":I
    .end local v2    # "uidPolicy":I
    :cond_1
    monitor-exit v5

    .line 2131
    return-object v3

    .line 2130
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

    .line 2419
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v0

    .line 2422
    .local v0, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v0}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2438
    :cond_0
    :goto_0
    return v3

    .line 2427
    :cond_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2428
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findPolicyForNetworkLocked(Landroid/net/NetworkIdentity;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2429
    .local v1, "policy":Landroid/net/NetworkPolicy;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    if-eqz v1, :cond_2

    .line 2432
    iget-boolean v3, v1, Landroid/net/NetworkPolicy;->metered:Z

    goto :goto_0

    .line 2429
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2434
    .restart local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    iget-object v4, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 2435
    .local v2, "type":I
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 2438
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2556
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2557
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
    .line 2562
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
    .line 3150
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->USE_TRUSTED_TIME:Z

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3153
    :cond_0
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2259
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->currentTimeMillis()J

    move-result-wide v0

    .line 2260
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2262
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2263
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2264
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

    .line 2289
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2267
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2278
    :pswitch_0
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "unexpected type"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2269
    :pswitch_1
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2281
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2283
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2284
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2286
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 2287
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2289
    :cond_1
    monitor-exit v4

    .line 2290
    return-void

    .line 2272
    :pswitch_2
    iput-wide v0, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    goto :goto_0

    .line 2275
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->performDailyWarningSnooze(Landroid/net/NetworkTemplate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2267
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
    .line 558
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 559
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 560
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 559
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2166
    return-void
.end method

.method removePoliciesForUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2139
    const-string v6, "NetworkPolicy"

    const-string v7, "removePoliciesForUserLocked()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 2142
    .local v5, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 2143
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2144
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 2145
    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2149
    .end local v4    # "uid":I
    :cond_1
    array-length v6, v5

    if-lez v6, :cond_3

    .line 2150
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, v0, v2

    .line 2151
    .restart local v4    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2152
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2150
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2154
    .end local v4    # "uid":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2156
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
    .line 2064
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2067
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

    .line 2070
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2071
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2072
    .local v0, "oldPolicy":I
    xor-int/lit8 v1, p2, -0x1

    and-int p2, v0, v1

    .line 2073
    if-eq v0, p2, :cond_1

    .line 2074
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V

    .line 2076
    :cond_1
    monitor-exit v2

    .line 2077
    return-void

    .line 2076
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

    .line 2584
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2585
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2586
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2587
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2588
    if-eq v1, v3, :cond_0

    .line 2589
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2591
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 2592
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2596
    .end local v1    # "oldUidState":I
    :cond_0
    return-void
.end method

.method public setDailyWarningBytes(JJ)V
    .locals 11
    .param p1, "subId"    # J
    .param p3, "dailyWarningBytes"    # J

    .prologue
    .line 3752
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3753
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 3754
    monitor-exit v7

    .line 3779
    :goto_0
    return-void

    .line 3757
    :cond_0
    long-to-int v1, p1

    .line 3758
    .local v1, "defaultSubId":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3759
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3761
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

    .line 3758
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3765
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3766
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3768
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

    .line 3769
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

    .line 3773
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3775
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3778
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

    .line 3775
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

    .line 3778
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
    .line 2342
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2345
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eq v0, p1, :cond_1

    .line 2346
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 2347
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2352
    :cond_0
    if-eqz p1, :cond_2

    .line 2353
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    .line 2358
    :cond_1
    :goto_0
    monitor-exit v1

    .line 2359
    return-void

    .line 2355
    :cond_2
    const-string v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 2358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFirewallUidChainRule(IIZ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "networkType"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3786
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3787
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

    .line 3790
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3791
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3793
    .local v2, "token":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3794
    .local v0, "oldPolicy":I
    if-eqz p3, :cond_3

    move v1, v5

    .line 3795
    .local v1, "policy":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 3796
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, p1, v7, p3, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidWifiPolicyUncheckedLocked(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3799
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3801
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3803
    if-nez p3, :cond_2

    move v4, v5

    :cond_2
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->sendBoardcast2Freeflow(IZI)V

    .line 3804
    return-void

    .end local v1    # "policy":I
    :cond_3
    move v1, v4

    .line 3794
    goto :goto_0

    .line 3799
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3801
    .end local v2    # "token":J
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 3
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2181
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2182
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked([Landroid/net/NetworkPolicy;)V

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2184
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2186
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2187
    monitor-exit v1

    .line 2188
    return-void

    .line 2187
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
    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 3321
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v10, v4, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_3

    .line 3322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/NetworkPolicy;

    .line 3324
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

    .line 3321
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 3328
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 3329
    .local v20, "currentTime":J
    move-wide/from16 v0, v20

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 3330
    .local v6, "start":J
    move-wide/from16 v0, v20

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 3331
    .local v8, "end":J
    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v16

    .line 3332
    .local v16, "totalBytes":J
    move-object/from16 v0, v28

    iget-object v5, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getFreeflowTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v22

    .line 3334
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

    .line 3336
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

    .line 3339
    .local v24, "idleTimeFlowRemainingBytes":J
    move-wide/from16 v18, v16

    .line 3340
    .local v18, "allBytes":J
    sub-long v16, v16, v22

    .line 3342
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_2

    .line 3343
    sub-long v4, v26, v24

    sub-long v16, v16, v4

    .line 3346
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v30

    .local v30, "token":J
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    .line 3348
    :try_start_1
    invoke-direct/range {v11 .. v19}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRemainingStatusLocked(JJJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3350
    :try_start_2
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    goto/16 :goto_1

    .line 3355
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

    .line 3350
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

    .line 3355
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

    .line 3356
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 11
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v10, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2294
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2297
    .local v4, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2298
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 2299
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    const-string v7, "com.letv.android.phonecontrol"

    aget-object v8, v2, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2303
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2304
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2305
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2306
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2307
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2308
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2309
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2310
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

    .line 2314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2329
    .end local v0    # "ident":J
    :goto_1
    return-void

    .line 2309
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

    .line 2314
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    move v5, v6

    .line 2310
    goto :goto_0

    .line 2317
    .end local v0    # "ident":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2318
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2319
    :try_start_5
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2320
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 2324
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2325
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v7, v10, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 2324
    :catchall_2
    move-exception v5

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_2
    move v5, v6

    .line 2325
    goto :goto_2
.end method

.method public setUidPolicy(II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2024
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v7, "NetworkPolicy"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2027
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

    .line 2030
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2031
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2033
    .local v2, "token":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2034
    .local v0, "oldPolicy":I
    if-eq v0, p2, :cond_1

    .line 2035
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedLocked(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2038
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2042
    if-nez p2, :cond_2

    :goto_0
    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->sendBoardcast2Freeflow(IZI)V

    .line 2043
    return-void

    .line 2038
    .end local v0    # "oldPolicy":I
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 2040
    .end local v2    # "token":J
    :catchall_1
    move-exception v1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .restart local v0    # "oldPolicy":I
    .restart local v2    # "token":J
    :cond_2
    move v1, v4

    .line 2042
    goto :goto_0
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 2247
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2251
    .local v0, "token":J
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2253
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2255
    return-void

    .line 2253
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady()V
    .locals 30

    .prologue
    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v25

    if-nez v25, :cond_0

    .line 570
    const-string v25, "NetworkPolicy"

    const-string v26, "bandwidth controls disabled, unable to enforce policy"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_0
    return-void

    .line 574
    :cond_0
    const-class v25, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/usage/UsageStatsManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 577
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

    .line 578
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

    .line 580
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

    .line 581
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v19    # "uid":I
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 582
    :catch_0
    move-exception v8

    .line 583
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 587
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 588
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 589
    const-class v25, Landroid/os/PowerManagerInternal;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PowerManagerInternal;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 590
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

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 603
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyLocked()V

    .line 608
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 610
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    .line 615
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 624
    :goto_3
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .local v15, "screenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    const-string v25, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 630
    new-instance v22, Landroid/content/IntentFilter;

    const-string v25, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 632
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

    .line 634
    const-class v25, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static/range {v25 .. v25}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 636
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mTempPowerSaveChangedCallback:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/server/DeviceIdleController$LocalService;->setNetworkPolicyTempWhitelistCallback(Ljava/lang/Runnable;)V

    .line 639
    new-instance v6, Landroid/content/IntentFilter;

    const-string v25, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 640
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

    .line 643
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 644
    .local v12, "packageFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v25, "package"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 646
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

    .line 649
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

    .line 653
    new-instance v20, Landroid/content/IntentFilter;

    invoke-direct/range {v20 .. v20}, Landroid/content/IntentFilter;-><init>()V

    .line 654
    .local v20, "userFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v25, "android.intent.action.USER_REMOVED"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
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

    .line 659
    new-instance v17, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 660
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

    .line 664
    new-instance v5, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.net.action.ALLOW_BACKGROUND"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 665
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

    .line 668
    new-instance v16, Landroid/content/IntentFilter;

    const-string v25, "com.android.server.net.action.SNOOZE_WARNING"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 669
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

    .line 673
    new-instance v23, Landroid/content/IntentFilter;

    const-string v25, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 674
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

    .line 677
    new-instance v24, Landroid/content/IntentFilter;

    const-string v25, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v24 .. v25}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 679
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

    .line 681
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

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "realtime_speed"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 685
    .local v21, "value":I
    new-instance v18, Landroid/os/HandlerThread;

    const-string v25, "realtime"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 686
    .local v18, "thread":Landroid/os/HandlerThread;
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    .line 687
    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v14

    .line 688
    .local v14, "realtimelooper":Landroid/os/Looper;
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    .line 719
    const/16 v25, 0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v25

    if-nez v25, :cond_2

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 723
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

    .line 747
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 748
    .local v11, "mscreenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v25, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->screenOnOffReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 751
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 752
    .restart local v11    # "mscreenFilter":Landroid/content/IntentFilter;
    const-string v25, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->NetworkChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 759
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

    .line 768
    :cond_3
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->registerCustomReceivers()V

    .line 773
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

    .line 774
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

    .line 775
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 776
    .restart local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 610
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

    .line 760
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

    .line 761
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 774
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/16 v25, 0x0

    goto :goto_5

    .line 617
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
    .line 2171
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2174
    return-void
.end method

.method updateNetworkEnabledLocked()V
    .locals 22

    .prologue
    .line 1476
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNetworkEnabledLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1487
    .local v16, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v10, v2

    .line 1488
    .local v10, "defaultSubId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_5

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .line 1491
    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-wide v2, v9, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v12, -0x1

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1492
    :cond_0
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1488
    :goto_1
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 1496
    :cond_1
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1499
    .local v4, "start":J
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1501
    .local v6, "end":J
    iget-object v3, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1508
    .local v14, "totalBytes":J
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v8, p0

    move-wide v12, v4

    .line 1509
    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverlimit(Landroid/net/NetworkPolicy;JJJ)Z

    move-result v20

    .line 1513
    .local v20, "overLimit":Z
    :goto_2
    if-eqz v20, :cond_3

    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const/16 v21, 0x1

    .line 1515
    .local v21, "overLimitWithoutSnooze":Z
    :goto_3
    if-nez v21, :cond_4

    const/16 v19, 0x1

    .line 1517
    .local v19, "networkEnabled":Z
    :goto_4
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_1

    .line 1511
    .end local v19    # "networkEnabled":Z
    .end local v20    # "overLimit":Z
    .end local v21    # "overLimitWithoutSnooze":Z
    :cond_2
    invoke-virtual {v9, v14, v15}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v20

    .restart local v20    # "overLimit":Z
    goto :goto_2

    .line 1513
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 1515
    .restart local v21    # "overLimitWithoutSnooze":Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    .line 1519
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
    .line 1536
    const-string v4, "NetworkPolicy"

    const-string v5, "updateNetworkRulesLocked()"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v50

    .line 1551
    .local v50, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v4, :cond_3

    const/16 v43, 0x1

    .line 1555
    .local v43, "powerSave":Z
    :goto_0
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1556
    .local v19, "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    new-instance v20, Landroid/util/ArraySet;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1557
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

    if-ge v0, v1, :cond_5

    aget-object v49, v17, v28

    .line 1558
    .local v49, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v4, :cond_0

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1563
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v29

    .line 1565
    .local v29, "ident":Landroid/net/NetworkIdentity;
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    .line 1566
    .local v18, "baseIface":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 1567
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    if-eqz v43, :cond_1

    .line 1569
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1575
    :cond_1
    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v48

    .line 1576
    .local v48, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v28    # "i$":I
    .local v27, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/net/LinkProperties;

    .line 1577
    .local v47, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual/range {v47 .. v47}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v46

    .line 1578
    .local v46, "stackedIface":Ljava/lang/String;
    if-eqz v46, :cond_2

    .line 1579
    move-object/from16 v0, v46

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    if-eqz v43, :cond_2

    .line 1581
    move-object/from16 v0, v20

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1541
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

    .line 1738
    :goto_3
    return-void

    .line 1551
    .restart local v50    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 1557
    .restart local v17    # "arr$":[Landroid/net/NetworkState;
    .restart local v19    # "connIdents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;>;"
    .restart local v20    # "connIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v35    # "len$":I
    .restart local v43    # "powerSave":Z
    .restart local v49    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v27, v28, 0x1

    .local v27, "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .restart local v28    # "i$":I
    goto/16 :goto_1

    .line 1589
    .end local v49    # "state":Landroid/net/NetworkState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1590
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v32

    .line 1591
    .local v32, "ifaceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    .local v26, "i":I
    :goto_4
    if-ltz v26, :cond_9

    .line 1592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 1594
    .local v11, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->clear()V

    .line 1595
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v34, v4, -0x1

    .local v34, "j":I
    :goto_5
    if-ltz v34, :cond_7

    .line 1596
    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/util/Pair;

    .line 1597
    .local v30, "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkIdentity;

    invoke-virtual {v5, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1598
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    :cond_6
    add-int/lit8 v34, v34, -0x1

    goto :goto_5

    .line 1602
    .end local v30    # "ident":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/NetworkIdentity;>;"
    :cond_7
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1603
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 1604
    .local v33, "ifaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move-object/from16 v0, v33

    invoke-virtual {v4, v11, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    .end local v33    # "ifaces":[Ljava/lang/String;
    :cond_8
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    .line 1608
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v34    # "j":I
    :cond_9
    const-wide v40, 0x7fffffffffffffffL

    .line 1609
    .local v40, "lowestRule":J
    new-instance v42, Landroid/util/ArraySet;

    move-object/from16 v0, v50

    array-length v4, v0

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 1617
    .local v42, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1620
    .local v22, "currentTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    .end local v17    # "arr$":[Landroid/net/NetworkState;
    .end local v28    # "i$":I
    :goto_6
    if-ltz v26, :cond_1a

    .line 1621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 1622
    .restart local v11    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRules:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [Ljava/lang/String;

    .line 1626
    .restart local v33    # "ifaces":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1627
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1630
    .local v6, "start":J
    move-wide/from16 v0, v22

    invoke-static {v0, v1, v11}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1631
    .local v8, "end":J
    iget-object v5, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v14

    .line 1639
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

    .line 1643
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v54, -0x1

    cmp-long v4, v4, v54

    if-eqz v4, :cond_e

    const/16 v25, 0x1

    .line 1644
    .local v25, "hasWarning":Z
    :goto_8
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v54, -0x1

    cmp-long v4, v4, v54

    if-eqz v4, :cond_f

    const/16 v24, 0x1

    .line 1645
    .local v24, "hasLimit":Z
    :goto_9
    if-nez v24, :cond_a

    iget-boolean v4, v11, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v4, :cond_17

    .line 1647
    :cond_a
    if-nez v24, :cond_10

    .line 1650
    const-wide v44, 0x7fffffffffffffffL

    .line 1694
    .local v44, "quotaBytes":J
    :goto_a
    move-object/from16 v0, v33

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_b

    .line 1696
    const-string v4, "NetworkPolicy"

    const-string v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_b
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

    if-ge v0, v1, :cond_17

    aget-object v31, v17, v27

    .line 1700
    .local v31, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1702
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1703
    if-eqz v43, :cond_c

    .line 1704
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1699
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto :goto_b

    .line 1634
    .end local v6    # "start":J
    .end local v14    # "totalBytes":J
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v24    # "hasLimit":Z
    .end local v25    # "hasWarning":Z
    .end local v27    # "i$":I
    .end local v31    # "iface":Ljava/lang/String;
    .end local v44    # "quotaBytes":J
    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    .line 1635
    .restart local v6    # "start":J
    const-wide/16 v14, 0x0

    .restart local v14    # "totalBytes":J
    goto/16 :goto_7

    .line 1643
    :cond_e
    const/16 v25, 0x0

    goto :goto_8

    .line 1644
    .restart local v25    # "hasWarning":Z
    :cond_f
    const/16 v24, 0x0

    goto :goto_9

    .line 1651
    .restart local v24    # "hasLimit":Z
    :cond_10
    iget-wide v4, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_11

    .line 1654
    const-wide v44, 0x7fffffffffffffffL

    .restart local v44    # "quotaBytes":J
    goto :goto_a

    .line 1662
    .end local v44    # "quotaBytes":J
    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v12, v4

    .line 1663
    .local v12, "subId":J
    iget-object v4, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1664
    const/16 v38, 0x1

    .line 1666
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

    .line 1667
    .local v51, "totalSet":I
    if-eqz v51, :cond_12

    const/16 v38, 0x1

    .line 1672
    .end local v51    # "totalSet":I
    :goto_c
    if-nez v38, :cond_14

    .line 1674
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z

    if-eqz v4, :cond_13

    const-wide v44, 0x7fffffffffffffffL

    .line 1686
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

    .line 1667
    .end local v44    # "quotaBytes":J
    .restart local v51    # "totalSet":I
    :cond_12
    const/16 v38, 0x0

    goto :goto_c

    .line 1668
    .end local v51    # "totalSet":I
    :catch_1
    move-exception v21

    .line 1669
    .local v21, "e":Ljava/lang/Exception;
    const-string v4, "NetworkPolicy"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1674
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_13
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    goto :goto_d

    .line 1677
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v36

    .line 1678
    .local v36, "lastRemainingBytes":J
    const/16 v16, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v52

    .line 1680
    .local v52, "usedDuration":J
    const-wide/16 v4, -0x1

    cmp-long v4, v36, v4

    if-nez v4, :cond_15

    .line 1681
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto :goto_d

    .line 1683
    .end local v44    # "quotaBytes":J
    :cond_15
    const-wide/16 v4, 0x1

    sub-long v54, v36, v52

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto/16 :goto_d

    .line 1689
    .end local v36    # "lastRemainingBytes":J
    .end local v38    # "limitEnabled":Z
    .end local v44    # "quotaBytes":J
    .end local v52    # "usedDuration":J
    :cond_16
    const-wide/16 v4, 0x1

    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v54, v0

    sub-long v54, v54, v14

    move-wide/from16 v0, v54

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v44

    .restart local v44    # "quotaBytes":J
    goto/16 :goto_a

    .line 1710
    .end local v12    # "subId":J
    .end local v44    # "quotaBytes":J
    :cond_17
    if-eqz v25, :cond_18

    iget-wide v4, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v4, v4, v40

    if-gez v4, :cond_18

    .line 1711
    iget-wide v0, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v40, v0

    .line 1713
    :cond_18
    if-eqz v24, :cond_19

    iget-wide v4, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v4, v4, v40

    if-gez v4, :cond_19

    .line 1714
    iget-wide v0, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v40, v0

    .line 1620
    :cond_19
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_6

    .line 1718
    .end local v6    # "start":J
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v14    # "totalBytes":J
    .end local v24    # "hasLimit":Z
    .end local v25    # "hasWarning":Z
    .end local v33    # "ifaces":[Ljava/lang/String;
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    :goto_e
    if-ltz v26, :cond_1b

    .line 1719
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1720
    .restart local v31    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1721
    const-wide v4, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 1722
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1718
    add-int/lit8 v26, v26, -0x1

    goto :goto_e

    .line 1725
    .end local v31    # "iface":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v26, v4, -0x1

    :goto_f
    if-ltz v26, :cond_1d

    .line 1729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1730
    .restart local v31    # "iface":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1731
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1728
    :cond_1c
    add-int/lit8 v26, v26, -0x1

    goto :goto_f

    .line 1734
    .end local v31    # "iface":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 1736
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

    .line 1737
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
    .line 1036
    const-string v2, "NetworkPolicy"

    const-string v3, "updateNotificationsLocked()"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v22, Landroid/util/ArraySet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1040
    .local v22, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 1052
    .local v24, "currentTime":J
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    int-to-long v10, v2

    .line 1053
    .local v10, "defaultSubId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "i":I
    :goto_0
    if-ltz v23, :cond_6

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkPolicy;

    .line 1056
    .local v9, "policy":Landroid/net/NetworkPolicy;
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1053
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_0

    .line 1057
    :cond_1
    invoke-virtual {v9}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1059
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 1062
    .local v4, "start":J
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v9}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1064
    .local v6, "end":J
    iget-object v3, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v12

    .line 1068
    .local v12, "totalBytes":J
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getLastCorrectedRemainingBytesLocked(Landroid/net/NetworkPolicy;J)J

    move-result-wide v26

    .line 1069
    .local v26, "remainingBytes":J
    const/4 v14, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/net/NetworkPolicyManagerService;->calcUsedDuringCorrectAndCurrentLocked(Landroid/net/NetworkPolicy;JJZ)J

    move-result-wide v30

    .line 1070
    .local v30, "usedBytes":J
    sub-long v2, v26, v30

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-ltz v2, :cond_2

    sub-long v2, v26, v30

    const-wide/32 v14, 0x32000

    cmp-long v2, v2, v14

    if-gtz v2, :cond_2

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    :cond_2
    move-object/from16 v14, p0

    move-object v15, v9

    move-wide/from16 v16, v10

    move-wide/from16 v18, v4

    move-wide/from16 v20, v12

    .line 1078
    invoke-direct/range {v14 .. v21}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverlimit(Landroid/net/NetworkPolicy;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1079
    iget-wide v2, v9, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 1080
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto :goto_1

    .line 1082
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1083
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitLocked(Landroid/net/NetworkTemplate;)V

    goto :goto_1

    .line 1087
    :cond_4
    iget-object v2, v9, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitLocked(Landroid/net/NetworkTemplate;)V

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isLimitEnabled(J)Z

    move-result v20

    .line 1092
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

    .line 1094
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    .line 1100
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->isOverDailyWarning(Landroid/net/NetworkPolicy;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2, v12, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueNotification(Landroid/net/NetworkPolicy;IJ)V

    goto/16 :goto_1

    .line 1108
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

    .line 1109
    const-string v2, "NetworkPolicy:allowBackground"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 1113
    :cond_7
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    :goto_2
    if-ltz v23, :cond_9

    .line 1114
    invoke-virtual/range {v22 .. v23}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 1115
    .local v28, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1116
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 1113
    :cond_8
    add-int/lit8 v23, v23, -0x1

    goto :goto_2

    .line 1119
    .end local v28    # "tag":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method updatePowerSaveTempWhitelistLocked()V
    .locals 9

    .prologue
    .line 539
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 540
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 541
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 544
    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v7}, Landroid/os/IDeviceIdleController;->getAppIdTempWhitelist()[I

    move-result-object v6

    .line 545
    .local v6, "whitelist":[I
    if-eqz v6, :cond_1

    .line 546
    move-object v1, v6

    .local v1, "arr$":[I
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v1, v3

    .line 547
    .local v5, "uid":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 550
    .end local v0    # "N":I
    .end local v1    # "arr$":[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "uid":I
    .end local v6    # "whitelist":[I
    :catch_0
    move-exception v7

    .line 552
    :cond_1
    return-void
.end method

.method updatePowerSaveWhitelistLocked()V
    .locals 7

    .prologue
    .line 518
    :try_start_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v4

    .line 519
    .local v4, "whitelist":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 520
    if-eqz v4, :cond_0

    .line 521
    move-object v0, v4

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 522
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v5}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v4

    .line 526
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 527
    if-eqz v4, :cond_1

    .line 528
    move-object v0, v4

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 529
    .restart local v3    # "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uid":I
    .end local v4    # "whitelist":[I
    :catch_0
    move-exception v5

    .line 534
    :cond_1
    return-void
.end method

.method updateRuleForAppIdleLocked(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    const/4 v2, 0x2

    .line 2702
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2712
    :goto_0
    return-void

    .line 2704
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2705
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2706
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2711
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2708
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

    .line 2669
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_1

    .line 2670
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2671
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

    .line 2673
    :cond_0
    invoke-direct {p0, v2, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 2679
    .end local v0    # "appId":I
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2680
    return-void

    .line 2675
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

    .line 2683
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2684
    .local v6, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 2687
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 2688
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "ui":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2689
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2690
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v2

    .line 2691
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

    .line 2692
    .local v5, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2693
    invoke-virtual {v6, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2691
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2688
    .end local v5    # "uid":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2698
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "idleUids":[I
    .end local v3    # "len$":I
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-direct {p0, v12, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2699
    return-void
.end method

.method updateRulesForAppIdleParoleLocked()V
    .locals 2

    .prologue
    .line 2715
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2716
    .local v0, "enableChain":Z
    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2717
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V

    .line 2718
    return-void

    .line 2715
    .end local v0    # "enableChain":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateRulesForDeviceIdleLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2636
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_6

    .line 2639
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2640
    .local v4, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 2641
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 2642
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2643
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2644
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2645
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2646
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2647
    .local v0, "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2648
    .local v3, "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2644
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2651
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 2652
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2653
    .restart local v0    # "appId":I
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2654
    .restart local v3    # "uid":I
    invoke-virtual {v4, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2651
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2642
    .end local v0    # "appId":I
    .end local v3    # "uid":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2657
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

    .line 2658
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2659
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2657
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2662
    :cond_5
    invoke-direct {p0, v8, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRules(ILandroid/util/SparseIntArray;)V

    .line 2665
    .end local v1    # "i":I
    .end local v2    # "ui":I
    .end local v4    # "uidRules":Landroid/util/SparseIntArray;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {p0, v8, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainLocked(IZ)V

    .line 2666
    return-void
.end method

.method updateRulesForGlobalChangeLocked(Z)V
    .locals 10
    .param p1, "restrictedNetworksChanged"    # Z

    .prologue
    .line 2725
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2727
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    .line 2728
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleLocked()V

    .line 2731
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 2732
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v8, 0x2200

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2735
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

    .line 2736
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

    .line 2737
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2738
    .local v5, "uid":I
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    goto :goto_0

    .line 2743
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "uid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/16 v8, 0x3f5

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2744
    const/16 v8, 0x3fb

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2747
    if-eqz p1, :cond_2

    .line 2748
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V

    .line 2749
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 2751
    :cond_2
    return-void
.end method

.method updateRulesForTempWhitelistChangeLocked()V
    .locals 7

    .prologue
    .line 2754
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 2755
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

    .line 2756
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2757
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 2758
    .local v0, "appId":I
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2759
    .local v3, "uid":I
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    .line 2760
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2756
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2763
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
    .line 2798
    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForRules(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2884
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 2804
    .local v2, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_0
    const-string v10, "android.permission.INTERNET"

    invoke-interface {v2, v10, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_0

    .line 2811
    :goto_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 2812
    .local v7, "uidPolicy":I
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v6

    .line 2815
    .local v6, "uidForeground":Z
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2816
    .local v0, "appId":I
    const/4 v8, 0x0

    .line 2817
    .local v8, "uidRules":I
    const/4 v3, 0x0

    .line 2818
    .local v3, "isWifi":Z
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2819
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 2820
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v3, 0x1

    .line 2824
    :cond_2
    :goto_2
    if-eqz v3, :cond_9

    if-nez v6, :cond_9

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_9

    .line 2825
    const/4 v8, 0x1

    .line 2848
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

    .line 2850
    const/4 v8, 0x2

    .line 2854
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

    .line 2856
    const/4 v8, 0x2

    .line 2859
    :cond_5
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 2861
    .local v4, "oldRules":I
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->networkWhiteAppsUid:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2862
    const/4 v8, 0x0

    .line 2864
    :cond_6
    if-nez v8, :cond_e

    .line 2865
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2870
    :goto_4
    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    const/4 v5, 0x1

    .line 2871
    .local v5, "rejectMetered":Z
    :goto_5
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidNetworkRules(IZ)V

    .line 2874
    if-eq v4, v8, :cond_7

    .line 2875
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2880
    :cond_7
    :try_start_1
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;

    invoke-interface {v10, p1, v6}, Landroid/net/INetworkStatsService;->setUidForeground(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2881
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 2820
    .end local v4    # "oldRules":I
    .end local v5    # "rejectMetered":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 2826
    :cond_9
    if-nez v3, :cond_a

    and-int/lit8 v10, v7, 0x1

    if-eqz v10, :cond_a

    .line 2829
    const/4 v8, 0x1

    goto :goto_3

    .line 2830
    :cond_a
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_b

    .line 2831
    if-nez v6, :cond_3

    .line 2833
    const/4 v8, 0x1

    goto :goto_3

    .line 2835
    :cond_b
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v10, :cond_3

    .line 2836
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

    .line 2838
    .local v9, "whitelisted":Z
    :goto_6
    if-nez v9, :cond_3

    if-nez v6, :cond_3

    and-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_3

    .line 2843
    const/4 v8, 0x1

    goto/16 :goto_3

    .line 2836
    .end local v9    # "whitelisted":Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 2867
    .restart local v4    # "oldRules":I
    :cond_e
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, p1, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    .line 2870
    :cond_f
    const/4 v5, 0x0

    goto :goto_5

    .line 2808
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

    .line 2599
    if-gt p2, v3, :cond_1

    move v1, v0

    .line 2600
    .local v1, "oldForeground":Z
    :goto_0
    if-gt p3, v3, :cond_2

    .line 2601
    .local v0, "newForeground":Z
    :goto_1
    if-eq v1, v0, :cond_0

    .line 2602
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2604
    :cond_0
    return-void

    .end local v0    # "newForeground":Z
    .end local v1    # "oldForeground":Z
    :cond_1
    move v1, v2

    .line 2599
    goto :goto_0

    .restart local v1    # "oldForeground":Z
    :cond_2
    move v0, v2

    .line 2600
    goto :goto_1
.end method

.method updateRulesForUidsLocked(Landroid/util/SparseIntArray;)V
    .locals 2
    .param p1, "uids"    # Landroid/util/SparseIntArray;

    .prologue
    .line 2788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2789
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 2788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2791
    :cond_0
    return-void
.end method

.method updateUidStateLocked(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .prologue
    .line 2571
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x10

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2572
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_0

    .line 2574
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2575
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidStateChangeLocked(III)V

    .line 2576
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v1

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdle(I)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2578
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleLocked(I)V

    .line 2581
    :cond_0
    return-void
.end method

.method writePolicyLocked()V
    .locals 12

    .prologue
    .line 1944
    const-string v9, "NetworkPolicy"

    const-string v10, "writePolicyLocked()"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v1, 0x0

    .line 1948
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1950
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1951
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1952
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1954
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    const-string v9, "version"

    const/16 v10, 0xa

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1956
    const-string v9, "restrictBackground"

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1959
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1960
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 1961
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v7, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 1963
    .local v7, "template":Landroid/net/NetworkTemplate;
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1964
    const-string v9, "networkTemplate"

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1965
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 1966
    .local v6, "subscriberId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1967
    const/4 v9, 0x0

    const-string v10, "subscriberId"

    invoke-interface {v4, v9, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1969
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    .line 1970
    .local v3, "networkId":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1971
    const/4 v9, 0x0

    const-string v10, "networkId"

    invoke-interface {v4, v9, v10, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1973
    :cond_1
    const-string v9, "cycleDay"

    iget v10, v5, Landroid/net/NetworkPolicy;->cycleDay:I

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1974
    const/4 v9, 0x0

    const-string v10, "cycleTimezone"

    iget-object v11, v5, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    invoke-interface {v4, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1975
    const-string v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1976
    const-string v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1977
    const-string v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1978
    const-string v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v4, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1979
    const-string v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1980
    const-string v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v4, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1981
    const/4 v9, 0x0

    const-string v10, "network-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1959
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1985
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

    .line 1986
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1987
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 1990
    .local v5, "policy":I
    if-nez v5, :cond_3

    .line 1985
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1992
    :cond_3
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1993
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1994
    const-string v9, "policy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1995
    const/4 v9, 0x0

    const-string v10, "uid-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2015
    .end local v2    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :catch_0
    move-exception v0

    .line 2016
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_4

    .line 2017
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2020
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    return-void

    .line 1998
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

    .line 1999
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 2000
    .restart local v8    # "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidWifiPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2003
    .restart local v5    # "policy":I
    if-nez v5, :cond_6

    .line 1998
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2005
    :cond_6
    const/4 v9, 0x0

    const-string v10, "uid-wifi-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2006
    const-string v9, "uid"

    invoke-static {v4, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2007
    const-string v9, "wifiPolicy"

    invoke-static {v4, v9, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2008
    const/4 v9, 0x0

    const-string v10, "uid-wifi-policy"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 2011
    .end local v5    # "policy":I
    .end local v8    # "uid":I
    :cond_7
    const/4 v9, 0x0

    const-string v10, "policy-list"

    invoke-interface {v4, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2014
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v9, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
