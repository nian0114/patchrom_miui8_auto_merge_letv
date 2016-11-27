.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;
.super Ljava/lang/Object;
.source "AsicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    }
.end annotation


# instance fields
.field private context:J

.field private final scaling:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "qfp-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->scaling:F

    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeCtor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    return-void
.end method

.method private getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F
    .locals 2
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I
    .locals 3
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-virtual {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeGetValue(JI)I

    move-result v0

    return v0
.end method

.method private getRegs(Z)Ljava/util/Map;
    .locals 11
    .param p1, "is32bits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .local v8, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    .local v0, "numRegs":I
    new-array v5, v9, [I

    .local v5, "is32bit":[I
    new-array v6, v9, [I

    .local v6, "reg":[I
    new-array v7, v9, [J

    .local v7, "val":[J
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    if-ge v4, v0, :cond_2

    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeGetReg(JI[I[I[J)V

    aget v1, v5, v10

    if-eqz v1, :cond_1

    move v1, v9

    :goto_1
    if-ne v1, p1, :cond_0

    aget v1, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-wide v2, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_1

    :cond_2
    return-object v8
.end method

.method private native nativeCtor()J
.end method

.method private native nativeDtor(J)V
.end method

.method private native nativeGetReg(JI[I[I[J)V
.end method

.method private native nativeGetSensorType(J)Ljava/lang/String;
.end method

.method private native nativeGetValue(JI)I
.end method

.method private native nativeSetReg(JIIIJ)V
.end method

.method private native nativeSetSensorType(JLjava/lang/String;)V
.end method

.method private native nativeSetValue(JII)V
.end method

.method private setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V
    .locals 1
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    .param p2, "value"    # F

    .prologue
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void
.end method

.method private setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V
    .locals 3
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    .param p2, "value"    # I

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-virtual {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetValue(JII)V

    return-void
.end method

.method private setRegs(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "eightBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p2, "thirtyTwoBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    const/4 v3, 0x0

    .local v3, "pos":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-wide v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "pos":I
    .local v10, "pos":I
    const/4 v4, 0x0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetReg(JIIIJ)V

    move v3, v10

    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iget-wide v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "pos":I
    .restart local v10    # "pos":I
    const/4 v4, 0x1

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetReg(JIIIJ)V

    move v3, v10

    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1

    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeDtor(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAdcMidRange()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getApI()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getApV()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method getContext()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    return-wide v0
.end method

.method public getDbiasV1()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV2()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV3()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV4()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDresetvI()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDresetvV()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getEightBitRegs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getRegs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getPulseCount()I
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getRangeGateDelay()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRangeGateWidth()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV1()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV2()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV3()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV4()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getScanHeight()I
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getScanWidth()I
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getSensorBias()I
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getSensorType()Ljava/lang/String;
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeGetSensorType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettleTime()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getT20VI()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getT20VV()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getTbgFreq()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getThirtyTwoBitRegs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getRegs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getvGateI()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvGateV()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvLogicI()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvLogicV()F
    .locals 1

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public isTbgEnable()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdcMidRange(F)V
    .locals 1
    .param p1, "adcMidRange"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setApI(F)V
    .locals 1
    .param p1, "apI"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setApV(F)V
    .locals 1
    .param p1, "apV"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDbiasV1(F)V
    .locals 1
    .param p1, "dbiasV1"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDbiasV2(F)V
    .locals 1
    .param p1, "dbiasV2"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDbiasV3(F)V
    .locals 1
    .param p1, "dbiasV3"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDbiasV4(F)V
    .locals 1
    .param p1, "dbiasV4"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDresetvI(F)V
    .locals 1
    .param p1, "dresetvI"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setDresetvV(F)V
    .locals 1
    .param p1, "dresetvV"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setEightBitRegs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "eightBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getThirtyTwoBitRegs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setRegs(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void
.end method

.method public setPulseCount(I)V
    .locals 1
    .param p1, "pulseCount"    # I

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void
.end method

.method public setRangeGateDelay(F)V
    .locals 1
    .param p1, "rangeGateDelay"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setRangeGateWidth(F)V
    .locals 1
    .param p1, "rangeGateWidth"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setRbiasV1(F)V
    .locals 1
    .param p1, "rbiasV1"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setRbiasV2(F)V
    .locals 1
    .param p1, "rbiasV2"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setRbiasV3(F)V
    .locals 1
    .param p1, "rbiasV3"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setRbiasV4(F)V
    .locals 1
    .param p1, "rbiasV4"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setScanHeight(I)V
    .locals 1
    .param p1, "scanHeight"    # I

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void
.end method

.method public setScanWidth(I)V
    .locals 1
    .param p1, "scanWidth"    # I

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void
.end method

.method public setSensorBias(I)V
    .locals 2
    .param p1, "sensorBias"    # I

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setSensorType(Ljava/lang/String;)V
    .locals 2
    .param p1, "sensorType"    # Ljava/lang/String;

    .prologue
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetSensorType(JLjava/lang/String;)V

    return-void
.end method

.method public setSettleTime(F)V
    .locals 1
    .param p1, "settleTime"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setT20VI(F)V
    .locals 1
    .param p1, "t20VI"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setT20VV(F)V
    .locals 1
    .param p1, "t20VV"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setTbgEnable(Z)V
    .locals 2
    .param p1, "tbgEnable"    # Z

    .prologue
    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTbgFreq(F)V
    .locals 1
    .param p1, "tbgFreq"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setThirtyTwoBitRegs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "thirtyTwoBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getEightBitRegs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setRegs(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public setvGateI(F)V
    .locals 1
    .param p1, "vGateI"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setvGateV(F)V
    .locals 1
    .param p1, "vGateV"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setvLogicI(F)V
    .locals 1
    .param p1, "vLogicI"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method

.method public setvLogicV(F)V
    .locals 1
    .param p1, "vLogicV"    # F

    .prologue
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    return-void
.end method
