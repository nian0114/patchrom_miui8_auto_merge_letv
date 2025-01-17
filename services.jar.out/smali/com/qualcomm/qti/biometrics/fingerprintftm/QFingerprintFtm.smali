.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;,
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;,
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;,
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;,
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;,
        Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceId:I

.field private mJniContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "qfp-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # I

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "qfp-ftm"

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->TAG:Ljava/lang/String;

    iput-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeOpen()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to connect to qfp service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private native nativeCalibrationBge(JI)I
.end method

.method private native nativeCalibrationGet(JILjava/lang/String;[Ljava/lang/String;)I
.end method

.method private native nativeCalibrationPsf(JI[I[I)I
.end method

.method private native nativeCalibrationSet(JILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeCalibrationWrite(JI)I
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeDbiasCalib(JI[I)I
.end method

.method private native nativeOpen()J
.end method

.method private native nativeTestDeinit(JI)I
.end method

.method private native nativeTestDigital(JI[I[I)I
.end method

.method private native nativeTestImageQuality(JI[I[I)I
.end method

.method private native nativeTestInit(JI)I
.end method

.method private native nativeTestNoise(JI[I[I)I
.end method

.method private native nativeTestParamGet(JII[Ljava/lang/String;)I
.end method

.method private native nativeTestParamSet(JIILjava/lang/String;)I
.end method

.method private native nativeTestRx(JI[I[I[I[I[I)I
.end method

.method private native nativeTestTemperature(JI)I
.end method

.method private native nativeTestTft(JI[I[I[I[I[I)I
.end method

.method private native nativeTestTx(JI[I[I[I[I)I
.end method

.method private throwIfFail(I)V
    .locals 3
    .param p1, "rc"    # I

    .prologue
    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QFP failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    const-string v1, "qfp-ftm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public calibrationBge()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeCalibrationBge(JI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public calibrationGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .local v6, "value":[Ljava/lang/String;
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeCalibrationGet(JILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    const/4 v0, 0x0

    aget-object v0, v6, v0

    return-object v0
.end method

.method public calibrationPsf()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    new-array v5, v1, [I

    .local v5, "phase":[I
    new-array v6, v1, [I

    .local v6, "initialDelay":[I
    aput v7, v6, v7

    aput v7, v5, v7

    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeCalibrationPsf(JI[I[I)I

    move-result v0

    .local v0, "status":I
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;

    aget v2, v5, v7

    aget v3, v6, v7

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V

    return-object v1
.end method

.method public calibrationSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeCalibrationSet(JILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public calibrationWrite()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeCalibrationWrite(JI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public dbiasCalib()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [I

    .local v0, "optimalDbias":[I
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeDbiasCalib(JI[I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public finalize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeClose(J)V

    :cond_0
    iput-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    return-void
.end method

.method public testDeinit()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestDeinit(JI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public testDigital()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    new-array v5, v0, [I

    .local v5, "asicId":[I
    new-array v6, v0, [I

    .local v6, "asicSerialNumber":[I
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestDigital(JI[I[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;

    aget v1, v5, v7

    aget v2, v6, v7

    invoke-direct {v0, p0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;II)V

    return-object v0
.end method

.method public testImageQuality()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    new-array v5, v1, [I

    .local v5, "SNR1":[I
    new-array v6, v1, [I

    .local v6, "delta1":[I
    aput v7, v6, v7

    aput v7, v5, v7

    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestImageQuality(JI[I[I)I

    move-result v0

    .local v0, "status":I
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;

    aget v2, v5, v7

    aget v3, v6, v7

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V

    return-object v1
.end method

.method public testInit()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestInit(JI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public testNoise()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    new-array v5, v1, [I

    .local v5, "stddevTbOn":[I
    new-array v6, v1, [I

    .local v6, "stddevTbOff":[I
    aput v7, v6, v7

    aput v7, v5, v7

    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestNoise(JI[I[I)I

    move-result v0

    .local v0, "status":I
    new-instance v1, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;

    aget v2, v5, v7

    aget v3, v6, v7

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V

    return-object v1
.end method

.method public testParamGet(I)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # I

    .prologue
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .local v6, "value":[Ljava/lang/String;
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestParamGet(JII[Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    const/4 v0, 0x0

    aget-object v0, v6, v0

    return-object v0
.end method

.method public testParamSet(ILjava/lang/String;)V
    .locals 7
    .param p1, "name"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestParamSet(JIILjava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public testRx()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;
    .locals 19

    .prologue
    const/4 v2, 0x1

    new-array v7, v2, [I

    .local v7, "bias":[I
    const/4 v2, 0x1

    new-array v8, v2, [I

    .local v8, "median":[I
    const/4 v2, 0x1

    new-array v9, v2, [I

    .local v9, "stddev":[I
    const/4 v2, 0x1

    new-array v10, v2, [I

    .local v10, "q5":[I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .local v11, "q95":[I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestRx(JI[I[I[I[I[I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    new-instance v12, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;

    const/4 v2, 0x0

    aget v14, v7, v2

    const/4 v2, 0x0

    aget v15, v8, v2

    const/4 v2, 0x0

    aget v16, v9, v2

    const/4 v2, 0x0

    aget v17, v10, v2

    const/4 v2, 0x0

    aget v18, v11, v2

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v18}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;IIIII)V

    return-object v12
.end method

.method public testTemperature()V
    .locals 3

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestTemperature(JI)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    return-void
.end method

.method public testTft()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;
    .locals 19

    .prologue
    const/4 v2, 0x1

    new-array v7, v2, [I

    .local v7, "bias":[I
    const/4 v2, 0x1

    new-array v8, v2, [I

    .local v8, "median":[I
    const/4 v2, 0x1

    new-array v9, v2, [I

    .local v9, "stddev":[I
    const/4 v2, 0x1

    new-array v10, v2, [I

    .local v10, "q5":[I
    const/4 v2, 0x1

    new-array v11, v2, [I

    .local v11, "q95":[I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestTft(JI[I[I[I[I[I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    new-instance v12, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;

    const/4 v2, 0x0

    aget v14, v7, v2

    const/4 v2, 0x0

    aget v15, v8, v2

    const/4 v2, 0x0

    aget v16, v9, v2

    const/4 v2, 0x0

    aget v17, v10, v2

    const/4 v2, 0x0

    aget v18, v11, v2

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v18}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;IIIII)V

    return-object v12
.end method

.method public testTx()Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;
    .locals 15

    .prologue
    const/4 v0, 0x1

    const/4 v10, 0x0

    new-array v5, v0, [I

    .local v5, "median":[I
    new-array v6, v0, [I

    .local v6, "stddev":[I
    new-array v7, v0, [I

    .local v7, "q5":[I
    new-array v8, v0, [I

    .local v8, "q95":[I
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mJniContext:J

    iget v4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->mDeviceId:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->nativeTestTx(JI[I[I[I[I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;->throwIfFail(I)V

    new-instance v9, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;

    aget v11, v5, v10

    aget v12, v6, v10

    aget v13, v7, v10

    aget v14, v8, v10

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;IIII)V

    return-object v9
.end method
