.class public Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
.super Ljava/lang/Object;
.source "QFingerprintManager.java"

# interfaces
.implements Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManager;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;,
        Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
        Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;
    }
.end annotation


# static fields
.field private static final MAX_ENROLL_TIMEOUT_MS:I = 0x7530

.field private static final MAX_FINGERID:I = 0x7fffffff

.field private static final MAX_MATCH_TIMEOUT_MS:I = 0x7530

.field private static final MAX_WAIT_MS_FOR_SERVICE:I = 0x1388

.field private static final MIN_ENROLL_TIMEOUT_MS:I = 0x7d0

.field private static final MIN_FINGERID:I = 0x1

.field private static final MIN_MATCH_TIMEOUT_MS:I = 0x7d0

.field private static final WAIT_INTERVAL_FOR_SERVICE:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v1, "qfp-sdk"

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->TAG:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mIsBound:Z

    .line 67
    iput-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mComponent:Landroid/content/ComponentName;

    .line 332
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;)V

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    const-string v1, "qfp-sdk"

    const-string v2, "FingerprintManager ctor..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mContext:Landroid/content/Context;

    .line 84
    const-string v1, "qfp-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " *** HOST APP TARGET SDK *** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "li":Landroid/content/Intent;
    const-class v1, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mComponent:Landroid/content/ComponentName;

    .line 91
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mIsBound:Z

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
    .param p1, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    return-object p1
.end method

.method private checkVersion(Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;)Z
    .locals 7
    .param p1, "service"    # Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    .prologue
    .line 308
    const/4 v1, 0x1

    .line 311
    .local v1, "majorVersion":I
    :try_start_0
    const-string v4, "qfp-sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "qfp service version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->version()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-interface {p1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->version()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-direct {v3, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v3, "token":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    if-lez v4, :cond_0

    .line 314
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "svcVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v4, v1, :cond_0

    .line 319
    const/4 v4, 0x1

    .line 326
    .end local v2    # "svcVersion":Ljava/lang/String;
    .end local v3    # "token":Ljava/util/StringTokenizer;
    :goto_0
    return v4

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "qfp-sdk"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    .line 274
    new-instance v2, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;

    const-string v3, "unable to start qfp service"

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_0
    iget-boolean v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mIsBound:Z

    if-nez v2, :cond_1

    .line 278
    new-instance v2, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;

    const-string v3, "unable to bind to qfp service"

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_1
    const/4 v1, 0x0

    .local v1, "timeExp":I
    :goto_0
    const/16 v2, 0x1388

    if-ge v1, v2, :cond_4

    .line 282
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->checkVersion(Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 284
    new-instance v2, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;

    const-string v3, "qfp service version not supported"

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    return-object v2

    .line 290
    :cond_3
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v2, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;

    const-string v3, "qfp service not availbale"

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mIsBound:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableFingerEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    const-string v1, "disableFingerEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->disableFingerEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFingerEvent(I)V
    .locals 2
    .param p1, "eventKeyCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    const-string v1, "enableFingerEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->enableFingerEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enroll(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V
    .locals 3
    .param p1, "timeoutMs"    # I
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enroll("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid timeout"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->enroll(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->close()V

    .line 455
    return-void
.end method

.method public declared-synchronized getLivenessEnabled([B)Z
    .locals 1
    .param p1, "authToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->getLivenessEnabled([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized match(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V
    .locals 3
    .param p1, "timeoutMs"    # I
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    .line 160
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid timeout"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->match(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized matchAny(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V
    .locals 3
    .param p1, "timeoutMs"    # I
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matchAny("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    .line 185
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid timeout"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->matchAny(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const v0, 0x7fffffff

    if-le p1, v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid fingerprintId"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 142
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->remove(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLivenessEnabled([BZ)V
    .locals 1
    .param p1, "authToken"    # [B
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->getService()Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;->setLivenessEnabled([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
