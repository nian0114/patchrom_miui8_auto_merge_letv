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
    .line 372
    const-string v0, "qfp-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    .line 324
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->scaling:F

    .line 20
    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeCtor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    .line 21
    return-void
.end method

.method private getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F
    .locals 2
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    .prologue
    .line 327
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
    .line 335
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

    .line 343
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v8, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    .line 346
    .local v0, "numRegs":I
    new-array v5, v9, [I

    .line 347
    .local v5, "is32bit":[I
    new-array v6, v9, [I

    .line 348
    .local v6, "reg":[I
    new-array v7, v9, [J

    .line 349
    .local v7, "val":[J
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 350
    iget-wide v2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeGetReg(JI[I[I[J)V

    .line 351
    aget v1, v5, v10

    if-eqz v1, :cond_1

    move v1, v9

    :goto_1
    if-ne v1, p1, :cond_0

    .line 352
    aget v1, v6, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-wide v2, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v10

    .line 351
    goto :goto_1

    .line 356
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
    .line 331
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 332
    return-void
.end method

.method private setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V
    .locals 3
    .param p1, "key"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;
    .param p2, "value"    # I

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-virtual {p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetValue(JII)V

    .line 340
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
    .line 361
    .local p1, "eightBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .local p2, "thirtyTwoBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRegs:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 362
    const/4 v3, 0x0

    .line 363
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

    .line 364
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

    .line 365
    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_0

    .line 366
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

    .line 367
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

    .line 368
    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    goto :goto_1

    .line 369
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
    .line 24
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeDtor(J)V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    .line 26
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 27
    return-void
.end method

.method public getAdcMidRange()F
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getApI()F
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getApV()F
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method getContext()J
    .locals 2

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    return-wide v0
.end method

.method public getDbiasV1()F
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV2()F
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV3()F
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDbiasV4()F
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDresetvI()F
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getDresetvV()F
    .locals 1

    .prologue
    .line 126
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
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getRegs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getPulseCount()I
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getRangeGateDelay()F
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRangeGateWidth()F
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV1()F
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV2()F
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV3()F
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getRbiasV4()F
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getScanHeight()I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getScanWidth()I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getSensorBias()I
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)I

    move-result v0

    return v0
.end method

.method public getSensorType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeGetSensorType(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettleTime()F
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getT20VI()F
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getT20VV()F
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getTbgFreq()F
    .locals 1

    .prologue
    .line 206
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
    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getRegs(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getvGateI()F
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvGateV()F
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvLogicI()F
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public getvLogicV()F
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;)F

    move-result v0

    return v0
.end method

.method public isTbgEnable()Z
    .locals 2

    .prologue
    .line 214
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
    .line 242
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->adcMidRange:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 243
    return-void
.end method

.method public setApI(F)V
    .locals 1
    .param p1, "apI"    # F

    .prologue
    .line 122
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 123
    return-void
.end method

.method public setApV(F)V
    .locals 1
    .param p1, "apV"    # F

    .prologue
    .line 114
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->apV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 115
    return-void
.end method

.method public setDbiasV1(F)V
    .locals 1
    .param p1, "dbiasV1"    # F

    .prologue
    .line 178
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 179
    return-void
.end method

.method public setDbiasV2(F)V
    .locals 1
    .param p1, "dbiasV2"    # F

    .prologue
    .line 186
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 187
    return-void
.end method

.method public setDbiasV3(F)V
    .locals 1
    .param p1, "dbiasV3"    # F

    .prologue
    .line 194
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 195
    return-void
.end method

.method public setDbiasV4(F)V
    .locals 1
    .param p1, "dbiasV4"    # F

    .prologue
    .line 202
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 203
    return-void
.end method

.method public setDresetvI(F)V
    .locals 1
    .param p1, "dresetvI"    # F

    .prologue
    .line 138
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 139
    return-void
.end method

.method public setDresetvV(F)V
    .locals 1
    .param p1, "dresetvV"    # F

    .prologue
    .line 130
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->dresetvV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 131
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
    .line 274
    .local p1, "eightBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getThirtyTwoBitRegs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setRegs(Ljava/util/Map;Ljava/util/Map;)V

    .line 275
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->numRows:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 227
    return-void
.end method

.method public setPulseCount(I)V
    .locals 1
    .param p1, "pulseCount"    # I

    .prologue
    .line 266
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->pulseCount:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 267
    return-void
.end method

.method public setRangeGateDelay(F)V
    .locals 1
    .param p1, "rangeGateDelay"    # F

    .prologue
    .line 250
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateDelay:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 251
    return-void
.end method

.method public setRangeGateWidth(F)V
    .locals 1
    .param p1, "rangeGateWidth"    # F

    .prologue
    .line 258
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rangeGateWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 259
    return-void
.end method

.method public setRbiasV1(F)V
    .locals 1
    .param p1, "rbiasV1"    # F

    .prologue
    .line 146
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV1:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 147
    return-void
.end method

.method public setRbiasV2(F)V
    .locals 1
    .param p1, "rbiasV2"    # F

    .prologue
    .line 154
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV2:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 155
    return-void
.end method

.method public setRbiasV3(F)V
    .locals 1
    .param p1, "rbiasV3"    # F

    .prologue
    .line 162
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV3:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 163
    return-void
.end method

.method public setRbiasV4(F)V
    .locals 1
    .param p1, "rbiasV4"    # F

    .prologue
    .line 170
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->rbiasV4:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 171
    return-void
.end method

.method public setScanHeight(I)V
    .locals 1
    .param p1, "scanHeight"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanHeight:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 51
    return-void
.end method

.method public setScanWidth(I)V
    .locals 1
    .param p1, "scanWidth"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->scanWidth:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 43
    return-void
.end method

.method public setSensorBias(I)V
    .locals 2
    .param p1, "sensorBias"    # I

    .prologue
    .line 234
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->sensorBias:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    int-to-float v1, p1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 235
    return-void
.end method

.method public setSensorType(Ljava/lang/String;)V
    .locals 2
    .param p1, "sensorType"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->context:J

    invoke-direct {p0, v0, v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->nativeSetSensorType(JLjava/lang/String;)V

    .line 35
    return-void
.end method

.method public setSettleTime(F)V
    .locals 1
    .param p1, "settleTime"    # F

    .prologue
    .line 58
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->settleTime:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 59
    return-void
.end method

.method public setT20VI(F)V
    .locals 1
    .param p1, "t20VI"    # F

    .prologue
    .line 74
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 75
    return-void
.end method

.method public setT20VV(F)V
    .locals 1
    .param p1, "t20VV"    # F

    .prologue
    .line 66
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->t20VV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 67
    return-void
.end method

.method public setTbgEnable(Z)V
    .locals 2
    .param p1, "tbgEnable"    # Z

    .prologue
    .line 218
    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgEnable:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setIntValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;I)V

    .line 219
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTbgFreq(F)V
    .locals 1
    .param p1, "tbgFreq"    # F

    .prologue
    .line 210
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->tbgFreq:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 211
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
    .line 282
    .local p1, "thirtyTwoBitRegs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->getEightBitRegs()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setRegs(Ljava/util/Map;Ljava/util/Map;)V

    .line 283
    return-void
.end method

.method public setvGateI(F)V
    .locals 1
    .param p1, "vGateI"    # F

    .prologue
    .line 90
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 91
    return-void
.end method

.method public setvGateV(F)V
    .locals 1
    .param p1, "vGateV"    # F

    .prologue
    .line 82
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vGateV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 83
    return-void
.end method

.method public setvLogicI(F)V
    .locals 1
    .param p1, "vLogicI"    # F

    .prologue
    .line 106
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicI:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 107
    return-void
.end method

.method public setvLogicV(F)V
    .locals 1
    .param p1, "vLogicV"    # F

    .prologue
    .line 98
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;->vLogicV:Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration;->setFloatValue(Lcom/qualcomm/qti/biometrics/fingerprintdebug/AsicConfiguration$Key;F)V

    .line 99
    return-void
.end method
