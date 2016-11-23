.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$LogSSC;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field static final CHECK_PHONE_STATE_PERMISSION_MASK:I = 0xe0

.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private mConnectedApns:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataActivity:[I

.field private mDataConnectionApn:[Ljava/lang/String;

.field private mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

.field private mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionPossible:[Z

.field private mDataConnectionReason:[Ljava/lang/String;

.field private mDataConnectionState:[I

.field private mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mMessageWaiting:[Z

.field private mMiuiTelephony:Lmiui/telephony/IMiuiTelephony;
.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPhoneIdWCSC:I

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private next:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    new-instance v3, Landroid/telephony/VoLteServiceState;

    invoke-direct {v3}, Landroid/telephony/VoLteServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    iput v6, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    new-instance v3, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-direct {v3}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    new-instance v3, Landroid/telephony/PreciseCallState;

    invoke-direct {v3}, Landroid/telephony/PreciseCallState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    iput-boolean v5, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    new-instance v3, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v3}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    new-instance v3, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v3, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v3, 0xa

    new-array v3, v3, [Lcom/android/server/TelephonyRegistry$LogSSC;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iput v5, p0, Lcom/android/server/TelephonyRegistry;->next:I

    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mMiuiTelephony:Lmiui/telephony/IMiuiTelephony;

    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .local v1, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 302
    .local v2, "numPhones":I
    iput v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 303
    new-array v3, v2, [Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    .line 304
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 305
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 306
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 307
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 308
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 309
    new-array v3, v2, [Landroid/telephony/ServiceState;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 310
    new-array v3, v2, [Landroid/telephony/SignalStrength;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 311
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 312
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    .line 313
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    .line 314
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    .line 315
    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 316
    new-array v3, v2, [Landroid/os/Bundle;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 317
    new-array v3, v2, [Landroid/net/LinkProperties;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    .line 318
    new-array v3, v2, [Landroid/net/NetworkCapabilities;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v0

    .line 322
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v5, v3, v0

    .line 323
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v5, v3, v0

    .line 324
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v6, v3, v0

    .line 325
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 326
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v4, Landroid/telephony/ServiceState;

    invoke-direct {v4}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v4, v3, v0

    .line 327
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v4, v3, v0

    .line 328
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v5, v3, v0

    .line 329
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v5, v3, v0

    .line 330
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean v5, v3, v0

    .line 331
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 332
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v0

    .line 333
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v0

    .line 334
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    if-eqz v1, :cond_1

    .line 340
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 346
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;I)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1441
    .local v0, "ident":J
    if-nez p1, :cond_2

    .line 1442
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1456
    const-string v3, "incoming_number"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    :cond_0
    const/4 v3, -0x1

    if-eq p3, v3, :cond_1

    .line 1462
    const-string v3, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1463
    const-string v3, "subscription"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1468
    :cond_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1470
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.READ_PHONE_STATE"

    const/16 v6, 0x33

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1473
    return-void

    .line 1444
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v3

    .line 1449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 1511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1515
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1516
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-static {p1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    if-nez p2, :cond_0

    .line 1486
    const-string v2, "networkUnvailable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1488
    :cond_0
    if-eqz p3, :cond_1

    .line 1489
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    :cond_1
    if-eqz p6, :cond_2

    .line 1492
    const-string v2, "linkProperties"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1494
    .local v0, "iface":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1495
    const-string v2, "iface"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    .end local v0    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1499
    const-string v2, "networkCapabilities"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1501
    :cond_3
    if-eqz p8, :cond_4

    const-string v2, "networkRoaming"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1503
    :cond_4
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string v2, "apnType"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const-string v2, "subscription"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1507
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .locals 6
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .prologue
    const v5, 0x7fffffff

    .line 1520
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ringing_state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1522
    const-string v2, "foreground_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1523
    const-string v2, "background_state"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1524
    const-string v2, "disconnect_cause"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    const-string v2, "precise_disconnect_cause"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge v0, v2, :cond_1

    .line 1529
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 1530
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    .line 1532
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 1528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1538
    const-string v2, "plmn"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    const-string v2, "rat"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    const-string v2, "band"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getBandUsedInVoiceRAT()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1541
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1576
    :pswitch_0
    const-string v2, "signal_strength"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1577
    const-string v2, "signal_quality"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1588
    :goto_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1590
    return-void

    .line 1550
    :pswitch_1
    const-string v2, "signal_strength"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x71

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1551
    const-string v2, "signal_quality"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1556
    :pswitch_2
    const-string v2, "signal_strength"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    const-string v2, "signal_quality"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1563
    :pswitch_3
    const-string v2, "signal_strength"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    const-string v2, "signal_quality"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1568
    :pswitch_4
    const-string v2, "signal_strength"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1569
    const-string v2, "signal_quality"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1572
    :pswitch_5
    const-string v2, "signal_strength"

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mPhoneIdWCSC:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1573
    const-string v2, "signal_quality"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1581
    :cond_2
    const-string v2, "plmn"

    const-string v3, "Unkown"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1582
    const-string v2, "rat"

    const-string v3, "Unkown"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    const-string v2, "band"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1584
    const-string v2, "signal_strength"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1585
    const-string v2, "signal_quality"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    .line 1541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1595
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const-string v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1598
    if-eqz p5, :cond_0

    const-string v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    :cond_1
    if-eqz p4, :cond_2

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1601
    :cond_2
    if-eqz p6, :cond_3

    .line 1602
    const-string v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1604
    :cond_3
    if-eqz p7, :cond_4

    const-string v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    :cond_4
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1608
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "subId"    # I

    .prologue
    .line 1395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1397
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1404
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1406
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1407
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1409
    const-string v4, "subscription"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1410
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1411
    return-void

    .line 1398
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 1401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "subId"    # I

    .prologue
    .line 1414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1416
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIG_STR"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1424
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1426
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1427
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1428
    const-string v4, "subscription"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1429
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1430
    return-void

    .line 1417
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 1420
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private canReadPhoneState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 677
    .local v0, "canReadPhoneState":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 680
    goto :goto_0

    .end local v0    # "canReadPhoneState":Z
    :cond_2
    move v0, v1

    .line 675
    goto :goto_1
.end method

.method private checkListenerPermission(I)V
    .locals 5
    .param p1, "events"    # I

    .prologue
    const/4 v4, 0x0

    .line 1650
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :cond_0
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    :cond_1
    and-int/lit16 v1, p1, 0x400c

    if-eqz v1, :cond_2

    .line 1664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :cond_2
    :goto_0
    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_3

    .line 1675
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :cond_3
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_4

    .line 1681
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_4
    return-void

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkNotifyPermission()Z
    .locals 2

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    const/4 v1, 0x1

    .line 1625
    :goto_0
    return v1

    .line 1622
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modify Phone State Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 1796
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1798
    .local v0, "events":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_0

    .line 1802
    :try_start_0
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :cond_0
    :goto_0
    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    .line 1811
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v3, v4, p2

    .line 1815
    .local v3, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/SignalStrength;

    invoke-direct {v5, v3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1821
    .end local v3    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_1
    :goto_1
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_3

    .line 1823
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1829
    .local v2, "gsmSignalStrength":I
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v5, 0x63

    if-ne v2, v5, :cond_2

    const/4 v2, -0x1

    .end local v2    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1836
    :cond_3
    :goto_2
    const/16 v4, 0x400

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1842
    :try_start_3
    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1848
    :cond_4
    :goto_3
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_5

    .line 1854
    :try_start_4
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1861
    :cond_5
    :goto_4
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_6

    .line 1867
    :try_start_5
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, p2

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1874
    :cond_6
    :goto_5
    const/16 v4, 0x10

    invoke-direct {p0, p1, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1878
    :try_start_6
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, p2

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1884
    :cond_7
    :goto_6
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_8

    .line 1892
    :try_start_7
    iget-object v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, p2

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v6, v6, p2

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1898
    :cond_8
    :goto_7
    return-void

    .line 1804
    :catch_0
    move-exception v1

    .line 1805
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1816
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1817
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1831
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 1832
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1843
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 1844
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1856
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 1857
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1869
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v1

    .line 1870
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1879
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v1

    .line 1880
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1894
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v1

    .line 1895
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method private enforceCarrierPrivilege()V
    .locals 9

    .prologue
    .line 1634
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1635
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1636
    .local v5, "pkgs":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1637
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1639
    return-void

    .line 1636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1643
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Carrier Privilege Permission Denial: from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1646
    .local v3, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1611
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->enforceCarrierPrivilege()V

    goto :goto_0
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .prologue
    .line 687
    iget-boolean v0, p1, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleRemoveListLocked()V
    .locals 4

    .prologue
    .line 1687
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1689
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 1690
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1691
    .local v0, "b":Landroid/os/IBinder;
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_0

    .line 1693
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1695
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    .prologue
    .line 475
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 482
    .local v3, "callerUserId":I
    if-eqz p3, :cond_16

    .line 484
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(I)V

    .line 486
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x400c

    if-eqz v11, :cond_0

    .line 488
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_0
    iget-object v12, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v12

    .line 504
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 505
    .local v2, "b":Landroid/os/IBinder;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 506
    .local v1, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_12

    .line 507
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 508
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, v11, :cond_11

    .line 518
    :goto_1
    move-object/from16 v0, p2

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 519
    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 520
    iput v3, v10, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 521
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x40ec

    if-eqz v11, :cond_13

    const/4 v8, 0x1

    .line 523
    .local v8, "isPhoneStateEvent":Z
    :goto_2
    if-eqz v8, :cond_14

    invoke-direct/range {p0 .. p1}, Lcom/android/server/TelephonyRegistry;->canReadPhoneState(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, 0x1

    :goto_3
    iput-boolean v11, v10, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 526
    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v11

    if-nez v11, :cond_15

    .line 527
    const v11, 0x7fffffff

    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 531
    :goto_4
    iget v11, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    iput v11, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 533
    iget v9, v10, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 534
    .local v9, "phoneId":I
    move/from16 v0, p3

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 539
    if-eqz p4, :cond_10

    invoke-direct {p0, v9}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-eqz v11, :cond_10

    .line 540
    and-int/lit8 v11, p3, 0x1

    if-eqz v11, :cond_1

    .line 543
    :try_start_2
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/telephony/ServiceState;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v14, v14, v9

    invoke-direct {v13, v14}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    :cond_1
    :goto_5
    and-int/lit8 v11, p3, 0x2

    if-eqz v11, :cond_3

    .line 551
    :try_start_3
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v6

    .line 553
    .local v6, "gsmSignalStrength":I
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v13, 0x63

    if-ne v6, v13, :cond_2

    const/4 v6, -0x1

    .end local v6    # "gsmSignalStrength":I
    :cond_2
    invoke-interface {v11, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 559
    :cond_3
    :goto_6
    and-int/lit8 v11, p3, 0x4

    if-eqz v11, :cond_4

    .line 561
    :try_start_4
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 567
    :cond_4
    :goto_7
    and-int/lit8 v11, p3, 0x8

    if-eqz v11, :cond_5

    .line 569
    :try_start_5
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 575
    :cond_5
    :goto_8
    const/16 v11, 0x10

    :try_start_6
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    if-eqz v11, :cond_6

    .line 579
    :try_start_7
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v13, Landroid/os/Bundle;

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v14, v14, v9

    invoke-direct {v13, v14}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 585
    :cond_6
    :goto_9
    and-int/lit8 v11, p3, 0x20

    if-eqz v11, :cond_7

    .line 587
    :try_start_8
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v13, v13, v9

    invoke-direct {p0, v10, v9}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 593
    :cond_7
    :goto_a
    and-int/lit8 v11, p3, 0x40

    if-eqz v11, :cond_8

    .line 595
    :try_start_9
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v13, v13, v9

    iget-object v14, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v14, v14, v9

    invoke-interface {v11, v13, v14}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 601
    :cond_8
    :goto_b
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_9

    .line 603
    :try_start_a
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 608
    :cond_9
    :goto_c
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_a

    .line 610
    :try_start_b
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v13, v13, v9

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 615
    :cond_a
    :goto_d
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_b

    .line 617
    :try_start_c
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v13, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 622
    :cond_b
    :goto_e
    const/16 v11, 0x400

    :try_start_d
    invoke-direct {p0, v10, v11}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v11

    if-eqz v11, :cond_c

    .line 626
    :try_start_e
    iget-object v13, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v13, v11}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 631
    :cond_c
    :goto_f
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_d

    .line 633
    :try_start_f
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 638
    :cond_d
    :goto_10
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_e

    .line 640
    :try_start_10
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 645
    :cond_e
    :goto_11
    move/from16 v0, p3

    and-int/lit16 v11, v0, 0x1000

    if-eqz v11, :cond_f

    .line 647
    :try_start_11
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v13, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 653
    :cond_f
    :goto_12
    const/high16 v11, 0x10000

    and-int v11, v11, p3

    if-eqz v11, :cond_10

    .line 655
    :try_start_12
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v13, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v11, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 661
    :cond_10
    :goto_13
    :try_start_13
    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 666
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_14
    return-void

    .line 492
    :catch_0
    move-exception v4

    .line 493
    .local v4, "e":Ljava/lang/SecurityException;
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v13, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_14

    .line 506
    .end local v4    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 512
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_12
    :try_start_14
    new-instance v10, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 513
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v2, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 514
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 661
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v7    # "i":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    throw v11

    .line 521
    .restart local v1    # "N":I
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v7    # "i":I
    .restart local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 523
    .restart local v8    # "isPhoneStateEvent":Z
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 529
    :cond_15
    :try_start_15
    move/from16 v0, p5

    iput v0, v10, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto/16 :goto_4

    .line 545
    .restart local v9    # "phoneId":I
    :catch_1
    move-exception v5

    .line 546
    .local v5, "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_5

    .line 555
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v5

    .line 556
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_6

    .line 563
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    .line 564
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 571
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_4
    move-exception v5

    .line 572
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_8

    .line 581
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_5
    move-exception v5

    .line 582
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_9

    .line 589
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_6
    move-exception v5

    .line 590
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_a

    .line 597
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_7
    move-exception v5

    .line 598
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_b

    .line 604
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_8
    move-exception v5

    .line 605
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_c

    .line 611
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_9
    move-exception v5

    .line 612
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_d

    .line 618
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_a
    move-exception v5

    .line 619
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_e

    .line 627
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_b
    move-exception v5

    .line 628
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_f

    .line 634
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_c
    move-exception v5

    .line 635
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_10

    .line 641
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_d
    move-exception v5

    .line 642
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_11

    .line 649
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_e
    move-exception v5

    .line 650
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_12

    .line 656
    .end local v5    # "ex":Landroid/os/RemoteException;
    :catch_f
    move-exception v5

    .line 657
    .restart local v5    # "ex":Landroid/os/RemoteException;
    iget-object v11, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_13

    .line 664
    .end local v1    # "N":I
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i":I
    .end local v8    # "isPhoneStateEvent":Z
    .end local v9    # "phoneId":I
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_16
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto/16 :goto_14
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1722
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void
.end method

.method private logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I
    .param p4, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    .line 1751
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    new-instance v3, Lcom/android/server/TelephonyRegistry$LogSSC;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    aput-object v3, v0, v2

    .line 1753
    :cond_2
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 1754
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1755
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v0, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry$LogSSC;->set(Landroid/text/format/Time;Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 1756
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1757
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    goto :goto_0
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 691
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 693
    .local v1, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    iget-object v2, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 700
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 701
    monitor-exit v3

    .line 705
    :goto_1
    return-void

    .line 693
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_1
    monitor-exit v3

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "recordCount":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private toStringLogSSC(Ljava/lang/String;)V
    .locals 3
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 1762
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    .line 1763
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1780
    :goto_0
    return-void

    .line 1766
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": logSSC.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->next:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1767
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->next:I

    .line 1768
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 1770
    const/4 v0, 0x0

    .line 1773
    :cond_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry$LogSSC;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1774
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->logSSC:[Lcom/android/server/TelephonyRegistry$LogSSC;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1775
    const/4 v0, 0x0

    .line 1777
    :cond_3
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->next:I

    if-ne v0, v1, :cond_2

    .line 1778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ----------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .prologue
    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1700
    .local v0, "callingIdentity":J
    const/4 v3, 0x0

    .line 1702
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1703
    .local v2, "foregroundUser":I
    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    if-ne v4, v2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1710
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1712
    return v3

    .line 1703
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1710
    .end local v2    # "foregroundUser":I
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private validatePhoneId(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1716
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1718
    .local v0, "valid":Z
    :goto_0
    return v0

    .line 1716
    .end local v0    # "valid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 361
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 369
    .local v2, "callerUserId":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v8, "addOnSubscriptionsChangedListener"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 389
    :try_start_1
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 390
    .local v1, "b":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 392
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 393
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v6, :cond_1

    .line 403
    :goto_1
    iput-object p2, v5, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 404
    iput-object p1, v5, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 405
    iput v2, v5, Lcom/android/server/TelephonyRegistry$Record;->callerUserId:I

    .line 406
    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 407
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    .line 412
    iget-boolean v6, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 415
    :try_start_2
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v6}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 424
    :goto_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_3
    return-void

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/SecurityException;
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.READ_PHONE_STATE"

    const-string v8, "addOnSubscriptionsChangedListener"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    .line 391
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 397
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :try_start_4
    new-instance v5, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 398
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object v1, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 399
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 417
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v3

    .line 419
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    iget-object v6, v5, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 422
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v6, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1354
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 1356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump telephony.registry from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 1360
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1361
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1362
    .local v3, "recordCount":I
    const-string v4, "last known state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Phone Id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallIncomingNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mServiceState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mSignalStrength="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mMessageWaiting="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCallForwarding="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionPossible="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aget-boolean v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionReason="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionApn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionApn:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionLinkProperties="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDataConnectionNetworkCapabilities="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellLocation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCellInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mDcRtInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registrations: count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1385
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1387
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "recordCount":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "recordCount":I
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method idMatch(III)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1784
    if-gez p2, :cond_2

    .line 1786
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_1

    .line 1791
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1786
    goto :goto_0

    .line 1788
    :cond_2
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_3

    .line 1789
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1791
    :cond_3
    if-eq p1, p2, :cond_4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    if-ne v2, p3, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .prologue
    .line 463
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 465
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .prologue
    .line 470
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 471
    return-void
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 982
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 983
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .prologue
    .line 986
    const-string v4, "notifyCallForwardingChanged()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 994
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 995
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 996
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v4, v2

    .line 997
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 998
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1002
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1010
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1009
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1010
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 708
    const-string v4, "notifyCallState()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 732
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 717
    :try_start_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 718
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v6, 0x7fffffff

    if-ne v4, v6, :cond_1

    .line 721
    :try_start_1
    iget-boolean v4, v3, Lcom/android/server/TelephonyRegistry$Record;->canReadPhoneState:Z

    if-eqz v4, :cond_2

    move-object v2, p2

    .line 722
    .local v2, "incomingNumberOrEmpty":Ljava/lang/String;
    :goto_2
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 723
    .end local v2    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 729
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 721
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :try_start_3
    const-string v2, ""
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 728
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 729
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 730
    const/4 v4, -0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCallStateForSubscriber(IILjava/lang/String;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 735
    const-string v5, "notifyCallState()"

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 763
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v6

    .line 743
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 744
    .local v3, "phoneId":I
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 745
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p2, v5, v3

    .line 746
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p3, v5, v3

    .line 747
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 748
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v5, p1, :cond_1

    iget v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v7, 0x7fffffff

    if-eq v5, v7, :cond_1

    .line 752
    :try_start_1
    invoke-direct {p0, v4, v3}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, p2, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 754
    .end local v2    # "incomingNumberOrEmpty":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 755
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 761
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneId":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 760
    .restart local v3    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 761
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 6
    .param p1, "active"    # Z

    .prologue
    .line 871
    const-string v3, "notifyCarrierNetworkChange()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    .line 877
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 878
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 879
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 880
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 889
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 890
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 891
    return-void
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 895
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 898
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v4, "notifyCellInfo()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 926
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 907
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 908
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 911
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 917
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 925
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 924
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 925
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1176
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1177
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    .prologue
    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1182
    const-string v4, "notifyCellLocation()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1190
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1191
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v4, v2

    .line 1193
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1194
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1201
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1209
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1208
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1209
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1014
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1015
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .prologue
    .line 1018
    const-string v4, "notifyDataActivity()"

    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1022
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1023
    .local v2, "phoneId":I
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1024
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v4, v2

    .line 1025
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1026
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1029
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "phoneId":I
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1036
    .restart local v2    # "phoneId":I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1037
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .prologue
    .line 1043
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1046
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1141
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1147
    const-string v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1155
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const-string v7, ""

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1158
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 1159
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    :try_start_1
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1163
    :catch_0
    move-exception v8

    .line 1164
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1169
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1168
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1169
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1170
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1171
    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v6, 0x0

    const-string v7, ""

    move-object v0, p0

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 17
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataConnectivityPossible"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    .prologue
    .line 1052
    const-string v2, "notifyDataConnection()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1056
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnectionForSubscriber: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDataConnectivityPossible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apn=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRecords.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v10

    .line 1063
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v15

    .line 1064
    .local v15, "phoneId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1068
    const/4 v14, 0x0

    .line 1069
    .local v14, "modified":Z
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ims"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, v15

    move/from16 v0, p2

    if-eq v2, v0, :cond_1

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v15

    .line 1075
    const/4 v14, 0x1

    .line 1089
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionPossible:[Z

    aput-boolean p3, v2, v15

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionReason:[Ljava/lang/String;

    aput-object p4, v2, v15

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionLinkProperties:[Landroid/net/LinkProperties;

    aput-object p7, v2, v15

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkCapabilities:[Landroid/net/NetworkCapabilities;

    aput-object p8, v2, v15

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v2, v2, v15

    move/from16 v0, p9

    if-eq v2, v0, :cond_2

    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput p9, v2, v15

    .line 1096
    const/4 v14, 0x1

    .line 1098
    :cond_2
    if-eqz v14, :cond_6

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1104
    .local v16, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x40

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1, v15}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 1108
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify data connection state changed on sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1110
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v3, v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v4, v4, v15

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1112
    :catch_0
    move-exception v12

    .line 1113
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1133
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "modified":Z
    .end local v15    # "phoneId":I
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1079
    .restart local v14    # "modified":Z
    .restart local v15    # "phoneId":I
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mConnectedApns:[Ljava/util/ArrayList;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput p2, v2, v15

    .line 1082
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1117
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1119
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v2, Landroid/telephony/PreciseDataConnectionState;

    const-string v9, ""

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/TelephonyRegistry$Record;

    .line 1122
    .restart local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v2, 0x1000

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 1125
    :try_start_4
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1126
    :catch_1
    move-exception v12

    .line 1127
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1132
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "modified":Z
    .end local v16    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1133
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p1

    .line 1134
    invoke-direct/range {v2 .. v11}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1136
    const-string v9, ""

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p9

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 6
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 929
    const-string v3, "notifyDataConnectionRealTimeInfo()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 951
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 934
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    .line 935
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 936
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x2000

    invoke-direct {p0, v2, v3}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 943
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDcRtInfo:Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 950
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 949
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 950
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyDisconnectCause(II)V
    .locals 10
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .prologue
    .line 1261
    const-string v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    :goto_0
    return-void

    .line 1264
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1265
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseCallState;

    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1267
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1268
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1270
    :try_start_1
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1271
    :catch_0
    move-exception v6

    .line 1272
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1277
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1276
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1277
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1278
    iget v1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_0
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .prologue
    .line 955
    const-string v3, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 963
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v3, p1

    .line 965
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 966
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 978
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 977
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 978
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .prologue
    .line 1328
    const-string v3, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1333
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1337
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    .line 1342
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1349
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1348
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1349
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .prologue
    .line 1213
    const-string v3, "notifyOtaspChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1217
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1218
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1219
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1221
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1228
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1227
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1228
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public notifyPreciseCallState(III)V
    .locals 11
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    .prologue
    const/4 v10, -0x1

    .line 1233
    const-string v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-object v9, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1237
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 1238
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1239
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 1240
    new-instance v0, Landroid/telephony/PreciseCallState;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1244
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TelephonyRegistry$Record;

    .line 1245
    .local v8, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x800

    invoke-virtual {v8, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    :try_start_1
    iget-object v0, v8, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1248
    :catch_0
    move-exception v6

    .line 1249
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1254
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1253
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1254
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v10

    move v5, v10

    .line 1255
    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    goto :goto_0
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .prologue
    .line 1284
    const-string v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v11, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1288
    :try_start_0
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1291
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/TelephonyRegistry$Record;

    .line 1292
    .local v10, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v10, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    :try_start_1
    iget-object v0, v10, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1296
    :catch_0
    move-exception v8

    .line 1297
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v1, v10, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1302
    .end local v8    # "ex":Landroid/os/RemoteException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1301
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1302
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1303
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 766
    const-string v3, "notifyServiceState()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 805
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 775
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v3, p1

    .line 777
    const-string v3, "notifyServiceStateForSubscriber"

    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/TelephonyRegistry;->logServiceStateChanged(Ljava/lang/String;IILandroid/telephony/ServiceState;)V

    .line 780
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 785
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 803
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 800
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 802
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 803
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 804
    invoke-direct {p0, p3, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;I)V

    goto :goto_0
.end method

.method public notifySignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 808
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V

    .line 810
    return-void
.end method

.method public notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 813
    const-string v6, "notifySignalStrength()"

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 867
    :goto_0
    return-void

    .line 821
    :cond_0
    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 822
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 823
    .local v3, "phoneId":I
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 825
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p2, v6, v3

    .line 826
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 831
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1, v3}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 840
    :try_start_1
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v8, Landroid/telephony/SignalStrength;

    invoke-direct {v8, p2}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    :cond_2
    :goto_2
    const/4 v6, 0x2

    :try_start_2
    invoke-virtual {v4, v6}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v6, p1, v3}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 848
    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 849
    .local v1, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v1, v6, :cond_3

    const/4 v5, -0x1

    .line 855
    .local v5, "ss":I
    :goto_3
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 856
    .end local v1    # "gsmSignalStrength":I
    .end local v5    # "ss":I
    :catch_0
    move-exception v0

    .line 857
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 865
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "phoneId":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 841
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "phoneId":I
    .restart local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catch_1
    move-exception v0

    .line 842
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "gsmSignalStrength":I
    :cond_3
    move v5, v1

    .line 849
    goto :goto_3

    .line 862
    .end local v1    # "gsmSignalStrength":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifySignalStrengthForSubscriber: invalid phoneId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 864
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 865
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 866
    invoke-direct {p0, p2, p1}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;I)V

    goto/16 :goto_0
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 438
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v3, :cond_0

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 442
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 443
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 445
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 456
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 457
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    return-void
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 7
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 1308
    const-string v3, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1311
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1312
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1313
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1314
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 1316
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/VoLteServiceState;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v5, v6}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1324
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1323
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1324
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .prologue
    .line 431
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 432
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    return-void
.end method

.method public getMiuiTelephony()Lmiui/telephony/IMiuiTelephony;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mMiuiTelephony:Lmiui/telephony/IMiuiTelephony;

    return-object v0
.end method

.method public setMiuiTelephony(Lmiui/telephony/IMiuiTelephony;)V
    .locals 0
    .param p1, "telephony"    # Lmiui/telephony/IMiuiTelephony;

    .prologue
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mMiuiTelephony:Lmiui/telephony/IMiuiTelephony;

    return-void
.end method
