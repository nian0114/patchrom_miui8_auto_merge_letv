.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "lightSensorRate"    # J

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    const v0, 0x466a6000    # 15000.0f

    long-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 810
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 811
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 812
    return-void
.end method

.method private offsetOf(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 914
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 917
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 918
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_2

    .line 919
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr p1, v0

    .line 921
    :cond_2
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 890
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 891
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 892
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 893
    return-void
.end method

.method public getLux(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prune(J)V
    .locals 5
    .param p1, "horizon"    # J

    .prologue
    .line 853
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v1, :cond_2

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 872
    .local v0, "next":I
    :cond_1
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 873
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 857
    .end local v0    # "next":I
    :cond_2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 858
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/lit8 v0, v1, 0x1

    .line 859
    .restart local v0    # "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v1, :cond_3

    .line 860
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v0, v1

    .line 862
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    .line 876
    .end local v0    # "next":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 877
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aput-wide p1, v1, v2

    goto :goto_0
.end method

.method public push(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x0

    .line 823
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 824
    .local v4, "next":I
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_1

    .line 825
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    mul-int/lit8 v3, v5, 0x2

    .line 827
    .local v3, "newSize":I
    new-array v1, v3, [F

    .line 828
    .local v1, "newRingLux":[F
    new-array v2, v3, [J

    .line 829
    .local v2, "newRingTime":[J
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int v0, v5, v6

    .line 830
    .local v0, "length":I
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 831
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 832
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v5, :cond_0

    .line 833
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 834
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v2, v0, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 836
    :cond_0
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 837
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 839
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 840
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 841
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 843
    .end local v0    # "length":I
    .end local v1    # "newRingLux":[F
    .end local v2    # "newRingTime":[J
    .end local v3    # "newSize":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v5, v4

    .line 844
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v5, v4

    .line 845
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 846
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_2

    .line 847
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 849
    :cond_2
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 850
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 898
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 899
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v4, :cond_2

    .line 900
    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 901
    .local v2, "next":J
    :goto_1
    if-eqz v1, :cond_0

    .line 902
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 904
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 905
    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 906
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 907
    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v2    # "next":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_1

    .line 909
    :cond_2
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
