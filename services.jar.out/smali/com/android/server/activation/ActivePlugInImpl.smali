.class public final Lcom/android/server/activation/ActivePlugInImpl;
.super Ljava/lang/Object;
.source "ActivePlugInImpl.java"

# interfaces
.implements Lcom/android/server/power/plug/IActivePlugIn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/activation/ActivePlugInImpl$1;,
        Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;,
        Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;,
        Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;
    }
.end annotation


# static fields
.field private static final CHECK_INIT_DELAY:I = 0x4e20

.field public static final DEBUG:Z = false

.field private static final EVENT_ACTIVE:Ljava/lang/String; = "Activation"

.field private static final EVENT_ACTIVE_HALF:Ljava/lang/String; = "HalfHourActivation"

.field private static final HALF_HOUR:I = 0x1b7740

.field public static final MSG_ACT_DELAY_LETV:I = 0x4

.field private static final MSG_ACT_LETV:I = 0x2

.field private static final MSG_HALFACT_LETV:I = 0x3

.field private static final MS_CHECK_STATE:I = 0x1

.field private static final ONE_MINUTE:I = 0xea60

.field private static final READ_INFO_DELAY:I = 0xea60

.field private static final TYPE:Ljava/lang/String; = "2"

.field private static final UPLOAD_ACTIVE_DELAY:I = 0x1d4c0

.field private static final UPLOAD_ACTIVE_HALF_DELAY:I = 0x493e0

.field private static final UPLOAD_ACTIVE_IMEI_DELAY:I = 0x1b77400


# instance fields
.field private connectTime:J

.field private letvImei:Ljava/lang/String;

.field private letvKey:Ljava/lang/String;

.field private letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

.field private letvPhoneNumber:Ljava/lang/String;

.field private letvTime:Ljava/lang/String;

.field private mActiveState:I

.field private final mContext:Landroid/content/Context;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHasRegister:Z

.field private mHasSimRegister:Z

.field private mLastEndTime:J

.field private mLastStartTime:J

.field private mLock:Ljava/lang/Object;

.field private mNetChangeCount:I

.field private mNetConnected:Z

.field private mNetType:I

.field private mRecording:Z

.field private mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

.field private mStateDes:Ljava/lang/String;

.field private mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

.field private mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    iput-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->initPolicy()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doCheckActiveLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->handleActive()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/activation/ActivePlugInImpl;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/activation/ActivePlugInImpl;->handleConnectState(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/activation/ActivePlugInImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unRegisterSimStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startActivePhaseReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->handleActiveHalf()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->loopTimeRecord()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unregisterNetReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/activation/ActivePlugInImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$904(Lcom/android/server/activation/ActivePlugInImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    iget v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    return v0
.end method

.method private checkActive()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private destroyPolicy(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->unregisterNetReceiver()V

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iput-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    :cond_0
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->quitSafely()Z

    iput-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    :cond_1
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Activation] destroy Policy span: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doActiveHalfLocked()Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;

    invoke-direct {v0}, Lcom/android/server/activation/bean/ActiveHalfRequestBean;-><init>()V

    .local v0, "request":Lcom/android/server/activation/bean/ActiveHalfRequestBean;
    const-string v2, "2"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->type:Ljava/lang/String;

    const-string v2, "HalfHourActivation"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->event:Ljava/lang/String;

    new-instance v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    invoke-direct {v2}, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;-><init>()V

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->imei:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->data:Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveHalfRequestBean$Data;->mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/activation/util/HttpHelper;->letvHalfActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveHalfRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v1

    .local v1, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    return-object v1
.end method

.method private doActiveLocked()Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/activation/bean/ActiveRequestBean;

    invoke-direct {v0}, Lcom/android/server/activation/bean/ActiveRequestBean;-><init>()V

    .local v0, "request":Lcom/android/server/activation/bean/ActiveRequestBean;
    const-string v2, "2"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->type:Ljava/lang/String;

    const-string v2, "Activation"

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->event:Ljava/lang/String;

    new-instance v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    invoke-direct {v2}, Lcom/android/server/activation/bean/ActiveRequestBean$Data;-><init>()V

    iput-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->imei:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/activation/bean/ActiveRequestBean;->data:Lcom/android/server/activation/bean/ActiveRequestBean$Data;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/activation/bean/ActiveRequestBean$Data;->time:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/activation/util/HttpHelper;->letvActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v1

    .local v1, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    return-object v1
.end method

.method private doCheckActiveLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "[Activation] doCheckActiveLocked, begin..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isCtaVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is cta version."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone is active."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getLetvKeyValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "key is null."

    invoke-direct {p0, v0}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[Activation] doCheckActiveLocked waiting imei..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "waiting imei..."

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->registerSimStatus()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startActivePhaseReady()V

    const-string v0, "[Activation] doCheckActiveLocked, end..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private ensureLockSettings()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    return-void
.end method

.method private ensureTelephony()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private getLetvKeyValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    .local v2, "letvKey":Ljava/lang/String;
    :try_start_0
    const-string v5, "leuiphonebind"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_1

    const-string v5, "[Activation] leuiphonebind binder is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/phonebind/IPhoneBind;

    move-result-object v3

    .local v3, "phoneBind":Lcom/letv/leui/os/phonebind/IPhoneBind;
    const-string v5, "leui_phone_bind_key"

    invoke-interface {v3, v5}, Lcom/letv/leui/os/phonebind/IPhoneBind;->getLeTVSNValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "phoneBind":Lcom/letv/leui/os/phonebind/IPhoneBind;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "[Activation] getLetvKeyValue fail"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_0
.end method

.method private getPhoneInfo()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "err":I
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .end local v0    # "err":I
    .local v1, "err":I
    :goto_0
    return v1

    .end local v1    # "err":I
    .restart local v0    # "err":I
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getLetvKeyValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    move v1, v0

    .end local v0    # "err":I
    .restart local v1    # "err":I
    goto :goto_0

    .end local v1    # "err":I
    .restart local v0    # "err":I
    :cond_1
    invoke-static {}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetTime()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvTime:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    move v1, v0

    .end local v0    # "err":I
    .restart local v1    # "err":I
    goto :goto_0

    .end local v1    # "err":I
    .restart local v0    # "err":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->letvGetPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvPhoneNumber:Ljava/lang/String;

    :cond_3
    move v1, v0

    .end local v0    # "err":I
    .restart local v1    # "err":I
    goto :goto_0
.end method

.method private handleActive()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveInit()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getPhoneInfo()I

    move-result v3

    .local v3, "result":I
    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Activation] handleActive, get phone info result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 v6, 0xea60

    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .end local v3    # "result":I
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doActiveLocked()Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v2

    .local v2, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->needRetry()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    iget-object v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isImeiNotExsite()Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/32 v0, 0x1b77400

    .local v0, "delayTime":J
    :goto_1
    const/4 v5, 0x2

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .end local v0    # "delayTime":J
    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    const-wide/32 v0, 0x1d4c0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isKeyError()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v8}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .local v4, "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Activation] handleActive,  key error , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "upload ok act."

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    goto :goto_0

    .restart local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .restart local v3    # "result":I
    :cond_7
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .restart local v4    # "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Activation] handleActive,  end , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_8
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    goto/16 :goto_0
.end method

.method private handleActiveHalf()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->getPhoneInfo()I

    move-result v3

    .local v3, "result":I
    if-eqz v3, :cond_1

    const-wide/32 v6, 0xea60

    invoke-direct {p0, v8, v6, v7}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .end local v3    # "result":I
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "result":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->doActiveHalfLocked()Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v2

    .local v2, "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->needRetry()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    iget-object v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v5, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isImeiNotExsite()Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/32 v0, 0x1b77400

    .local v0, "delayTime":J
    :goto_1
    const/4 v5, 0x3

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    .end local v0    # "delayTime":J
    :cond_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    const-wide/32 v0, 0x493e0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/activation/bean/ActiveResposeBean;->isKeyError()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v6}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .local v4, "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Activation] handleActive,  key error , write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .end local v3    # "result":I
    .end local v4    # "writeResult":Z
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "upload ok act half."

    invoke-direct {p0, v5}, Lcom/android/server/activation/ActivePlugInImpl;->destroyPolicy(Ljava/lang/String;)V

    goto :goto_0

    .restart local v2    # "respose":Lcom/android/server/activation/bean/ActiveResposeBean;
    .restart local v3    # "result":I
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    move-result v4

    .restart local v4    # "writeResult":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Activation] handleActiveHalf end, write: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private handleConnectState(IZ)V
    .locals 4
    .param p1, "netChangeCount"    # I
    .param p2, "connected"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startTimeRecord()V

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->stopTimeRecord()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initPolicy()V
    .locals 6

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->startWorkThread()V

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->checkActive()V

    const-string v2, "init policy..."

    iput-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Activation] init Policy...span: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActiveHalf()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActiveInit()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->readActiveState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isCtaVersion()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "com.letv.leui.cta"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    iput v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    iput v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    iput v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    move v2, v3

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z

    iput v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetType:I

    goto :goto_0
.end method

.method private letvGetImei()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureTelephony()V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLEUIDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private letvGetPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureTelephony()V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static letvGetTime()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loopTimeRecord()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x1b7740

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    sub-long v0, v4, v6

    .local v0, "cTime":J
    :goto_0
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    :goto_1
    monitor-exit v3

    return-void

    .end local v0    # "cTime":J
    :cond_0
    iget-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    goto :goto_0

    .restart local v0    # "cTime":J
    :cond_1
    const/4 v2, 0x4

    sub-long v4, v8, v0

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/activation/ActivePlugInImpl;->sendMsgDelay(IJ)V

    goto :goto_1

    .end local v0    # "cTime":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static final newInstance(Landroid/content/Context;)Lcom/android/server/activation/ActivePlugInImpl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {v0, p0}, Lcom/android/server/activation/ActivePlugInImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private readActiveState()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureLockSettings()V

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->readControlStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/activation/ActivePlugInImpl;->writeActiveState(I)Z

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Activation] readActiveState, read error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerNetReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    if-eqz v1, :cond_0

    const-string v1, "[Activation] re-Register net Receiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "[Activation] register net Receiver"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$1;)V

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    goto :goto_0
.end method

.method private final registerSimStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "[Activation] register sim status..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$1;)V

    iput-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    goto :goto_0
.end method

.method private sendMsgDelay(IJ)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "delayMillis"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, p1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, p1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private startActivePhaseReady()V
    .locals 2

    .prologue
    const-string v0, "start active phase..."

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    const-string v0, "[Activation] startActivePhaseReady begin..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/activation/util/DomainEngine;->getInstance()Lcom/android/server/activation/util/DomainEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/activation/util/DomainEngine;->init(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->isNetworkAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->handleConnectState(IZ)V

    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->registerNetReceiver()V

    return-void
.end method

.method private startTimeRecord()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    :cond_0
    return-void
.end method

.method private startWorkThread()V
    .locals 4

    .prologue
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "Activation"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;-><init>(Lcom/android/server/activation/ActivePlugInImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mWorkHandler:Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;

    return-void
.end method

.method private stopTimeRecord()V
    .locals 6

    .prologue
    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    iget-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    iget-wide v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastEndTime:J

    iget-wide v4, p0, Lcom/android/server/activation/ActivePlugInImpl;->mLastStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->connectTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    :cond_0
    return-void
.end method

.method private final unRegisterSimStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    if-nez v0, :cond_0

    const-string v0, "[Activation] no register sim status, so no need un-Register again..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "[Activation] un-Register sim status..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mSimStatusReceiver:Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;

    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasSimRegister:Z

    goto :goto_0
.end method

.method private unregisterNetReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "[Activation] unregiste net Receiver"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl;->mletvNetworkReceiver:Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;

    iput-boolean v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->mHasRegister:Z

    goto :goto_0
.end method

.method private writeActiveState(I)Z
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/activation/ActivePlugInImpl;->ensureLockSettings()V

    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl;->letvLockSetSrv:Lcom/android/internal/widget/ILockSettings;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->writeControlStatus(II)I

    iput p1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Activation] readActiveState, modify error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display active status: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mActiveState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mStateDes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/activation/util/HttpHelper;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
