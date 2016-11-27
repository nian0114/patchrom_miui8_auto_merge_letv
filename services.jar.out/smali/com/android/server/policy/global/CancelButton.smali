.class public Lcom/android/server/policy/global/CancelButton;
.super Lcom/android/server/policy/global/CircleButton;
.source "CancelButton.java"


# static fields
.field private static final DEFAULT_CROSS_DEGREES:I = 0x2d

.field private static final DELAY_TIME_CROSS_IN:J = 0xafL

.field private static final DELAY_TIME_CROSS_SCALE_OUT:J = 0x12cL

.field private static final TIME_CROSS_IN:J = 0x2bcL

.field private static final TIME_CROSS_ROTATE_OUT:J = 0x28aL

.field private static final TIME_CROSS_SCALE_OUT:J = 0x1f4L


# instance fields
.field private DEFAULT_CROSS_RADIUS:I

.field private mCrossColor:I

.field private mCrossDegrees:I

.field private mCrossIn:Landroid/animation/ObjectAnimator;

.field private mCrossPaint:Landroid/graphics/Paint;

.field private mCrossRadius:I

.field private mCrossRotateOut:Landroid/animation/ObjectAnimator;

.field private mCrossScaleOut:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawCross(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .local v7, "centerY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .local v8, "seq":I
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    int-to-float v0, v0

    int-to-float v1, v6

    int-to-float v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    sub-int v0, v6, v0

    int-to-float v1, v0

    int-to-float v2, v7

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v6

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private initCrossParams()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_ICON_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private loadCrossAnimator()V
    .locals 12

    .prologue
    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const-string v4, "crossScale"

    new-array v5, v8, [I

    aput v9, v5, v9

    iget v6, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    aput v6, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "crossScaleIn":Landroid/animation/PropertyValuesHolder;
    const-string v4, "crossRotate"

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "crossRotateIn":Landroid/animation/PropertyValuesHolder;
    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v9

    aput-object v1, v4, v10

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x2bc

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0xaf

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v4, "crossScale"

    new-array v5, v8, [I

    iget v6, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    aput v6, v5, v9

    aput v9, v5, v10

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "crossScaleOut":Landroid/animation/PropertyValuesHolder;
    const-string v4, "crossAlpha"

    new-array v5, v8, [I

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "crossAlphaOut":Landroid/animation/PropertyValuesHolder;
    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v4, v9

    aput-object v0, v4, v10

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v4, "crossRotate"

    new-array v5, v8, [I

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x28a

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        -0x2d
        0x2d
    .end array-data

    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x2d
        0xe1
    .end array-data
.end method

.method private setCrossAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    return-void
.end method

.method private setCrossRotate(I)V
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    return-void
.end method

.method private setCrossScale(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/server/policy/global/CancelButton$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/CancelButton$2;-><init>(Lcom/android/server/policy/global/CancelButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CancelButton;->drawCross(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/global/CancelButton;->isCancel:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    goto :goto_0
.end method

.method public bridge synthetic hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected initParams()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/global/CancelButton;->initCrossParams()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CancelButton;->resetParams(Z)V

    invoke-direct {p0}, Lcom/android/server/policy/global/CancelButton;->loadCrossAnimator()V

    return-void
.end method

.method public bridge synthetic onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reBoot()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method protected resetParams(Z)V
    .locals 1
    .param p1, "isReset"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->resetParams(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    return-void
.end method

.method public bridge synthetic setAlaphaWhenDrag(F)V
    .locals 0

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->setAlaphaWhenDrag(F)V

    return-void
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mTipIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v1, Lcom/android/server/policy/global/CancelButton$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/CancelButton$1;-><init>(Lcom/android/server/policy/global/CancelButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
