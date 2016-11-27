.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
.super Ljava/lang/Object;
.source "QFingerprintDebug.java"

# interfaces
.implements Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugObservable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$1;,
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;,
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;,
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;,
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;
    }
.end annotation


# static fields
.field public static final ERROR_QFP_NOT_ENABLED:I = -0x1

.field private static final MAX_DATE:Ljava/lang/String; = "12/31/2025"

.field private static final MAX_FINGERID:I = 0x7fffffff

.field private static final MAX_TIMEOUT_MS:I = 0x493e0

.field private static final MIN_DATE:Ljava/lang/String; = "1/1/2000"

.field public static final MIN_DEVICE_ID:I = 0x0

.field private static final MIN_FINGERID:I = 0x1

.field private static final MIN_TIMEOUT_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "qfp-sdk"


# instance fields
.field private final mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

.field protected mContext:Landroid/content/Context;

.field protected mEnvironment:I

.field protected mJniContext:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "qfp-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mEnvironment:I

    iput-wide v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$1;)V

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeOpen()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;

    const-string v1, "unable to connect to qfp service"

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iput-wide v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;-><init>(I)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    const-string v0, "qfp-sdk"

    const-string v1, "QFingerprintDebug created...default env"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static CreateFingerList([Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "fingers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "fingerList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .local v1, "finger":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "fingerId":I
    new-instance v6, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;

    invoke-direct {v6, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "finger":Ljava/lang/String;
    .end local v2    # "fingerId":I
    :cond_0
    return-object v3
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeDisableIvv(J)I
.end method

.method private native nativeEnableIvv(J)I
.end method

.method private native nativeEnroll(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;ILjava/lang/String;)I
.end method

.method private native nativeEnumDevices(J[[I[[Ljava/lang/String;[[Ljava/lang/String;[[I[[I[[I[[I)I
.end method

.method private native nativeEnumEnrollments(J[[Ljava/lang/String;)I
.end method

.method private native nativeGetAsicConfig(JJ)I
.end method

.method private native nativeGetDebugData(JLjava/lang/String;[[B)I
.end method

.method private native nativeIsIvvEnabled(J)Z
.end method

.method private native nativeOpen()J
.end method

.method private native nativeOpenFramework(J[[I[Ljava/lang/String;)I
.end method

.method private native nativeRemove(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;I)I
.end method

.method private native nativeRemoveUser(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;)I
.end method

.method private native nativeRetrieveEnrollee(JLjava/lang/String;[Ljava/lang/String;[J[[Ljava/lang/String;[I)I
.end method

.method private native nativeRetrieveFingerprint(JLjava/lang/String;I[B)I
.end method

.method private native nativeRunDebugCommand(JI[B[B)I
.end method

.method private native nativeRunFullCalibration(JI)I
.end method

.method private native nativeRunRealtimeCalibration(JI)I
.end method

.method private native nativeSaveEnrollRecord(JLjava/lang/String;J[B)I
.end method

.method private native nativeSaveFingerprint(JLjava/lang/String;I[B)I
.end method

.method private native nativeSetAsicConfig(JJ)I
.end method

.method private native nativeStartCapture(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;I)I
.end method

.method private native nativeStartListening(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;)I
.end method

.method private native nativeStopCapture(J)I
.end method

.method private native nativeStopListening(J)I
.end method


# virtual methods
.method public GetEnrollRecord(Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
    .locals 18
    .param p1, "enrollee"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v2, "qfp-sdk"

    const-string v3, "get enrollment record..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "null param"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .local v7, "enrolleeId":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v8, v2, [J

    .local v8, "enrollmentDate":[J
    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    .local v9, "fingers":[[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v10, v2, [I

    .local v10, "dbStatus":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v10, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mEnrolleeId:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRetrieveEnrollee(JLjava/lang/String;[Ljava/lang/String;[J[[Ljava/lang/String;[I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "fingerList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;>;"
    const/4 v2, 0x0

    aget-object v2, v9, v2

    array-length v2, v2

    if-lez v2, :cond_1

    const-string v2, "qfp-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "made native call. Got enrolleeId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " finger: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->CreateFingerList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    :goto_0
    new-instance v12, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;

    new-instance v13, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    const/4 v2, 0x0

    aget-object v2, v7, v2

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;-><init>(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    aget-wide v14, v8, v2

    const/4 v2, 0x0

    aget v17, v10, v2

    invoke-direct/range {v12 .. v17}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;JLjava/util/List;I)V

    .local v12, "ret":Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
    const-string v2, "qfp-sdk"

    const-string v3, "made return record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .end local v12    # "ret":Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
    :cond_1
    const-string v2, "qfp-sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "made native call. Got enrolleeId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " No fingers for this enrollee"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public RunTestCmd(I[B[B)V
    .locals 7
    .param p1, "numCmds"    # I
    .param p2, "reqBuf"    # [B
    .param p3, "rspBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "RunTestCmd..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRunDebugCommand(JI[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public add(Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "IFingerprintMatchListener is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeClose(J)V

    :cond_0
    iput-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    return-void
.end method

.method public disableIvv()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeDisableIvv(J)I

    move-result v0

    .local v0, "rc":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return v0
.end method

.method public enableIvv()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeEnableIvv(J)I

    move-result v0

    .local v0, "rc":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return v0
.end method

.method public enroll(ILjava/lang/String;)V
    .locals 7
    .param p1, "timeout"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "enroll request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const v0, 0x493e0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid timeout: min = 500 max = 300000"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-object v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeEnroll(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->close()V

    return-void
.end method

.method public getAsicConfig(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;)V
    .locals 4
    .param p1, "config"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "get ASIC config..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "need valid config"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-virtual {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getContext()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeGetAsicConfig(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public getDebugData(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)[B
    .locals 4
    .param p1, "property"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "property may not not be null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .local v0, "result":[[B
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    # getter for: Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;->debugPropertyName:Ljava/lang/String;
    invoke-static {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;->access$100(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeGetDebugData(JLjava/lang/String;[[B)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getDebugDataInt(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)I
    .locals 3
    .param p1, "property"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->getDebugData(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)[B

    move-result-object v0

    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "property must specify an integer property"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public getDebugDataString(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)Ljava/lang/String;
    .locals 6
    .param p1, "property"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->getDebugData(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)[B

    move-result-object v0

    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "terminator":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-byte v2, v0, v1

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->getDebugData(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$DebugProperty;)[B

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDevices()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v3, "qfp-sdk"

    const-string v4, "get device list..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .local v6, "id":[[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    .local v7, "vendor":[[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .local v8, "model":[[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .local v9, "ppi":[[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    .local v10, "width":[[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    .local v11, "height":[[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[I

    .local v12, "rolled_enabled":[[I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v12}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeEnumDevices(J[[I[[Ljava/lang/String;[[Ljava/lang/String;[[I[[I[[I[[I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v6, v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    new-instance v13, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    aget v14, v3, v2

    const/4 v3, 0x0

    aget-object v3, v7, v3

    aget-object v15, v3, v2

    const/4 v3, 0x0

    aget-object v3, v8, v3

    aget-object v16, v3, v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    aget v17, v3, v2

    const/4 v3, 0x0

    aget-object v3, v10, v3

    aget v18, v3, v2

    const/4 v3, 0x0

    aget-object v3, v11, v3

    aget v19, v3, v2

    const/4 v3, 0x0

    aget-object v3, v12, v3

    aget v3, v3, v2

    if-eqz v3, :cond_0

    const/16 v20, 0x1

    :goto_1
    const/16 v21, 0x0

    invoke-direct/range {v13 .. v21}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIIZZ)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    goto :goto_1

    :cond_1
    return-object v22
.end method

.method public getEnrollments()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    filled-new-array {v7, v10}, [I

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    .local v3, "enrollees":[[Ljava/lang/String;
    iget-wide v8, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v8, v9, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeEnumEnrollments(J[[Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    aget-object v6, v3, v10

    .local v6, "temp":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "enrolleeList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .local v1, "enrollee":Ljava/lang/String;
    new-instance v7, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    invoke-direct {v7, v1, v10}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "enrollee":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getFrameworkInfo()Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "qfp-sdk"

    const-string v4, "get framework info..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v5, v6}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .local v2, "version":[[I
    new-array v0, v5, [Ljava/lang/String;

    .local v0, "capabilities":[Ljava/lang/String;
    iget-wide v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v4, v5, v2, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeOpenFramework(J[[I[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;

    aget-object v3, v2, v6

    aget-object v4, v0, v6

    invoke-direct {v1, v3, v4}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;-><init>([ILjava/lang/String;)V

    .local v1, "ret":Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;
    const-string v3, "qfp-sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/FrameworkInfo;->mCapabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isIvvEnabled()Z
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeIsIvvEnabled(J)Z

    move-result v0

    return v0
.end method

.method protected notifyListeners(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onError(I)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListeners(II[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onCapture(II[B)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListeners(ILjava/lang/String;[B)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onMatched(ILjava/lang/String;[B)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListeners(I[B)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "extension"    # [B

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onStatus(I[B)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListenersCaptureDebugData([Ljava/lang/String;[[B)V
    .locals 7
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "debugData"    # [[B

    .prologue
    new-instance v0, Landroid/util/ArrayMap;

    array-length v5, p1

    invoke-direct {v0, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .local v0, "debugDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    aget-object v5, p1, v2

    aget-object v6, p2, v2

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .local v1, "debugDataMapUnmodifiable":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    iget-object v5, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v4, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v4, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onCaptureDebugData(Ljava/util/Map;)V

    goto :goto_1

    .end local v4    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_1
    return-void
.end method

.method protected notifyListenersEnroll(II[B)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I
    .param p3, "data"    # [B

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onEnrolled(II[B)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListenersRemove(I)V
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onRemoved(I)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method protected notifyListenersRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .local v1, "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->onRemoved(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "listener":Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
    :cond_0
    return-void
.end method

.method public remove(Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "IFingerprintMatchListener is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;

    invoke-interface {v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    const-string v1, "qfp-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "remove request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRemoveUser(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public remove(Ljava/lang/String;I)V
    .locals 7
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "fingerprintId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "remove request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const v0, 0x7fffffff

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid fingerprint id "

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-object v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRemove(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public runFullCalibration(I)V
    .locals 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "run full calibration..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid device id"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRunFullCalibration(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public runRealtimeCalibration(I)V
    .locals 2
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "run realtime calibration..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid device id"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeRunRealtimeCalibration(JI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public setAsicConfig(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;)V
    .locals 4
    .param p1, "config"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "set ASIC config..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "need valid config"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-virtual {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getContext()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeSetAsicConfig(JJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public startCapture(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "start capture request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-object v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    iget v3, p1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->mValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeStartCapture(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public startListening()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v1, "qfp-sdk"

    const-string v2, "start listening request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .local v0, "user":Ljava/lang/String;
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mCallback:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeStartListening(JLcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public stopCapture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "stop capture request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeStopCapture(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method public stopListening()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    const-string v0, "qfp-sdk"

    const-string v1, "stop listening request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->mJniContext:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->nativeStopListening(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->throwIfFail(I)V

    return-void
.end method

.method protected throwIfFail(I)V
    .locals 3
    .param p1, "rc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QFP failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;

    invoke-direct {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;-><init>(I)V

    throw v0

    :cond_0
    return-void
.end method
