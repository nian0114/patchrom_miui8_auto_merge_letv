.class Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;
.super Ljava/lang/Object;
.source "LeOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticOverScroller"
.end annotation


# static fields
.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field private static final FLING:I = 0x0

.field static GRAVITY:F = 0.0f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final MINIMUM_VELOCITY_FOR_BOUNCE:F = 3.4028235E38f

.field private static final OVERFLING:I = 0x1

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final SPRINGBACK:I = 0x2

.field private static final TIME_COEF:F = 5.083483f


# instance fields
.field private mAverageTime:J

.field private mBounceCoefficient:F

.field private mCoeffDeceleration:F

.field mCurrVelocity:F

.field mCurrentPosition:I

.field mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field private mFlingTestCount:I

.field private mGravityDeceleration:Z

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field mStart:I

.field mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field mVelocity:I


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mIterateCount:I

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringDistance:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFlingTestCount:I

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    iput-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    const v0, 0x3e23d70a    # 0.16f

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mBounceCoefficient:F

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFlingTestCount:I

    iput-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->update()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    return v0
.end method

.method static computeDuration(IIFF)I
    .locals 7
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "initialVelocity"    # F
    .param p3, "deceleration"    # F

    .prologue
    const/4 v6, 0x0

    sub-int v2, p0, p1

    .local v2, "distance":I
    mul-float v3, p2, p2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p3

    int-to-float v5, v2

    mul-float/2addr v4, v5

    sub-float v1, v3, v4

    .local v1, "discriminant":F
    cmpl-float v3, v1, v6

    if-ltz v3, :cond_1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .local v0, "delta":F
    cmpg-float v3, p3, v6

    if-gez v3, :cond_0

    neg-float v0, v0

    :cond_0
    const/high16 v3, 0x447a0000    # 1000.0f

    neg-float v4, p2

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    div-float/2addr v3, p3

    float-to-int v3, v3

    .end local v0    # "delta":F
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    if-lez p0, :cond_0

    sget v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->GRAVITY:F

    goto :goto_0
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->GRAVITY:F

    return-void
.end method

.method private onEdgeReached()V
    .locals 6

    .prologue
    const/16 v5, 0x26a

    const/4 v4, 0x0

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x40a2abe5

    div-float v0, v2, v3

    .local v0, "distance":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iput v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iput v5, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mOver:I

    .local v1, "over":I
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iput v5, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0

    .end local v1    # "over":I
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mOver:I

    neg-int v1, v2

    goto :goto_1
.end method

.method private quintic(JIIJ)I
    .locals 9
    .param p1, "timePassed"    # J
    .param p3, "start"    # I
    .param p4, "distance"    # I
    .param p5, "duration"    # J

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    long-to-float v1, p1

    mul-float/2addr v1, v3

    long-to-float v2, p5

    div-float/2addr v1, v2

    sub-float v0, v1, v3

    .local v0, "coeff":F
    int-to-double v2, p4

    float-to-double v4, v0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    int-to-double v4, p3

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private startSpringback(IIZ)V
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "positive"    # Z

    .prologue
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    iput p2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    sub-int v0, p2, p1

    .local v0, "distance":I
    int-to-float v1, v0

    const v2, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fee666666666666L    # 0.95

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringDistance:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringDistance:I

    if-nez v1, :cond_0

    iput v10, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    return-void

    :cond_0
    const/16 v1, 0x26a

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0
.end method

.method private update()Z
    .locals 12

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .local v10, "time":J
    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v2, v10, v4

    .local v2, "duration":J
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mIterateCount:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    long-to-float v1, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v8, v1, v4

    .local v8, "t":F
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v4, v8

    add-float/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v4, v8

    mul-float/2addr v4, v8

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v0, v1, v4

    .local v0, "distance":F
    :goto_1
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    float-to-int v4, v0

    add-int/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    .end local v0    # "distance":F
    :goto_2
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    if-ne v1, v4, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    int-to-long v6, v1

    div-long v6, v2, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    const-wide/16 v6, 0x14

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    const/16 v1, 0x32

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    :cond_3
    :goto_3
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    add-float v0, v1, v4

    .restart local v0    # "distance":F
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    goto :goto_1

    .end local v0    # "distance":F
    :cond_4
    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    const-wide/16 v6, 0x28

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    const/16 v1, 0x19

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    goto :goto_3

    :cond_5
    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mAverageTime:J

    const-wide/16 v6, 0x28

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFlingTestCount:I

    const/4 v4, 0x4

    if-lt v1, v4, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    add-float v0, v1, v4

    .restart local v0    # "distance":F
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    float-to-int v4, v0

    add-int/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto/16 :goto_2

    .end local v0    # "distance":F
    :cond_7
    iget v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iget v5, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringDistance:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v6, v1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->quintic(JIIJ)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto/16 :goto_2

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->update()Z

    const/4 v1, 0x1

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    sub-int v0, v1, v2

    .local v0, "distance":I
    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    const v1, 0x3f733333    # 0.95f

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    int-to-float v1, v0

    const v2, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fee666666666666L    # 0.95

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    const/16 v1, 0x26a

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringDistance:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 6
    .param p1, "extend"    # I

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "time":J
    iget-wide v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    .local v0, "elapsedTime":I
    add-int v1, v0, p1

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIII)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    iput p2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {p2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    if-ge v0, p3, :cond_1

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    iput p3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    if-le v0, p4, :cond_2

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    iput p4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3b860000    # -1000.0f

    int-to-float v1, p2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    mul-int v0, p2, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    if-ge v0, p3, :cond_3

    iput p3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p3, v1, v2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    if-le v0, p4, :cond_0

    iput p4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    invoke-static {v0, p4, v1, v2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_0
.end method

.method fling(IIIII)V
    .locals 20
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mOver:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .local v4, "absVelocity":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFlingTestCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFlingTestCount:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mUpdateCount:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    if-eqz v12, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    const/high16 v12, -0x3b860000    # -1000.0f

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    mul-int v12, p2, p2

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    sub-int v12, p1, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    move/from16 v0, p3

    if-ge v12, v0, :cond_0

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    move/from16 v0, p4

    if-le v12, v0, :cond_1

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_9

    add-int v12, p4, p5

    move/from16 v0, p1

    if-lt v0, v12, :cond_7

    add-int v12, p4, p5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v12, v1, v2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mIterateCount:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    const v12, 0x3f7851ec    # 0.97f

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    const/4 v5, 0x0

    .local v5, "delta":I
    const/4 v8, 0x0

    .local v8, "i":I
    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDecelerationSpeed:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v14, v14

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-int v5, v12

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iput v8, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mIterateCount:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    div-double/2addr v12, v14

    double-to-int v9, v12

    .local v9, "totalDistance":I
    const/16 v12, 0x7d0

    if-le v4, v12, :cond_5

    const/16 v12, 0x1388

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v12, v9

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    goto/16 :goto_0

    .end local v9    # "totalDistance":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .restart local v9    # "totalDistance":I
    :cond_5
    const/16 v12, 0xc8

    if-ge v4, v12, :cond_6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v12, v9

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    goto :goto_3

    :cond_6
    const/16 v12, 0xbb8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_3

    .end local v5    # "delta":I
    .end local v8    # "i":I
    .end local v9    # "totalDistance":I
    :cond_7
    if-gtz p2, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .local v10, "time":J
    sub-int v12, p1, p4

    int-to-float v12, v12

    const v13, 0x40a2abe5

    mul-float/2addr v12, v13

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    const-wide v14, 0x4014557ca0000000L    # 5.0834832191467285

    div-double v6, v12, v14

    .local v6, "durationSinceEdge":D
    long-to-double v12, v10

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    double-to-int v12, v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4014557ca0000000L    # 5.0834832191467285

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_1

    .end local v6    # "durationSinceEdge":D
    .end local v10    # "time":J
    :cond_9
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    sub-int v12, p3, p5

    move/from16 v0, p1

    if-gt v0, v12, :cond_a

    sub-int v12, p3, p5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v12, v1, v2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    :cond_a
    if-ltz p2, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    .restart local v10    # "time":J
    sub-int v12, p1, p3

    int-to-float v12, v12

    const v13, 0x40a2abe5

    mul-float/2addr v12, v13

    move/from16 v0, p2

    int-to-float v13, v0

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    const-wide v14, 0x4014557ca0000000L    # 5.0834832191467285

    div-double v6, v12, v14

    .restart local v6    # "durationSinceEdge":D
    long-to-double v12, v10

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    double-to-int v12, v12

    int-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    move/from16 v0, p2

    int-to-double v12, v0

    const-wide v14, 0x4014557ca0000000L    # 5.0834832191467285

    mul-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_1
.end method

.method notifyEdgeReached(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, p3, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mLastDistance:F

    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iput p2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mSpringbackEnd:I

    iput-boolean v4, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    const v3, 0x7fffffff

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    const/4 v0, 0x0

    .local v0, "delta":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/high16 v4, 0x43160000    # 150.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    :goto_0
    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v4, v3

    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v3

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-nez v0, :cond_0

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mIterateCount:I

    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDelta:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    float-to-double v8, v3

    int-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    div-double/2addr v4, v6

    double-to-int v2, v4

    .local v2, "totalDistance":I
    iget v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    .end local v0    # "delta":I
    .end local v1    # "i":I
    .end local v2    # "totalDistance":I
    :goto_1
    return-void

    .restart local v0    # "delta":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "delta":I
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v4, p2}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_1
.end method

.method setBounceCoefficient(F)V
    .locals 0
    .param p1, "coefficient"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mBounceCoefficient:F

    return-void
.end method

.method public setEnabledGravityDeceleration(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mGravityDeceleration:Z

    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

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

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    iput v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    if-le p1, p3, :cond_0

    invoke-direct {p0, p1, p3, v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "distance"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    iput p1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    add-int v0, p1, p2

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    iput p3, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDeceleration:F

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mVelocity:I

    return-void
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    return-void
.end method
