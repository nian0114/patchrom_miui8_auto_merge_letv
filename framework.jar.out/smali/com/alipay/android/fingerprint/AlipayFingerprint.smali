.class public Lcom/alipay/android/fingerprint/AlipayFingerprint;
.super Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;
.source "AlipayFingerprint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayFingerprint"

.field private static inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

.field private static mIsWaitForCancel:Z

.field private static mgr:Landroid/hardware/fingerprint/IFingerprintService;


# instance fields
.field final FINGERPRINT_ACQUIRED_TOUCH:I

.field final FINGERPRINT_ACQUIRED_UNTOUCH:I

.field final SUPPORT_TOUCH_UNTOUCH:Z

.field private mAlipayCaManager:Landroid/app/AlipayCaManager;

.field private mAuthenticateRequestRandom:J

.field private mContext:Landroid/content/Context;

.field private mCurAuthenticateRequestRandomForCancel:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field mUserData:I

.field myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

.field myids:[I

.field mytimeout:I

.field private opPackageName:Ljava/lang/String;

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    sput-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;-><init>()V

    const-string v2, " "

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    const/16 v2, 0x3fb

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->FINGERPRINT_ACQUIRED_TOUCH:I

    const/16 v2, 0x3fc

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->FINGERPRINT_ACQUIRED_UNTOUCH:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->SUPPORT_TOUCH_UNTOUCH:Z

    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAlipayCaManager:Landroid/app/AlipayCaManager;

    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    iput-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;

    invoke-direct {v2, p0}, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;-><init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const-string v2, "AlipayFingerprint"

    const-string v3, "AlipayFingerprint: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .local v1, "mPm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "mPm":Landroid/content/pm/IPackageManager;
    :goto_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AlipayFingerprint"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AlipayFingerprint"

    const-string v3, "get op package name fail !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/fingerprint/AlipayFingerprint;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/fingerprint/AlipayFingerprint;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    iget-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAuthenticateRequestRandom:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/alipay/android/fingerprint/AlipayFingerprint;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    iget-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCurAuthenticateRequestRandomForCancel:J

    return-wide v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z

    return p0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 6
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "mContext":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    const/16 v4, 0x3e8

    if-lt p1, v4, :cond_0

    add-int/lit16 v2, p1, -0x3e8

    .local v2, "msgNumber":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .local v1, "msgArray":[Ljava/lang/String;
    array-length v4, v1

    if-ge v2, v4, :cond_0

    const-string v4, ""

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v1    # "msgArray":[Ljava/lang/String;
    .end local v2    # "msgNumber":I
    :cond_0
    :goto_0
    :pswitch_0
    return-object v3

    :pswitch_1
    const v3, 0x10401cb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    const v3, 0x10401cc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    const v3, 0x10401cd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    const v3, 0x10401cf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_5
    const v3, 0x10401ce

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v1    # "msgArray":[Ljava/lang/String;
    .restart local v2    # "msgNumber":I
    :cond_1
    aget-object v3, v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static declared-synchronized open()Lcom/alipay/android/fingerprint/AlipayFingerprint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    monitor-enter v3

    :try_start_0
    const-string v2, "AlipayFingerprint"

    const-string v4, " open"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    if-nez v2, :cond_0

    new-instance v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;-><init>()V

    sput-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    :cond_0
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v2, :cond_1

    const-string v2, "fingerprint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    :cond_1
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v2, :cond_2

    const-string v2, "AlipayFingerprint"

    const-string v4, " unsurpport fingerprint"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;

    invoke-direct {v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$UnsupportedException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AlipayFingerprint"

    const-string v4, " open "

    invoke-static {v2, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->inst:Lcom/alipay/android/fingerprint/AlipayFingerprint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private recycle()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 4

    .prologue
    const-string v1, "AlipayFingerprint"

    const-string v2, " cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z

    iget-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAuthenticateRequestRandom:J

    iput-wide v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCurAuthenticateRequestRandomForCancel:J

    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v6, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .local v1, "fpIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "fpIds":[I
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AlipayFingerprint"

    const-string v5, "get finger print list fail !"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_1

    :try_start_0
    sget-object v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "i":I
    :goto_2
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AlipayFingerprint"

    const-string v4, "get finger print list fail !"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public invokeTACmd(Landroid/content/Context;[B)[B
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    const-string v0, "AlipayFingerprint"

    const-string v1, "invokeTACmd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAlipayCaManager:Landroid/app/AlipayCaManager;

    if-nez v0, :cond_0

    const-string v0, "AlipayFingerprint"

    const-string v1, "mAlipayCaManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mContext:Landroid/content/Context;

    const-string v1, "alipay_ca"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlipayCaManager;

    iput-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAlipayCaManager:Landroid/app/AlipayCaManager;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAlipayCaManager:Landroid/app/AlipayCaManager;

    if-eqz v0, :cond_1

    const-string v0, "AlipayFingerprint"

    const-string v1, "mAlipayCaManager != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAlipayCaManager:Landroid/app/AlipayCaManager;

    invoke-virtual {v0, p2}, Landroid/app/AlipayCaManager;->invokeAlipayCaCmd([B)[B

    move-result-object v0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()I
    .locals 2

    .prologue
    const-string v0, "AlipayFingerprint"

    const-string v1, " release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public startFpIdentify(Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;I[II)I
    .locals 10
    .param p1, "identifyListener"    # Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAuthenticateRequestRandom:J

    iput p2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    iput-object p3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iput p4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const-string v0, "AlipayFingerprint"

    const-string v1, "startFpIdentify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mgr:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->userId:I

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->opPackageName:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mytimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_WAITING_FOR_INPUT:I

    iget v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v9

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x74

    iget v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v9, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.FINGER_PRINT_NEW_LEUI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->CMD_RESULT_OK:I

    return v1
.end method
