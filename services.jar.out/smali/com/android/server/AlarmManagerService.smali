.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;,
        Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;,
        Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;,
        Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;,
        Lcom/android/server/AlarmManagerService$BatteryReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$Constants;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field private static final CLOSE_DELAY_FUC:Z = false

.field static DEBUG_ALARM_CLOCK:Z = false

.field static DEBUG_BATCH:Z = false

.field static DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static HOLD_ALARM_CONSTANT_OPEN:Z = false

.field private static final HOLD_ALARM_DEBUG:Z = false

.field private static final HOLD_ALARM_SETTING_DEFAULT:I = 0x1

.field private static final HOLD_ALARM_SETTING_FLAG:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x15

.field private static final LEUI_HOLD_ALARM_ENABLE_KEY:Ljava/lang/String; = "LEUI_HOLD_ALARM_ENABLE_KEY"

.field private static final LEUI_HOLD_ALARM_ENABLE_URI:Landroid/net/Uri;

.field private static final LEUI_INTERACTIVE_REBATCH_DELAY:J = 0x1b58L

.field private static final LEUI_INTERACTIVE_TIME_ALIGN_VALUE:J = 0x0L

.field private static final LEUI_MIN_TIME_ALIGN_VALUE:J = 0x493e0L

.field private static final LEUI_NONE_DELAY_TIME_VALUE:J = 0x2932e00L

.field private static final LEUI_NONE_TIME_ALIGN_VALUE:J = 0x5265c0L

.field private static final LEUI_TIMEALIGN_ENABLE_KEY:Ljava/lang/String; = "leui_key_timealign_enable"

.field private static final LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

.field private static final LEUI_TWILIGHT_ENABLE_KEY:Ljava/lang/String; = "leui_key_timealign_twilight_enable"

.field private static final LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

.field static LOG_STACK:Z = false

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field private static final OPEN_MTK_TIMEALIGN:Z = false

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static RECORD_ALARMS_IN_HISTORY:Z = false

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_POWEROFF_WAKEUP_MASK:I = 0x10

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEALIGN_DEBUG:Z = false

.field private static final TIMEALIGN_SETTING_DEFAULT:I = 0x1

.field private static final TIMEALIGN_SETTING_FLAG:I = 0x1

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TWILIGHT_BEGIN:J = 0x5265c00L

.field private static final TWILIGHT_DUR:J = 0x1808580L

.field private static final TWILIGHT_END:J = 0x1808580L

.field private static final TWILIGHT_SETTING_DEFAULT:I = 0x0

.field private static final TWILIGHT_SETTING_FLAG:I = 0x2

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field private static final UTC_2000:J = 0xdc6d62da00L

.field static final WAKEUP_STATS:Z

.field static localLOGV:Z

.field static final mBackgroundIntent:Landroid/content/Intent;

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mGmtOffset:J

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHoldAlarmEnable:Z

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field private mIsLight:Z

.field private mIsPowered:Z

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastPowerTime:J

.field private mLastRebatchTime:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field private mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

.field private mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mNativeData:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextArg:I

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextRtcWakeup:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field private mRebatchCount:J

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private mTimeAlignEnable:Z

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggleWakeupAlarmCount:J

.field private mTwilightEnable:Z

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeupCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 111
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 112
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 113
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 114
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->RECORD_ALARMS_IN_HISTORY:Z

    .line 117
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->LOG_STACK:Z

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 120
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 673
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    .line 3262
    const-string v0, "leui_key_timealign_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

    .line 3265
    const-string v0, "leui_key_timealign_twilight_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

    .line 4105
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    .line 4110
    const-string v0, "LEUI_HOLD_ALARM_ENABLE_KEY"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LEUI_HOLD_ALARM_ENABLE_URI:Landroid/net/Uri;

    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    goto :goto_1

    :cond_2
    move v0, v2

    .line 113
    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 683
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v2, Lcom/android/internal/util/LocalLog;

    const-string v3, "AlarmManager"

    invoke-direct {v2, v3}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 138
    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 143
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 147
    new-instance v2, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 151
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 172
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 179
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 181
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 183
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 188
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 333
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 334
    iput v1, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 348
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 349
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 612
    new-instance v2, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 674
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 678
    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 679
    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 680
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 894
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 897
    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 898
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 899
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1286
    new-instance v2, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 3256
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    .line 3281
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    .line 3282
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    .line 3294
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 3299
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    .line 3300
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    .line 3302
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    .line 3303
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastRebatchTime:J

    .line 4116
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    .line 684
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 685
    return-void

    :cond_0
    move v0, v1

    .line 4116
    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTwilightChange()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/BatteryManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/AlarmManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastPowerTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onBatteryChange()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->onSettingChange(ZI)V

    return-void
.end method

.method static synthetic access$2200(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->isWakeupAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(JJJJ)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # J

    .prologue
    .line 96
    invoke-static/range {p0 .. p7}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->onHoldAlarmSettingChange(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    return p1
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 714
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 715
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 716
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 718
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 719
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private afterTwilightTimeEnd(Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 12
    .param p1, "b"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    const-wide/32 v10, 0x5265c00

    .line 3962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 3965
    .local v2, "daysMillis":J
    const-wide/32 v6, 0x6a6e180

    sub-long/2addr v6, v2

    rem-long v4, v6, v10

    .line 3967
    .local v4, "twilightend2Now":J
    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 3969
    .local v0, "batchStart2Now":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private calculateTwilight(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v2, 0x0

    .line 3598
    const-wide v4, 0xdc6d62da00L

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    .line 3614
    :cond_0
    :goto_0
    return v2

    .line 3604
    :cond_1
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    add-long/2addr v4, p1

    rem-long v0, v4, v6

    .line 3610
    .local v0, "daysMillis":J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_2

    const-wide/32 v4, 0x1808580

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 3612
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private native clear(JIJJ)V
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 688
    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 690
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 693
    :cond_1
    return-wide p0

    .line 688
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delayAlarm(Ljava/lang/String;Ljava/lang/String;II)J
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 4578
    const-wide/16 v8, 0x0

    .line 4580
    .local v8, "time":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAm:Landroid/app/IActivityManager;

    const/4 v5, 0x2

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->isAllowAcquireResource(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    .line 4581
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 4582
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay alarm:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4587
    :cond_0
    :goto_0
    return-wide v8

    .line 4584
    :catch_0
    move-exception v6

    .line 4585
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayAlarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2250
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2251
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2252
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2253
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2254
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2250
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2257
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2227
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2228
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2229
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2230
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2227
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2233
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private final ensureLeuiHoldAlarmPlug()V
    .locals 4

    .prologue
    .line 4169
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    if-nez v0, :cond_0

    .line 4170
    new-instance v0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {v0, v2, v3}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    .line 4172
    :cond_0
    return-void
.end method

.method private final ensureLeuiPlug()V
    .locals 4

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    if-nez v0, :cond_0

    .line 3400
    new-instance v0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;-><init>(JLcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    .line 3402
    :cond_0
    return-void
.end method

.method private findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 10

    .prologue
    .line 1780
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1781
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1782
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1783
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 1784
    .local v4, "intervalTime":J
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->isRtcPowerOffWakeup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1788
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "intervalTime":J
    :goto_1
    return-object v1

    .line 1781
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v4    # "intervalTime":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1788
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v4    # "intervalTime":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 7

    .prologue
    .line 1767
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1768
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1769
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1770
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1776
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 1768
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1774
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1775
    .local v2, "callingPid":I
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstWakeupBatchLocked return null,   this pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findLeuiFirstWakeupBatchLocked(Z)[Lcom/android/server/AlarmManagerService$Batch;
    .locals 10
    .param p1, "twilight"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3983
    const/4 v4, 0x2

    new-array v3, v4, [Lcom/android/server/AlarmManagerService$Batch;

    .line 3984
    .local v3, "wakeups":[Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3986
    .local v0, "N":I
    if-eqz p1, :cond_4

    .line 3988
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3989
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3990
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    aget-object v4, v3, v8

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-eqz v4, :cond_2

    .line 3992
    aput-object v1, v3, v8

    .line 3998
    :cond_0
    :goto_1
    aget-object v4, v3, v8

    if-eqz v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->afterTwilightTimeEnd(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4031
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-object v3

    .line 3993
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    aget-object v4, v3, v9

    if-nez v4, :cond_0

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3995
    aput-object v1, v3, v9

    goto :goto_1

    .line 4004
    :cond_3
    aget-object v4, v3, v9

    if-nez v4, :cond_1

    .line 3988
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4010
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 4011
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 4012
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    aget-object v4, v3, v8

    if-nez v4, :cond_7

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-eqz v4, :cond_7

    .line 4014
    aput-object v1, v3, v8

    .line 4020
    :cond_5
    :goto_3
    aget-object v4, v3, v8

    if-eqz v4, :cond_6

    aget-object v4, v3, v8

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Batch;->end:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 4026
    :cond_6
    aget-object v4, v3, v9

    if-nez v4, :cond_1

    .line 4010
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4015
    :cond_7
    aget-object v4, v3, v9

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4017
    aput-object v1, v3, v9

    goto :goto_3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1920
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "EHm"

    .line 1921
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v2, ""

    :goto_1
    return-object v2

    .line 1920
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string v1, "Ehma"

    goto :goto_0

    .line 1922
    .restart local v0    # "pattern":Ljava/lang/String;
    .restart local v1    # "skeleton":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 2591
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 2594
    long-to-int v0, p0

    .line 2600
    :goto_0
    return v0

    .line 2595
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 2597
    const v0, 0xdbba0

    goto :goto_0

    .line 2600
    :cond_1
    const v0, 0x1b7740

    goto :goto_0
.end method

.method private static getGoogleMaxTriggerTime(JJJJ)J
    .locals 8
    .param p0, "triggerElapsed"    # J
    .param p2, "windowLength"    # J
    .param p4, "interval"    # J
    .param p6, "nowElapsed"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2421
    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 2422
    move-wide v6, p0

    .line 2428
    .local v6, "maxElapsed":J
    :goto_0
    return-wide v6

    .line 2423
    .end local v6    # "maxElapsed":J
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    move-wide v0, p6

    move-wide v2, p0

    move-wide v4, p4

    .line 2424
    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .restart local v6    # "maxElapsed":J
    goto :goto_0

    .line 2426
    .end local v6    # "maxElapsed":J
    :cond_1
    add-long v6, p0, p2

    .restart local v6    # "maxElapsed":J
    goto :goto_0
.end method

.method private getLeuiTimeAlignTime()J
    .locals 2

    .prologue
    .line 3311
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-eqz v0, :cond_1

    .line 3313
    :cond_0
    const-wide/16 v0, 0x0

    .line 3316
    :goto_0
    return-wide v0

    :cond_1
    const-wide/32 v0, 0x493e0

    goto :goto_0
.end method

.method public static getRTCTimeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "rtcMillis"    # J

    .prologue
    .line 2447
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3144
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 3145
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 3146
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 3147
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    .line 3148
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3149
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3151
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3152
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 3153
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 3154
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private final initLeuiHoldAlarmSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 4153
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v2, :cond_0

    .line 4164
    :goto_0
    return-void

    .line 4157
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LEUI_HOLD_ALARM_ENABLE_KEY"

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    .line 4160
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLeuiHoldAlarmSettings mHoldAlarmEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4161
    :catch_0
    move-exception v0

    .line 4162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLeuiHoldAlarmSettings Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4157
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final initLeuiSettings()V
    .locals 4

    .prologue
    .line 3327
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 3331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    .line 3334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    .line 3339
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->registerBattery()V

    .line 3341
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings mTimeAlignDisable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTwilightEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsPowered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3345
    :goto_0
    return-void

    .line 3342
    :catch_0
    move-exception v0

    .line 3343
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings timealign Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final isTwilightAlign()Z
    .locals 4

    .prologue
    .line 3422
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    if-eqz v1, :cond_0

    .line 3423
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 3424
    .local v0, "callingPid":I
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTwilightAlign is true, then usePolicyMakeBatch is true,    this pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    .end local v0    # "callingPid":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isWakeupAlarm(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2438
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2236
    packed-switch p0, :pswitch_data_0

    .line 2245
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 2237
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 2238
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 2239
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 2240
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 2241
    :pswitch_4
    const-string v0, "RTC_POWEROFF_WAKEUP"

    goto :goto_0

    .line 2236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private leUiescheduleKernelAlarmsLocked()V
    .locals 14

    .prologue
    .line 4038
    const-wide/16 v4, 0x0

    .line 4039
    .local v4, "nextNonWakeup":J
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 4041
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 4042
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isTwilightAlign()Z

    move-result v3

    .line 4043
    .local v3, "twilight":Z
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->findLeuiFirstWakeupBatchLocked(Z)[Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 4046
    .local v2, "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    const/4 v10, 0x0

    aget-object v10, v2, v10

    if-eqz v10, :cond_6

    .line 4047
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    const/4 v12, 0x0

    aget-object v12, v2, v12

    iget-wide v12, v12, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 4049
    const/4 v10, 0x0

    aget-object v10, v2, v10

    iget-wide v10, v10, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 4050
    const/4 v10, 0x2

    iget-wide v12, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-direct {p0, v10, v12, v13}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4054
    :cond_0
    const/4 v10, 0x0

    aget-object v10, v2, v10

    if-eq v0, v10, :cond_1

    .line 4055
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 4077
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 4078
    .local v1, "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_2

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iget-wide v12, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 4079
    iget-wide v10, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 4080
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    invoke-virtual {v1, v10, v11}, Lcom/android/server/AlarmManagerService$Batch;->getWhenByElapsedTime(J)J

    move-result-wide v8

    .line 4082
    .local v8, "when":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_2

    .line 4083
    const/4 v10, 0x4

    invoke-direct {p0, v10, v8, v9}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4089
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "twilight":Z
    .end local v8    # "when":J
    :cond_2
    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 4090
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_3

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_4

    .line 4091
    :cond_3
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4094
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v10, v10, v4

    if-eqz v10, :cond_5

    .line 4095
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 4096
    const/4 v10, 0x3

    invoke-direct {p0, v10, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4098
    :cond_5
    return-void

    .line 4057
    .restart local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    .restart local v3    # "twilight":Z
    :cond_6
    const/4 v10, 0x1

    aget-object v10, v2, v10

    if-eqz v10, :cond_8

    .line 4059
    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-direct {p0, v3, v10}, Lcom/android/server/AlarmManagerService;->optimizeKernaelWakeupTime(ZLcom/android/server/AlarmManagerService$Batch;)J

    move-result-wide v6

    .line 4061
    .local v6, "tempNextWakeup":J
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_7

    .line 4063
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 4064
    const/4 v10, 0x2

    iget-wide v12, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-direct {p0, v10, v12, v13}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4068
    :cond_7
    const/4 v10, 0x1

    aget-object v10, v2, v10

    if-eq v0, v10, :cond_1

    .line 4069
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    goto :goto_0

    .line 4073
    .end local v6    # "tempNextWakeup":J
    :cond_8
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    goto :goto_0
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1727
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1728
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1729
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1730
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1731
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1732
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1733
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1734
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1735
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1736
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1737
    const-string v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1732
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1740
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 703
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 706
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 707
    const-wide/16 v0, 0x0

    .line 709
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 703
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4546
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 4547
    const/4 v0, 0x0

    .line 4551
    :goto_0
    return-object v0

    .line 4549
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    aget-object v0, v1, v2

    .line 4550
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    goto :goto_0
.end method

.method private onBatteryChange()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 3568
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBatteryChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3572
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3573
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3575
    :cond_0
    return-void
.end method

.method private onBootCompleted()V
    .locals 4

    .prologue
    .line 4141
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v1, :cond_0

    .line 4146
    :goto_0
    return-void

    .line 4144
    :cond_0
    new-instance v0, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    .line 4145
    .local v0, "observer":Lcom/android/server/AlarmManagerService$HoldAlarmStatuObserver;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->LEUI_HOLD_ALARM_ENABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private onHoldAlarmSettingChange(ZI)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x5

    .line 4289
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldAlarmSettingChange  mHoldAlarmEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 4292
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiHoldAlarmPlug()V

    .line 4294
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4295
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 4299
    :goto_0
    return-void

    .line 4297
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHoldAlarmSettingChange why.............flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onHoldAlarmStart()V
    .locals 1

    .prologue
    .line 4124
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v0, :cond_1

    .line 4133
    :cond_0
    :goto_0
    return-void

    .line 4129
    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    if-nez v0, :cond_0

    .line 4130
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initLeuiHoldAlarmSettings()V

    .line 4131
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiHoldAlarmPlug()V

    goto :goto_0
.end method

.method private onInteractiveChange(Z)V
    .locals 4
    .param p1, "interactive"    # Z

    .prologue
    const/4 v3, 0x5

    .line 3583
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInteractiveChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3585
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3586
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1b58

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3589
    :cond_0
    return-void

    .line 3586
    :cond_1
    const-wide/16 v0, 0xdac

    goto :goto_0
.end method

.method private onSettingChange(ZI)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x5

    .line 3520
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selfChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_0

    .line 3523
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 3525
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3526
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3530
    :goto_0
    return-void

    .line 3528
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChange why.............flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onTimeZoneChange()V
    .locals 4

    .prologue
    .line 3538
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimeZoneChange  align: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", twilight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", light: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v0

    .line 3541
    .local v0, "nowIsLight":Z
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    if-eq v0, v1, :cond_0

    .line 3542
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 3543
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTwilightChange()V

    .line 3545
    :cond_0
    return-void
.end method

.method private onTwilightChange()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 3553
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTwilightChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    if-eqz v0, :cond_0

    .line 3555
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 3557
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3558
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3560
    :cond_0
    return-void
.end method

.method private optimizeKernaelWakeupTime(ZLcom/android/server/AlarmManagerService$Batch;)J
    .locals 18
    .param p1, "twilight"    # Z
    .param p2, "firstTimeAlignWakeup"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 3923
    const-wide/16 v10, 0x0

    .line 3924
    .local v10, "tempNextWakeup":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 3925
    .local v6, "lastAlarmDeliveryTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_0

    .line 3927
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3951
    :goto_0
    return-wide v10

    .line 3928
    :cond_0
    if-eqz p1, :cond_2

    .line 3930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    rem-long v4, v14, v16

    .line 3931
    .local v4, "daysMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3934
    .local v8, "nowElepse":J
    const-wide/32 v14, 0x6a6e180

    sub-long/2addr v14, v4

    const-wide/32 v16, 0x5265c00

    rem-long v12, v14, v16

    .line 3936
    .local v12, "twilightend2Now":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    sub-long v2, v14, v8

    .line 3938
    .local v2, "batchStart2Now":J
    cmp-long v14, v12, v2

    if-lez v14, :cond_1

    .line 3940
    add-long v10, v8, v12

    goto :goto_0

    .line 3943
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v14

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 3944
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    .line 3948
    .end local v2    # "batchStart2Now":J
    .end local v4    # "daysMillis":J
    .end local v8    # "nowElepse":J
    .end local v12    # "twilightend2Now":J
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v14

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 3949
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0
.end method

.method private final rebatchAllHoldAlarmsLocked(JZ)V
    .locals 5
    .param p1, "nowElapsed"    # J
    .param p3, "doValidate"    # Z

    .prologue
    .line 4192
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v4, :cond_1

    .line 4218
    :cond_0
    :goto_0
    return-void

    .line 4195
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    if-nez v4, :cond_0

    .line 4199
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiHoldAlarmPlug()V

    .line 4201
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4207
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 4208
    .local v3, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4209
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4211
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    goto :goto_2

    .line 4214
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 4217
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private registerBattery()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3351
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v1, :cond_0

    .line 3352
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 3356
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    .line 3357
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-eqz v1, :cond_1

    .line 3358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastPowerTime:J

    .line 3362
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3364
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/AlarmManagerService$BatteryReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/AlarmManagerService$BatteryReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3370
    return-void
.end method

.method private removeHoldAlarmLocked(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "opt"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 4221
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v1, :cond_1

    .line 4236
    .end local p1    # "opt":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 4225
    .restart local p1    # "opt":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    if-eqz v1, :cond_0

    .line 4229
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4230
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "opt":Ljava/lang/Object;
    # invokes: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2700(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 4231
    .restart local p1    # "opt":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    .line 4232
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1    # "opt":Ljava/lang/Object;
    # invokes: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(Landroid/app/PendingIntent;)Z
    invoke-static {v0, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$300(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;Landroid/app/PendingIntent;)Z

    move-result v0

    goto :goto_0

    .line 4233
    .restart local p1    # "opt":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4234
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "opt":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(I)Z
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2800(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;I)Z

    move-result v0

    goto :goto_0
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 19
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2005
    const/4 v15, 0x0

    .line 2009
    .local v15, "didRemove":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->removeHoldAlarmLocked(Ljava/lang/Object;)Z

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_3

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Batch;

    .line 2014
    .local v12, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v11, v12, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 2015
    .local v11, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v10, 0x0

    .line 2016
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .local v17, "j":I
    :goto_1
    if-ltz v17, :cond_1

    .line 2017
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2018
    .restart local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2020
    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    .line 2021
    .local v6, "alarmSeconds":J
    iget-wide v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v4, 0x3e8

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v8, v2, v4

    .line 2022
    .local v8, "alarmNanoseconds":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->clear(JIJJ)V

    .line 2023
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 2016
    .end local v6    # "alarmSeconds":J
    .end local v8    # "alarmNanoseconds":J
    :cond_0
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 2026
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v2

    or-int/2addr v15, v2

    .line 2028
    invoke-virtual {v12}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2029
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2012
    :cond_2
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 2032
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v12    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v17    # "j":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_2
    if-ltz v16, :cond_5

    .line 2033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2032
    :cond_4
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 2039
    :cond_5
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_6

    .line 2040
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2041
    .local v13, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2042
    .local v14, "callingUid":I
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeLocked call pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " removeLocked operation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",didRemove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    :cond_6
    if-eqz v15, :cond_b

    .line 2047
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_7

    .line 2048
    const-string v2, "AlarmManager"

    const-string v3, "remove(operation) changed bounds; rebatching"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_7
    const/16 v18, 0x0

    .line 2051
    .local v18, "restorePending":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2052
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2053
    const/16 v18, 0x1

    .line 2055
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2056
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2058
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2059
    if-eqz v18, :cond_a

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2064
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2068
    .end local v18    # "restorePending":Z
    :goto_4
    return-void

    .line 2062
    .restart local v18    # "restorePending":Z
    :cond_a
    const-string v2, "AlarmManager"

    const-string v3, "restorePending is false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2066
    .end local v18    # "restorePending":Z
    :cond_b
    const-string v2, "AlarmManager"

    const-string v3, "didRemove is false"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private runDebugEnable(Ljava/io/PrintWriter;Z)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "enable"    # Z

    .prologue
    .line 4554
    sput-boolean p2, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    .line 4555
    return-void
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 1889
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1890
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1892
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1893
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1894
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1895
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 1896
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1894
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1899
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1902
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1903
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1904
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1905
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "next_alarm_formatted"

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1902
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1899
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1913
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZJ)V
    .locals 24
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "flags"    # I
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "uid"    # I
    .param p18, "leuiTimeAlign"    # Z
    .param p19, "delayTime"    # J

    .prologue
    .line 1150
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    move/from16 v16, p13

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-wide/from16 v20, p19

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZJ)V

    .line 1153
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide/16 v4, 0x1

    cmp-long v3, p19, v4

    if-lez v3, :cond_0

    .line 1154
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 1155
    .local v22, "callingPid":I
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   delayTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   alarm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiHoldAlarmPlug()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    move-object/from16 v0, p12

    # invokes: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(Landroid/app/PendingIntent;)Z
    invoke-static {v3, v0}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$300(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;Landroid/app/PendingIntent;)Z

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->holdAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1163
    .end local v22    # "callingPid":I
    :goto_0
    return-void

    .line 1160
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1161
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    goto :goto_0
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 18
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 1166
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v6, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1175
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1176
    .local v16, "nowElapsed":J
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v4, v4, v16

    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v13

    .line 1177
    .local v13, "fuzz":I
    if-lez v13, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_1

    .line 1179
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1181
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 1182
    .local v12, "delta":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v12

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1190
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1210
    .end local v12    # "delta":I
    .end local v13    # "fuzz":I
    .end local v16    # "nowElapsed":J
    :cond_2
    const/4 v15, -0x1

    .line 1211
    .local v15, "whichBatch":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->attemptCoalesceLocked(Ljava/util/ArrayList;IJJZ)I

    move-result v15

    .line 1220
    :goto_0
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_3

    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1222
    .local v11, "callingPid":I
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   whichBatch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   alarm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    .end local v11    # "callingPid":I
    :cond_3
    if-gez v15, :cond_c

    .line 1226
    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1227
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1238
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_5

    .line 1239
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1242
    :cond_5
    const/4 v14, 0x0

    .line 1244
    .local v14, "needRebatch":Z
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_d

    .line 1245
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 1247
    const/4 v14, 0x1

    .line 1260
    :cond_6
    :goto_2
    if-nez p2, :cond_f

    .line 1261
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v3, :cond_7

    .line 1262
    if-eqz p3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1263
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tipping-point operation: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when(hex)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " whenElapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxWhenElapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1270
    const/4 v14, 0x0

    .line 1274
    :cond_7
    if-eqz v14, :cond_8

    .line 1275
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1278
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1284
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "needRebatch":Z
    .end local v15    # "whichBatch":I
    :goto_3
    return-void

    .line 1193
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_2

    .line 1196
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0xe

    if-nez v3, :cond_2

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1202
    .restart local v11    # "callingPid":I
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",   mPendingIdleUntil != null !!! return   alarm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1215
    .end local v11    # "callingPid":I
    .restart local v15    # "whichBatch":I
    :cond_a
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    const/4 v15, -0x1

    :goto_4
    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v15

    goto :goto_4

    .line 1229
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1230
    .restart local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1

    .line 1248
    .restart local v14    # "needRebatch":Z
    :cond_d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 1249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 1250
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_6

    .line 1255
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 1281
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1282
    .restart local v11    # "callingPid":I
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rebatching = true , and pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 2193
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2197
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 2198
    const-wide/16 v4, 0x0

    .line 2199
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 2205
    .local v6, "alarmNanoseconds":J
    :goto_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set alarm to RTC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,      when = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->LOG_STACK:Z

    if-eqz v0, :cond_0

    .line 2208
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2209
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2210
    .local v9, "callingUid":I
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAlarm call pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    .end local v8    # "callingPid":I
    .end local v9    # "callingUid":I
    :cond_0
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 2223
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 2201
    :cond_1
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 2202
    .restart local v4    # "alarmSeconds":J
    const-wide/16 v0, 0x3e8

    rem-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 2215
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2216
    .restart local v8    # "callingPid":I
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the mNativeData from RTC is abnormal,  mNativeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",   this pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 2218
    .local v10, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v10, Landroid/os/Message;->what:I

    .line 2220
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2221
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v10, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private showUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4538
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "LeWidgetsManager dump options"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4539
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DEBUG TAG may be one of"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4541
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "set key value"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  key may be one of:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4543
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    holdalarm  :  HOLD_ALARM_CONSTANT_OPEN                     VALUE(true|false)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4544
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 17

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v13, :cond_1

    .line 1858
    :cond_0
    return-void

    .line 1810
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1812
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1813
    .local v11, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 1815
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1816
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_5

    .line 1817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1818
    .local v6, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1820
    .local v1, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_4

    .line 1821
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1822
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v13, :cond_3

    .line 1823
    iget v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1825
    .local v12, "userId":I
    sget-boolean v13, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v13, :cond_2

    .line 1826
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found AlarmClockInfo at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for user "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_2
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    .line 1833
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1820
    .end local v12    # "userId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1816
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1840
    .end local v1    # "M":I
    .end local v6    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "j":I
    :cond_5
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1841
    .local v3, "NN":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_7

    .line 1842
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1843
    .local v10, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1844
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1845
    .local v7, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1846
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1841
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1851
    .end local v7    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v10    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "userId":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1852
    .local v4, "NNN":I
    add-int/lit8 v8, v4, -0x1

    :goto_3
    if-ltz v8, :cond_0

    .line 1853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 1854
    .restart local v12    # "userId":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_8

    .line 1855
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 1852
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_3
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v3, 0x4

    .line 1862
    if-eqz p2, :cond_1

    .line 1863
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_0

    .line 1864
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1875
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1876
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 1878
    return-void

    .line 1869
    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_2

    .line 1870
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private final useHoldAlarmsPolicy()Z
    .locals 1

    .prologue
    .line 4180
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v0, :cond_0

    .line 4181
    const/4 v0, 0x0

    .line 4184
    :goto_0
    return v0

    .line 4183
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiHoldAlarmPlug()V

    .line 4184
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    goto :goto_0
.end method

.method private final useLeuiSetKernelAlarms()Z
    .locals 1

    .prologue
    .line 3438
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final usePolicyMakeBatch()Z
    .locals 2

    .prologue
    .line 3410
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 3411
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    if-eqz v0, :cond_0

    .line 3412
    const-string v0, "AlarmManager"

    const-string v1, "mTimeAlignEnable is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isTwilightAlign()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 9

    .prologue
    .line 1743
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_1

    .line 1744
    const-wide/high16 v4, -0x8000000000000000L

    .line 1745
    .local v4, "lastTime":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1746
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1747
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1748
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    .line 1750
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1752
    :cond_0
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is out of order"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 1755
    const/4 v6, 0x0

    .line 1759
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastTime":J
    :goto_1
    return v6

    :cond_1
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 724
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 725
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 726
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 727
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 725
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 637
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 640
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 641
    const/4 v2, 0x0

    .line 648
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 649
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 650
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    .line 651
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 652
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 656
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v5, v6, :cond_5

    .line 658
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 659
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 636
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 642
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_4

    .line 643
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 645
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 664
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_2

    .line 665
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_2

    .line 669
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method public canDelay(JJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z
    .locals 7
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J
    .param p5, "flags"    # I
    .param p6, "type"    # I
    .param p7, "operation"    # Landroid/app/PendingIntent;
    .param p8, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v0, 0x0

    .line 4605
    if-eqz p8, :cond_1

    .line 4617
    :cond_0
    :goto_0
    return v0

    .line 4607
    :cond_1
    sub-long v2, p3, p1

    const-wide/32 v4, 0x2932e00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 4612
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 4614
    invoke-static {p6}, Lcom/android/server/AlarmManagerService;->isWakeupAlarm(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4617
    const/4 v0, 0x1

    goto :goto_0
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2605
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_1

    .line 2618
    :cond_0
    :goto_0
    return v2

    .line 2608
    :cond_1
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 2611
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-ltz v3, :cond_0

    .line 2617
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2618
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method checkReleaseWakeLock()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1987
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 1997
    :goto_0
    return v2

    .line 1991
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1992
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1993
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1994
    goto :goto_0

    .line 1991
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1997
    .end local v1    # "uid":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2577
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2578
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2580
    const-wide/32 v2, 0x1d4c0

    .line 2586
    :goto_0
    return-wide v2

    .line 2581
    :cond_0
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 2583
    const-wide/32 v2, 0xdbba0

    goto :goto_0

    .line 2586
    :cond_1
    const-wide/32 v2, 0x36ee80

    goto :goto_0
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;JZ)V
    .locals 24
    .param p2, "nowELAPSED"    # J
    .param p4, "kernel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 2631
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2632
    const/16 v18, 0x0

    .line 2633
    .local v18, "hasWakeup":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 2634
    .local v22, "nowRTC":J
    const/16 v20, 0x0

    .line 2635
    .local v20, "needRebatch":Z
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_12

    .line 2636
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2637
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    const/4 v14, 0x1

    .line 2639
    .local v14, "allowWhileIdle":Z
    :goto_1
    :try_start_0
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_0

    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 2641
    :cond_0
    const/16 v18, 0x1

    .line 2642
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    .line 2645
    :cond_1
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->RECORD_ALARMS_IN_HISTORY:Z

    if-eqz v5, :cond_4

    .line 2646
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_3

    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2647
    const/16 v21, 0x0

    .local v21, "wi":I
    :goto_2
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_4

    .line 2648
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2647
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 2637
    .end local v14    # "allowWhileIdle":Z
    .end local v21    # "wi":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 2652
    .restart local v14    # "allowWhileIdle":Z
    :cond_3
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2656
    :cond_4
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_5

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_5
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->LOG_STACK:Z

    if-eqz v5, :cond_6

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_6
    iget-object v4, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.ALARM_COUNT"

    iget v9, v13, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v10, 0x0

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    :goto_3
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2664
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2665
    :cond_7
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2668
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_8

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeLock.acquire alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", alarm.type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2672
    :cond_9
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    iget v12, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-direct/range {v4 .. v12}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;JI)V

    .line 2677
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2679
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    iget v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->checkReleaseWakeLock()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2682
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2683
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_a

    const-string v5, "AlarmManager"

    const-string v6, "AM WakeLock Released Internally deliverAlarms"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_a
    if-eqz v14, :cond_b

    .line 2689
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-wide/from16 v0, p2

    invoke-virtual {v5, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2692
    :cond_b
    iget-object v15, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2693
    .local v15, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2694
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_e

    .line 2695
    const/4 v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2696
    move-wide/from16 v0, p2

    iput-wide v0, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2700
    :goto_4
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v17, v0

    .line 2701
    .local v17, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2702
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_10

    .line 2703
    const/4 v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2704
    move-wide/from16 v0, p2

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2708
    :goto_5
    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_c

    iget v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    .line 2711
    :cond_c
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2712
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2713
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_11

    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 2714
    const/16 v21, 0x0

    .restart local v21    # "wi":I
    :goto_6
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_f

    .line 2715
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 2714
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2658
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v21    # "wi":I
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2698
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_e
    iget v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v15, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 2724
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v16

    .line 2725
    .local v16, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v13, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_f

    .line 2728
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2635
    .end local v16    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_f
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 2706
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_10
    :try_start_1
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2730
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_1
    move-exception v16

    .line 2731
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2720
    .end local v16    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_11
    :try_start_2
    iget-object v5, v13, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v8, v13, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 2736
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "allowWhileIdle":Z
    .end local v15    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v17    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_12
    if-eqz p4, :cond_13

    if-eqz v18, :cond_13

    .line 2738
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    .line 2745
    :cond_13
    return-void
.end method

.method public dumpHid(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4526
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    .line 4527
    iput-object p3, p0, Lcom/android/server/AlarmManagerService;->mArgs:[Ljava/lang/String;

    .line 4528
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mNextArg:I

    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 4529
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 4530
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "-h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4531
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/AlarmManagerService;->showUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4536
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4532
    .restart local v0    # "cmd":Ljava/lang/String;
    :cond_1
    const-string v1, "holdalarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4533
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->nextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/AlarmManagerService;->runDebugEnable(Ljava/io/PrintWriter;Z)V

    goto :goto_0
.end method

.method dumpHoldAlarmImpl(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 17
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowRTC"    # J
    .param p5, "nowELAPSED"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 4307
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    if-nez v6, :cond_0

    .line 4308
    const-string v6, "  Hold alarm function is closed..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4341
    :goto_0
    return-void

    .line 4312
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Recent Hold alarm, enable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/AlarmManagerService;->mHoldAlarmEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4315
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$3200(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 4316
    const-string v6, ", lastHoldTime: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$3200(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)J

    move-result-wide v6

    move-wide/from16 v0, p5

    move-object/from16 v2, p1

    invoke-static {v6, v7, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 4317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J
    invoke-static {v8}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$3200(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)J

    move-result-wide v8

    sub-long v10, p3, p5

    add-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4319
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4321
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    if-nez v6, :cond_2

    .line 4322
    const-string v6, "  mLeuiHoldAlarmPlus is null..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4324
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_3

    .line 4325
    const-string v6, "  now hold alarm is null..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4327
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4328
    const-string v6, "  now hold alarm is empty..."

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4332
    :cond_4
    const/4 v4, 0x1

    .line 4333
    .local v4, "i":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mLeuiHoldAlarmPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    # getter for: Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .line 4334
    .local v16, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4335
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4336
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<-------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v13, v4, 0x1

    .end local v4    # "i":I
    .local v13, "i":I
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "------->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v12, p7

    .line 4337
    invoke-virtual/range {v5 .. v12}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    move v4, v13

    .line 4338
    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 4340
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .locals 46
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v45, v0

    monitor-enter v45

    .line 1475
    :try_start_0
    const-string v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1477
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1480
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1481
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  HOLD_ALARM_CONSTANT_OPEN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/AlarmManagerService;->HOLD_ALARM_CONSTANT_OPEN:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const-string v5, "  nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1486
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    const-string v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1488
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1489
    const-string v5, "  mLastTimeChangeClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1490
    const-string v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    const-string v5, "  mLastTimeChangeRealtime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1492
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1493
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1494
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_0

    .line 1495
    const-string v5, "  Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1496
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1497
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1498
    const-string v5, "  Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1499
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1500
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1501
    const-string v5, "  Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1502
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1503
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1504
    const-string v5, "  Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1505
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1506
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1509
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v10, v8

    add-long v34, v6, v14

    .line 1510
    .local v34, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v14, v10, v8

    add-long v32, v6, v14

    .line 1511
    .local v32, "nextNonWakeupRTC":J
    const-string v5, "  Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1512
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1513
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v32

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    const-string v5, "  Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1515
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v34

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    const-string v5, "  Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1518
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1519
    const-string v5, "  Next alarm clock information: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v44, Ljava/util/TreeSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/TreeSet;-><init>()V

    .line 1521
    .local v44, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_1

    .line 1522
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1521
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 1524
    :cond_1
    const/16 v25, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_2

    .line 1525
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1524
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1527
    :cond_2
    invoke-virtual/range {v44 .. v44}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1528
    .local v43, "user":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1529
    .local v31, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v38

    .line 1530
    .local v38, "time":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v36

    .line 1531
    .local v36, "pendingSend":Z
    const-string v5, "    user:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1532
    const-string v5, " pendingSend:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1533
    const-string v5, " time:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1534
    const-wide/16 v6, 0x0

    cmp-long v5, v38, v6

    if-lez v5, :cond_3

    .line 1535
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v38

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1536
    const-string v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v38

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1538
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_2

    .line 1723
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "i":I
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v32    # "nextNonWakeupRTC":J
    .end local v34    # "nextWakeupRTC":J
    .end local v36    # "pendingSend":Z
    .end local v38    # "time":J
    .end local v43    # "user":I
    .end local v44    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1529
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v25    # "i":I
    .restart local v26    # "i$":Ljava/util/Iterator;
    .restart local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v32    # "nextNonWakeupRTC":J
    .restart local v34    # "nextWakeupRTC":J
    .restart local v43    # "user":I
    .restart local v44    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_4
    const-wide/16 v38, 0x0

    goto :goto_3

    .line 1540
    .end local v31    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v43    # "user":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1541
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1542
    const-string v5, "  Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1544
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1545
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1546
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_4

    .line 1549
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 1550
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1551
    const-string v5, "    Idle mode state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const-string v5, "      Idling until: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_a

    .line 1554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v15, "        "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1559
    :goto_5
    const-string v5, "      Pending alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v7, "      "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1562
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_9

    .line 1563
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1564
    const-string v5, "  Next wake from idle: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1568
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1569
    const-string v5, "  Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 1571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1576
    :goto_6
    const-string v5, "    Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1577
    const-string v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1578
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1579
    const-string v5, "    Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1580
    const-string v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1582
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1584
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1585
    const-string v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1586
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1588
    const-string v5, "  mAllowWhileIdleMinTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1590
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1592
    const-string v5, "  Last allow while idle dispatch times:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    const/16 v25, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_c

    .line 1594
    const-string v5, "  UID "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1596
    const-string v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1599
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1593
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 1557
    :cond_a
    const-string v5, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1574
    :cond_b
    const-string v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1602
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1604
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v6, "  Recent problems"

    const-string v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1605
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1608
    :cond_d
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v41, v0

    .line 1609
    .local v41, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v22, Lcom/android/server/AlarmManagerService$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1620
    .local v22, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    .line 1621
    .local v30, "len":I
    const/16 v29, 0x0

    .local v29, "iu":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_14

    .line 1622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/ArrayMap;

    .line 1623
    .local v42, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    .local v27, "ip":I
    :goto_9
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_13

    .line 1624
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1625
    .local v21, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v28, 0x0

    .local v28, "is":I
    :goto_a
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_12

    .line 1626
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1627
    .local v24, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v30, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v30

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v37

    .line 1629
    .local v37, "pos":I
    :goto_b
    if-gez v37, :cond_e

    .line 1630
    move/from16 v0, v37

    neg-int v5, v0

    add-int/lit8 v37, v5, -0x1

    .line 1632
    :cond_e
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v37

    if-ge v0, v5, :cond_10

    .line 1633
    move-object/from16 v0, v41

    array-length v5, v0

    sub-int v5, v5, v37

    add-int/lit8 v23, v5, -0x1

    .line 1634
    .local v23, "copylen":I
    if-lez v23, :cond_f

    .line 1635
    add-int/lit8 v5, v37, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v37

    move-object/from16 v2, v41

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1637
    :cond_f
    aput-object v24, v41, v37

    .line 1638
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v30

    if-ge v0, v5, :cond_10

    .line 1639
    add-int/lit8 v30, v30, 0x1

    .line 1625
    .end local v23    # "copylen":I
    :cond_10
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 1627
    .end local v37    # "pos":I
    :cond_11
    const/16 v37, 0x0

    goto :goto_b

    .line 1623
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_12
    add-int/lit8 v27, v27, 0x1

    goto :goto_9

    .line 1621
    .end local v21    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_13
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_8

    .line 1645
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_14
    if-lez v30, :cond_16

    .line 1646
    const-string v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    const/16 v25, 0x0

    :goto_c
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_16

    .line 1648
    aget-object v24, v41, v25

    .line 1649
    .restart local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1650
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_15

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1651
    :cond_15
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1652
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1653
    const-string v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1654
    const-string v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1655
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1657
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1647
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_c

    .line 1662
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_16
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1663
    const-string v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 1665
    .local v40, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v29, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1c

    .line 1666
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/util/ArrayMap;

    .line 1667
    .restart local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v27, 0x0

    .restart local v27    # "ip":I
    :goto_e
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1b

    .line 1668
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1669
    .restart local v21    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_17

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    :cond_17
    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1672
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1673
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1674
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1675
    const-string v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1676
    const-string v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 1678
    const/16 v28, 0x0

    .restart local v28    # "is":I
    :goto_f
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_18

    .line 1679
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    add-int/lit8 v28, v28, 0x1

    goto :goto_f

    .line 1681
    :cond_18
    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1682
    const/16 v25, 0x0

    :goto_10
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v25

    if-ge v0, v5, :cond_1a

    .line 1683
    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1684
    .restart local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_19

    const-string v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1686
    :cond_19
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1687
    const-string v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1688
    const-string v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1689
    const-string v5, " alarms, last "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1691
    const-string v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    const-string v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1682
    add-int/lit8 v25, v25, 0x1

    goto :goto_10

    .line 1667
    .end local v24    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_e

    .line 1665
    .end local v21    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v28    # "is":I
    :cond_1b
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_d

    .line 1721
    .end local v27    # "ip":I
    .end local v42    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_1c
    const-string v15, "    "

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService;->dumpHoldAlarmImpl(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1723
    monitor-exit v45
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 970
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 974
    return-void

    .line 972
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1798
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1799
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v1

    return-object v0

    .line 1800
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .prologue
    .line 1792
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1793
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1794
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 2148
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_2

    .line 2149
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 2150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2151
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 2152
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2153
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 2154
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2155
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 2156
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2158
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v3, v7}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;JZ)V

    .line 2159
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2161
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2162
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 2163
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 2164
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 2173
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->onInteractiveChange(Z)V

    .line 2175
    return-void

    .line 2168
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2179
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2180
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 2189
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 2178
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2184
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2185
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 2186
    goto :goto_1

    .line 2184
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2189
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x0

    .line 3445
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 3446
    new-instance v0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    .line 3448
    .local v0, "observer":Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3449
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3453
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onBootCompleted()V

    .line 3456
    .end local v0    # "observer":Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 903
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 904
    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 907
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mAm:Landroid/app/IActivityManager;

    .line 911
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    if-nez v3, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initLeuiSettings()V

    .line 913
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 918
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onHoldAlarmStart()V

    .line 924
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 925
    :cond_1
    const-string v3, "persist.sys.timezone"

    const-string v4, "Asia/Shanghai"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_2
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 931
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "*alarm*"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 933
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x50000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v3, v6, v4, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4000000

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v3, v6, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 944
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 945
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 946
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 947
    new-instance v3, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 948
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 950
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    .line 951
    new-instance v2, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v2, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 952
    .local v2, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 957
    .end local v2    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_0
    const-string v3, "alarm"

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 958
    return-void

    .line 954
    :cond_3
    const-string v3, "AlarmManager"

    const-string v4, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 20
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .prologue
    .line 781
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 782
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v4, v5, v6}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v8

    .line 784
    .local v8, "whenElapsed":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    if-eqz v4, :cond_0

    .line 786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move-wide/from16 v6, p2

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v18

    .line 801
    .local v18, "maxElapsed":J
    :goto_0
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 802
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 803
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 804
    return-void

    .line 788
    .end local v18    # "maxElapsed":J
    :cond_0
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 790
    move-wide/from16 v18, v8

    .restart local v18    # "maxElapsed":J
    goto :goto_0

    .line 795
    .end local v18    # "maxElapsed":J
    :cond_1
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v14, p2

    invoke-static/range {v8 .. v15}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v18

    .restart local v18    # "maxElapsed":J
    goto :goto_0
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 736
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 737
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 14
    .param p1, "doValidate"    # Z

    .prologue
    .line 742
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 743
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 744
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 745
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 746
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 747
    .local v6, "oldBatches":I
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rebatchAllAlarmsLocked begin oldBatches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    .line 751
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastRebatchTime:J

    .line 756
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->rebatchAllHoldAlarmsLocked(JZ)V

    .line 759
    const/4 v2, 0x0

    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 760
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 761
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 763
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 764
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 763
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 759
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v7, v9, :cond_2

    .line 768
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rebatching: idle until changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v9, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 776
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 777
    const-string v9, "AlarmManager"

    const-string v10, "rebatchAllAlarmsLocked end"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 10
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2558
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2559
    .local v6, "numBatches":I
    const/4 v4, 0x0

    .local v4, "nextBatch":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 2560
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2561
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v7, v8, p2

    if-lez v7, :cond_1

    .line 2574
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2565
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2566
    .local v5, "numAlarms":I
    const/4 v3, 0x0

    .local v3, "nextAlarm":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2567
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2568
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v2, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, p4, p5, v7, v8}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 2571
    .local v2, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2566
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2559
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1018
    if-nez p1, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1022
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1023
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2071
    const/4 v3, 0x0

    .line 2075
    .local v3, "didRemove":Z
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeHoldAlarmLocked(Ljava/lang/Object;)Z

    .line 2078
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 2079
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2080
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2081
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2082
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2078
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2085
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_1
    if-ltz v4, :cond_3

    .line 2086
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2088
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2085
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 2092
    :cond_3
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_4

    .line 2093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2094
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2095
    .local v2, "callingUid":I
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removeLocked call pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", call uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removeLocked packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",didRemove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    :cond_4
    if-eqz v3, :cond_6

    .line 2100
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v5, :cond_5

    .line 2101
    const-string v5, "AlarmManager"

    const-string v6, "remove(package) changed bounds; rebatching"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_5
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2105
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2107
    :cond_6
    return-void
.end method

.method removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2110
    const/4 v1, 0x0

    .line 2114
    .local v1, "didRemove":Z
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->removeHoldAlarmLocked(Ljava/lang/Object;)Z

    .line 2117
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2118
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2119
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2120
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2121
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2117
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2124
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2125
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 2128
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2124
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2131
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 2132
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 2133
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2131
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2137
    :cond_5
    if-eqz v1, :cond_7

    .line 2138
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_6

    .line 2139
    const-string v3, "AlarmManager"

    const-string v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2143
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2145
    :cond_7
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1933
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->useLeuiSetKernelAlarms()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1934
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->leUiescheduleKernelAlarmsLocked()V

    .line 1935
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1936
    .local v0, "callingPid":I
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "useLeuiSetKernelAlarms = true !!! return,   use timeAlign pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    .end local v0    # "callingPid":I
    :goto_0
    return-void

    .line 1941
    :cond_0
    const-wide/16 v4, 0x0

    .line 1942
    .local v4, "nextNonWakeup":J
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 1943
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v3

    .line 1944
    .local v3, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1945
    .local v1, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 1946
    .local v2, "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v3, :cond_5

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v10, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1947
    iget-wide v8, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1948
    const/4 v8, 0x2

    iget-wide v10, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1958
    :goto_1
    if-eqz v2, :cond_1

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iget-wide v10, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1959
    iget-wide v8, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 1960
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    invoke-virtual {v2, v8, v9}, Lcom/android/server/AlarmManagerService$Batch;->getWhenByElapsedTime(J)J

    move-result-wide v6

    .line 1961
    .local v6, "when":J
    cmp-long v8, v6, v12

    if-eqz v8, :cond_1

    .line 1962
    const/4 v8, 0x4

    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 1965
    .end local v6    # "when":J
    :cond_1
    if-eq v1, v3, :cond_2

    .line 1966
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1972
    .end local v1    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1973
    cmp-long v8, v4, v12

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_4

    .line 1974
    :cond_3
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1977
    :cond_4
    cmp-long v8, v4, v12

    if-eqz v8, :cond_8

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_8

    .line 1978
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 1979
    const/4 v8, 0x3

    invoke-direct {p0, v8, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    goto :goto_0

    .line 1950
    .restart local v1    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v3    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_5
    if-eqz v3, :cond_6

    .line 1951
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1952
    .restart local v0    # "callingPid":I
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mNextWakeup = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",   start = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",   this pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1954
    .end local v0    # "callingPid":I
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1955
    .restart local v0    # "callingPid":I
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error with firstWakeup is null,   this pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1969
    .end local v0    # "callingPid":I
    .end local v1    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1970
    .restart local v0    # "callingPid":I
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAlarmBatches.size <= 0,   this pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1981
    .end local v0    # "callingPid":I
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1982
    .restart local v0    # "callingPid":I
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can not set 3 as nextNonWakeup = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",   this pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    .prologue
    .line 808
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 810
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 812
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 813
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 814
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 812
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 819
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 822
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 823
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 827
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_1
    return-void

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v6, "AlarmManager"

    const-string v7, "Error with PendingIntent.CanceledException."

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 40
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "flags"    # I
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "callingUid"    # I

    .prologue
    .line 1040
    if-nez p8, :cond_0

    .line 1041
    const-string v4, "AlarmManager"

    const-string v5, "set/setRepeating ignored because there is no intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :goto_0
    return-void

    .line 1046
    :cond_0
    const/4 v4, 0x1

    move/from16 v0, p9

    if-eq v0, v4, :cond_1

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->isCtsApp(Ljava/lang/String;)Z
    invoke-static {v4}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->access$200(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1047
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-nez v4, :cond_5

    const/16 p9, 0x1

    .line 1048
    :goto_1
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cts: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", flags: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_1
    const-wide/32 v4, 0x2932e00

    cmp-long v4, p4, v4

    if-lez v4, :cond_2

    .line 1055
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Window length "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-wide/32 p4, 0x36ee80

    .line 1062
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v4, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    move-wide/from16 v32, v0

    .line 1063
    .local v32, "minInterval":J
    const-wide/16 v4, 0x0

    cmp-long v4, p6, v4

    if-lez v4, :cond_3

    cmp-long v4, p6, v32

    if-gez v4, :cond_3

    .line 1064
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Suspiciously short interval "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " millis; expanding to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v10, 0x3e8

    div-long v10, v32, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " seconds"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-wide/from16 p6, v32

    .line 1070
    :cond_3
    if-ltz p1, :cond_4

    const/4 v4, 0x4

    move/from16 v0, p1

    if-le v0, v4, :cond_6

    .line 1071
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid alarm type "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1047
    .end local v32    # "minInterval":J
    :cond_5
    const/16 p9, 0x0

    goto/16 :goto_1

    .line 1074
    .restart local v32    # "minInterval":J
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_7

    .line 1075
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 1076
    .local v38, "what":J
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid alarm trigger time! "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " from uid="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " pid="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const-wide/16 p2, 0x0

    .line 1081
    .end local v38    # "what":J
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1082
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v36

    .line 1085
    .local v36, "nominalTrigger":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v34, v6, v4

    .line 1086
    .local v34, "minTrigger":J
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.deskclock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1087
    const-wide/16 v4, 0x0

    add-long v34, v6, v4

    .line 1090
    :cond_8
    cmp-long v4, v36, v34

    if-lez v4, :cond_a

    move-wide/from16 v8, v36

    .line 1094
    .local v8, "triggerElapsed":J
    :goto_2
    const/16 v28, 0x0

    .line 1097
    .local v28, "mLeuiTimeAlign":Z
    const-wide/16 v29, 0x0

    .local v29, "delayTime":J
    move-object/from16 v5, p0

    move/from16 v10, p9

    move/from16 v11, p1

    move-object/from16 v12, p8

    move-object/from16 v13, p11

    .line 1102
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/AlarmManagerService;->canDelay(JJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1103
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v10, v11}, Lcom/android/server/AlarmManagerService;->delayAlarm(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v29

    .line 1104
    const-wide/16 v4, 0x0

    cmp-long v4, v29, v4

    if-gtz v4, :cond_b

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide v14, v6

    .line 1106
    invoke-static/range {v8 .. v15}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v18

    .line 1112
    :cond_9
    :goto_3
    if-eqz v28, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1114
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p11

    move/from16 v17, p1

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v18

    .line 1132
    .local v18, "maxElapsed":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1133
    :try_start_0
    const-string v4, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " triggerAtTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tElapsed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " maxElapsed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interval="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " flags=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/16 v24, 0x1

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide v14, v8

    move-wide/from16 v16, p4

    move-wide/from16 v20, p6

    move-object/from16 v22, p8

    move/from16 v23, p9

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 v27, p12

    invoke-direct/range {v10 .. v30}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZJ)V

    .line 1141
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .end local v8    # "triggerElapsed":J
    .end local v18    # "maxElapsed":J
    .end local v28    # "mLeuiTimeAlign":Z
    .end local v29    # "delayTime":J
    :cond_a
    move-wide/from16 v8, v34

    .line 1090
    goto/16 :goto_2

    .line 1109
    .restart local v8    # "triggerElapsed":J
    .restart local v28    # "mLeuiTimeAlign":Z
    .restart local v29    # "delayTime":J
    :cond_b
    const-wide/16 v4, 0x0

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v8

    goto/16 :goto_3

    :cond_c
    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide v14, v6

    .line 1118
    invoke-static/range {v8 .. v15}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v18

    .restart local v18    # "maxElapsed":J
    goto/16 :goto_4
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 8
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 977
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 984
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 985
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 986
    :try_start_0
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 988
    :cond_2
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_3

    .line 989
    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_3
    const/4 v3, 0x1

    .line 992
    const-string v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 998
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    .line 1002
    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    .line 1003
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTimeZoneChange()V

    .line 1005
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1009
    if-eqz v3, :cond_0

    .line 1010
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1012
    const-string v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 1005
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    .line 2883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    .line 2884
    .local v1, "unimportant":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 2885
    if-nez p5, :cond_0

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v2, :cond_2

    .line 2886
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 2890
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 2891
    if-eqz p2, :cond_3

    .line 2892
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2906
    .end local v1    # "unimportant":Z
    :goto_2
    return-void

    .line 2883
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2888
    .restart local v1    # "unimportant":Z
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    goto :goto_1

    .line 2904
    .end local v1    # "unimportant":Z
    :catch_0
    move-exception v2

    goto :goto_2

    .line 2896
    .restart local v1    # "unimportant":Z
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 2898
    .local v0, "uid":I
    if-ltz v0, :cond_4

    .line 2899
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_2

    .line 2903
    :cond_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 42
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2269
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v29, 0x0

    .line 2273
    .local v29, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/AlarmManagerService$Batch;

    .line 2275
    .local v27, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v27

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_2

    .line 2380
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 2381
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2384
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v4, :cond_f

    .line 2385
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v34

    if-ge v0, v4, :cond_f

    .line 2386
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggering alarm #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 2282
    .end local v34    # "i":I
    .restart local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2284
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v25

    .line 2285
    .local v25, "N":I
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_1
    move/from16 v0, v34

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 2286
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v26

    .line 2288
    .local v26, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 2291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v36

    .line 2292
    .local v36, "lastTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    add-long v38, v36, v4

    .line 2293
    .local v38, "minTime":J
    cmp-long v4, p2, v38

    if-gez v4, :cond_5

    .line 2297
    move-wide/from16 v0, v38

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2298
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v38

    if-gez v4, :cond_3

    .line 2299
    move-wide/from16 v0, v38

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2301
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2285
    .end local v36    # "lastTime":J
    .end local v38    # "minTime":J
    :cond_4
    :goto_2
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 2306
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2307
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alarm triggering: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 2315
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v26

    if-ne v4, v0, :cond_c

    .line 2316
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2317
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2323
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v26

    if-ne v4, v0, :cond_7

    .line 2324
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2325
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2330
    :cond_7
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 2337
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v30, p2, v4

    .line 2338
    .local v30, "delaySkew":J
    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-lez v4, :cond_8

    .line 2340
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long v6, v30, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2346
    :cond_8
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v32, v4, v6

    .line 2347
    .local v32, "delta":J
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v40, v4, v32

    .line 2349
    .local v40, "nextElapsed":J
    const-wide/16 v23, 0x0

    .line 2350
    .local v23, "delayTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    if-eqz v4, :cond_d

    .line 2352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v26

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v26

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v27

    iget v15, v0, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move-wide/from16 v6, p2

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v12

    .line 2361
    .local v12, "maxElapsed":J
    :goto_5
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v6, v6, v32

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v26

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    move/from16 v22, v0

    move-object/from16 v4, p0

    move-wide/from16 v8, v40

    invoke-direct/range {v4 .. v24}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZJ)V

    .line 2367
    .end local v12    # "maxElapsed":J
    .end local v23    # "delayTime":J
    .end local v30    # "delaySkew":J
    .end local v32    # "delta":J
    .end local v40    # "nextElapsed":J
    :cond_9
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_a

    .line 2368
    const/16 v29, 0x1

    .line 2372
    :cond_a
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_4

    .line 2373
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto/16 :goto_2

    .line 2312
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2320
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v28

    .line 2321
    .local v28, "callingPid":I
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",   mPendingIdleUntil = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",   alarm = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2354
    .end local v28    # "callingPid":I
    .restart local v23    # "delayTime":J
    .restart local v30    # "delaySkew":J
    .restart local v32    # "delta":J
    .restart local v40    # "nextElapsed":J
    :cond_d
    move-object/from16 v0, v26

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, v26

    iget v11, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, v40

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/AlarmManagerService;->canDelay(JJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2355
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->pid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->delayAlarm(Ljava/lang/String;Ljava/lang/String;II)J

    move-result-wide v23

    .line 2357
    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    move-wide/from16 v6, v40

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v12

    .restart local v12    # "maxElapsed":J
    goto/16 :goto_5

    .line 2359
    .end local v12    # "maxElapsed":J
    :cond_e
    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    move-wide/from16 v6, v40

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v12

    .restart local v12    # "maxElapsed":J
    goto/16 :goto_5

    .line 2390
    .end local v12    # "maxElapsed":J
    .end local v23    # "delayTime":J
    .end local v25    # "N":I
    .end local v26    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v27    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v30    # "delaySkew":J
    .end local v32    # "delta":J
    .end local v34    # "i":I
    .end local v40    # "nextElapsed":J
    :cond_f
    return v29
.end method
