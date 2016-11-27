.class public Lcom/letv/leui/widget/LeOverScroller;
.super Ljava/lang/Object;
.source "LeOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static sViscousFluidNormalize:F = 0.0f

.field private static sViscousFluidScale:F = 0.0f

.field private static final tag:Ljava/lang/String; = "LeOverScroller"


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastUpdateTime:J

.field private mMode:I

.field private mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

.field private mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/letv/leui/widget/LeOverScroller;->sViscousFluidScale:F

    sput v1, Lcom/letv/leui/widget/LeOverScroller;->sViscousFluidNormalize:F

    invoke-static {v1}, Lcom/letv/leui/widget/LeOverScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/letv/leui/widget/LeOverScroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const v0, 0x3e23d70a    # 0.16f

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/letv/leui/widget/LeOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mLastUpdateTime:J

    iput-object p2, p0, Lcom/letv/leui/widget/LeOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    new-instance v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-static {p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->initializeFromContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p4}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    return-void
.end method

.method static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    sget v1, Lcom/letv/leui/widget/LeOverScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    :goto_0
    sget v1, Lcom/letv/leui/widget/LeOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_0
    const v0, 0x3ebc5ab2

    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->finish()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .local v4, "time":J
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-wide v6, v6, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v2, v4, v6

    .local v2, "elapsedTime":J
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v6, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    long-to-float v6, v2

    int-to-float v7, v0

    div-float v1, v6, v7

    .local v1, "q":F
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    invoke-static {v1}, Lcom/letv/leui/widget/LeOverScroller;->viscousFluid(F)F

    move-result v1

    :goto_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6, v1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->updateScroll(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6, v1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->updateScroll(F)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_2

    .end local v1    # "q":F
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeOverScroller;->abortAnimation()V

    goto :goto_1

    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    # invokes: Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->update()Z
    invoke-static {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->access$000(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->finish()V

    :cond_4
    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    # invokes: Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->update()Z
    invoke-static {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->access$000(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->finish()V

    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mLastUpdateTime:J

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->extendDuration(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/widget/LeOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->fling(IIIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-object v1, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iput-boolean p1, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    iput-boolean p1, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v2, v2, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v2, v2, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    iget-object v1, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    # getter for: Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->access$100(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    # getter for: Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->access$100(Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setEnabledGravityDeceleration(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setEnabledGravityDeceleration(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setEnabledGravityDeceleration(Z)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    move-result v0

    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->springback(III)Z

    move-result v1

    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mMode:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->startScroll(III)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "time":J
    iget-object v4, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerX:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-wide v4, v4, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    iget-object v6, p0, Lcom/letv/leui/widget/LeOverScroller;->mScrollerY:Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;

    iget-wide v6, v6, Lcom/letv/leui/widget/LeOverScroller$MagneticOverScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
