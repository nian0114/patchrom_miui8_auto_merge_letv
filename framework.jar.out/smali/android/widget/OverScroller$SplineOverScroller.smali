.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private fBoostParamVal:[I

.field private fBoostTimeOut:I

.field private flingBoostTimeOut:I

.field private mAverageTime:J

.field private mCoeffDeceleration:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field private mDuration:I

.field private mEnableOverScrollForLe:Z

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingTestCount:I

.field private mIsPerfBoostEnabled:Z

.field private mIsPerfLockAcquired:Z

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mSmoothFling:Z

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 599
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 607
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 608
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 649
    const/4 v7, 0x0

    .line 650
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 651
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 652
    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    .line 654
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 657
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 658
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 659
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 660
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    .line 664
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 666
    const/high16 v9, 0x3f800000    # 1.0f

    .line 669
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 670
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 671
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 672
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_2

    .line 676
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 651
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 661
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 662
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 673
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 674
    :cond_3
    move v10, v8

    goto :goto_2

    .line 678
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v13, v14

    aput v15, v11, v12

    .line 679
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 591
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 619
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 620
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 621
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 622
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 623
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 626
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 627
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 628
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 631
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 632
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSpringbackEnd:I

    .line 633
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSpringDistance:I

    .line 635
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 639
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 640
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 644
    const/16 v1, 0x32

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 645
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1191
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    .line 686
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .line 688
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    .line 695
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    .line 698
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    .line 702
    :cond_0
    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfBoostEnabled:Z

    if-eqz v1, :cond_1

    .line 703
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    .line 707
    :cond_1
    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 708
    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 709
    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 711
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "x1"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/OverScroller$SplineOverScroller;

    .prologue
    .line 550
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000    # 100.0f

    .line 729
    sub-int v2, p2, p1

    .line 730
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 731
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 732
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 733
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 734
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 735
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 736
    .local v8, "x_sup":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 737
    .local v3, "t_inf":F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 738
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 739
    .local v5, "timeCoef":F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 741
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 930
    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v5, v6

    .line 932
    .local v2, "durationToApex":F
    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    .line 933
    .local v4, "velocitySquared":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    .line 934
    .local v0, "distanceToApex":F
    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    .line 935
    .local v1, "distanceToEdge":F
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-float v5, v0, v1

    float-to-double v8, v5

    mul-double/2addr v6, v8

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 937
    .local v3, "totalDuration":F
    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v5, 0x447a0000    # 1000.0f

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 938
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 939
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 940
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 721
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 912
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 916
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 917
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 918
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 923
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 924
    .local v2, "l":D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    .line 925
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 14

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 985
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v6, v6

    mul-float v4, v5, v6

    .line 986
    .local v4, "velocitySquared":F
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v7

    div-float v1, v4, v5

    .line 988
    .local v1, "distance":F
    iget-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v5, :cond_1

    .line 989
    const v5, 0x3dcccccd    # 0.1f

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 990
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 991
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 992
    const v5, 0x7fffffff

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "delta":I
    const/4 v2, 0x0

    .line 996
    .local v2, "i":I
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 999
    :goto_0
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v6, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v8, v5

    int-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v0, v6

    .line 1000
    if-nez v0, :cond_0

    .line 1001
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 1006
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v10, v5

    int-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v5, v8

    float-to-double v8, v5

    div-double/2addr v6, v8

    double-to-float v1, v6

    .line 1007
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1020
    .end local v0    # "delta":I
    .end local v2    # "i":I
    :goto_1
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1021
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1022
    return-void

    .line 1004
    .restart local v0    # "delta":I
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    .end local v0    # "delta":I
    .end local v2    # "i":I
    :cond_1
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 1011
    .local v3, "sign":F
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 1013
    neg-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1014
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v5

    .line 1016
    :cond_2
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v5, :cond_3

    move v5, v1

    :goto_2
    float-to-int v5, v5

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1017
    const/high16 v5, 0x447a0000    # 1000.0f

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_1

    .line 1016
    :cond_3
    neg-float v5, v1

    goto :goto_2
.end method

.method private quintic(JIIJ)I
    .locals 9
    .param p1, "timePassed"    # J
    .param p3, "start"    # I
    .param p4, "distance"    # I
    .param p5, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1210
    long-to-float v1, p1

    mul-float/2addr v1, v3

    long-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 1211
    .local v0, "coeff":F
    int-to-double v2, p4

    float-to-double v4, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method private startAfterEdge(IIII)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    .line 949
    move/from16 v0, p2

    if-le p1, v0, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 950
    const-string v2, "OverScroller"

    const-string v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 969
    :goto_0
    return-void

    .line 954
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v11, 0x1

    .line 955
    .local v11, "positive":Z
    :goto_1
    if-eqz v11, :cond_2

    move/from16 v8, p3

    .line 956
    .local v8, "edge":I
    :goto_2
    sub-int v10, p1, v8

    .line 957
    .local v10, "overDistance":I
    mul-int v2, v10, p4

    if-ltz v2, :cond_3

    const/4 v9, 0x1

    .line 958
    .local v9, "keepIncreasing":Z
    :goto_3
    if-eqz v9, :cond_4

    .line 960
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 954
    .end local v8    # "edge":I
    .end local v9    # "keepIncreasing":Z
    .end local v10    # "overDistance":I
    .end local v11    # "positive":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .restart local v11    # "positive":Z
    :cond_2
    move/from16 v8, p2

    .line 955
    goto :goto_2

    .line 957
    .restart local v8    # "edge":I
    .restart local v10    # "overDistance":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 962
    .restart local v9    # "keepIncreasing":Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    .line 963
    .local v12, "totalDistance":D
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_7

    .line 964
    if-eqz v11, :cond_5

    move/from16 v5, p2

    :goto_4
    if-eqz v11, :cond_6

    move v6, p1

    :goto_5
    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v5, p1

    goto :goto_4

    :cond_6
    move/from16 v6, p3

    goto :goto_5

    .line 966
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 943
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 944
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 945
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 946
    return-void

    :cond_0
    move v0, p3

    .line 943
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 802
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 803
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 804
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 805
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 806
    sub-int v0, p1, p2

    .line 807
    .local v0, "delta":I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 809
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 810
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 813
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v1, :cond_0

    .line 814
    const/16 v1, 0x26a

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1025
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1056
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1057
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 1028
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 1030
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1032
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1033
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1034
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1035
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1044
    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v1, :cond_1

    .line 1045
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1050
    :goto_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    goto :goto_1

    .line 1025
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    .line 776
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 777
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .line 778
    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 779
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 780
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 763
    :cond_0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 768
    return-void
.end method

.method fling(IIIII)V
    .locals 20
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    .line 822
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 823
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 824
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v0, p2

    int-to-float v9, v0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 825
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 826
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 827
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 829
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v9, :cond_0

    .line 830
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v9}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 831
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 834
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p4

    if-gt v0, v1, :cond_1

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 835
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 909
    :cond_2
    :goto_0
    return-void

    .line 839
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 840
    const-wide/16 v10, 0x0

    .line 842
    .local v10, "totalDistance":D
    if-eqz p2, :cond_4

    .line 843
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 844
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v10

    .line 848
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    const/4 v12, 0x4

    if-lt v9, v12, :cond_5

    .line 849
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x28

    cmp-long v9, v12, v14

    if-lez v9, :cond_5

    .line 850
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 854
    :cond_5
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 855
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 857
    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v9, :cond_b

    .line 858
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x14

    cmp-long v9, v12, v14

    if-gez v9, :cond_7

    .line 859
    const/16 v9, 0x32

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 864
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 866
    .local v6, "absVelocity":I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 867
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 868
    const v9, 0x3f7851ec    # 0.97f

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 870
    const/4 v7, 0x0

    .line 871
    .local v7, "delta":I
    const/4 v8, 0x0

    .line 872
    .local v8, "i":I
    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    mul-float/2addr v9, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    int-to-float v12, v12

    div-float/2addr v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 875
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v12, v9

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v9

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v7, v12

    .line 876
    if-nez v7, :cond_8

    .line 877
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 882
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v12, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v0, v9

    move-wide/from16 v16, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v9, v14

    float-to-double v14, v9

    div-double v10, v12, v14

    .line 884
    const/16 v9, 0x7d0

    if-le v6, v9, :cond_9

    .line 885
    const/16 v9, 0x1388

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 892
    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v12, v10

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0

    .line 860
    .end local v6    # "absVelocity":I
    .end local v7    # "delta":I
    .end local v8    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v14, 0x28

    cmp-long v9, v12, v14

    if-gez v9, :cond_6

    .line 861
    const/16 v9, 0x19

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    goto/16 :goto_1

    .line 880
    .restart local v6    # "absVelocity":I
    .restart local v7    # "delta":I
    .restart local v8    # "i":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 886
    :cond_9
    const/16 v9, 0xc8

    if-ge v6, v9, :cond_a

    .line 887
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 889
    :cond_a
    const/16 v9, 0xbb8

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 895
    .end local v6    # "absVelocity":I
    .end local v7    # "delta":I
    .end local v8    # "i":I
    :cond_b
    move/from16 v0, p2

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-double v12, v9

    mul-double/2addr v12, v10

    double-to-int v9, v12

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 896
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int v9, v9, p1

    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 899
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p3

    if-ge v9, v0, :cond_c

    .line 900
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v12, v1}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 901
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 904
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move/from16 v0, p4

    if-le v9, v0, :cond_2

    .line 905
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v9, v12, v1}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 906
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 973
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 974
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 975
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 978
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 980
    :cond_0
    return-void
.end method

.method public setEnableLeOverScroll(ZZ)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "smoothFling"    # Z

    .prologue
    .line 1196
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    .line 1197
    iput-boolean p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 1198
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 771
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 773
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 682
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 683
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 783
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 785
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 786
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 789
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 791
    if-ge p1, p2, :cond_1

    .line 792
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 797
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 793
    :cond_1
    if-le p1, p3, :cond_0

    .line 794
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 797
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 744
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 746
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 747
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 749
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 750
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 754
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 755
    return-void
.end method

.method update()Z
    .locals 23

    .prologue
    .line 1066
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v20

    .line 1067
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v20, v6

    .line 1069
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1070
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v3, :cond_1

    .line 1071
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v3, :cond_2

    .line 1072
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    if-eqz v3, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1086
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 1088
    :cond_1
    const/4 v3, 0x0

    .line 1186
    :goto_0
    return v3

    .line 1081
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v3, v6, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-eq v3, v6, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1083
    const/4 v3, 0x1

    goto :goto_0

    .line 1091
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-nez v3, :cond_4

    .line 1092
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    .line 1093
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    if-nez v3, :cond_5

    .line 1095
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    .line 1100
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostParamVal:[I

    invoke-virtual {v3, v6, v7}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1103
    :cond_4
    const-wide/16 v12, 0x0

    .line 1104
    .local v12, "distance":D
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 1171
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v3, :cond_c

    .line 1172
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v3, :cond_b

    .line 1173
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1174
    const/4 v3, 0x1

    goto :goto_0

    .line 1098
    .end local v12    # "distance":D
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->fBoostTimeOut:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingBoostTimeOut:I

    goto :goto_1

    .line 1106
    .restart local v12    # "distance":D
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v3, :cond_7

    .line 1107
    long-to-float v3, v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .line 1108
    .local v16, "t":F
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, v16

    float-to-int v14, v3

    .line 1109
    .local v14, "index":I
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1110
    .local v11, "distanceCoef":F
    const/16 v22, 0x0

    .line 1111
    .local v22, "velocityCoef":F
    const/16 v3, 0x64

    if-ge v14, v3, :cond_6

    .line 1112
    int-to-float v3, v14

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v18, v3, v6

    .line 1113
    .local v18, "t_inf":F
    add-int/lit8 v3, v14, 0x1

    int-to-float v3, v3

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v19, v3, v6

    .line 1114
    .local v19, "t_sup":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v2, v3, v14

    .line 1115
    .local v2, "d_inf":F
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v6, v14, 0x1

    aget v10, v3, v6

    .line 1116
    .local v10, "d_sup":F
    sub-float v3, v10, v2

    sub-float v6, v19, v18

    div-float v22, v3, v6

    .line 1117
    sub-float v3, v16, v18

    mul-float v3, v3, v22

    add-float v11, v2, v3

    .line 1120
    .end local v2    # "d_inf":F
    .end local v10    # "d_sup":F
    .end local v18    # "t_inf":F
    .end local v19    # "t_sup":F
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-double v12, v3

    .line 1121
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v3, v3

    mul-float v3, v3, v22

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1124
    .end local v11    # "distanceCoef":F
    .end local v14    # "index":I
    .end local v16    # "t":F
    .end local v22    # "velocityCoef":F
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/4 v6, 0x5

    if-ne v3, v6, :cond_8

    .line 1126
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    int-to-long v8, v3

    div-long v8, v4, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1129
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1130
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v3, v6

    float-to-double v12, v3

    .line 1131
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1132
    double-to-float v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_2

    .line 1139
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-nez v3, :cond_9

    .line 1140
    long-to-float v3, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v16, v3, v6

    .line 1141
    .restart local v16    # "t":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1142
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v6, v6, v16

    mul-float v6, v6, v16

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v3, v6

    float-to-double v12, v3

    .line 1144
    goto/16 :goto_2

    .line 1145
    .end local v16    # "t":F
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1146
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v3, v6

    float-to-double v12, v3

    .line 1147
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1148
    double-to-float v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_2

    .line 1155
    :pswitch_2
    long-to-float v3, v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v6, v6

    div-float v16, v3, v6

    .line 1156
    .restart local v16    # "t":F
    mul-float v17, v16, v16

    .line 1157
    .local v17, "t2":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v15

    .line 1159
    .local v15, "sign":F
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForLe:Z

    if-eqz v3, :cond_a

    .line 1160
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v8, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->quintic(JIIJ)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-double v12, v3

    goto/16 :goto_2

    .line 1163
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v17

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v7, v7, v16

    mul-float v7, v7, v17

    sub-float/2addr v6, v7

    mul-float/2addr v3, v6

    float-to-double v12, v3

    .line 1164
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v3, v6

    move/from16 v0, v16

    neg-float v6, v0

    add-float v6, v6, v17

    mul-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1176
    .end local v15    # "sign":F
    .end local v16    # "t":F
    .end local v17    # "t2":F
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v6, v12

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1177
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ne v3, v6, :cond_d

    .line 1178
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1183
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1186
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 714
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 715
    return-void
.end method
