.class public Lcom/letv/leui/widget/DialFloatButtonView;
.super Landroid/widget/ImageView;
.source "DialFloatButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CIRCLE_COLOR:Ljava/lang/String; = "circleColor"

.field private static final ROTATION:Ljava/lang/String; = "rotation"


# instance fields
.field private ANIM_DURATION:I

.field private END_COLOR:I

.field private END_RORATION:F

.field private START_COLOR:I

.field private START_RORATION:F

.field private mCircle:Landroid/graphics/drawable/shapes/OvalShape;

.field private mCircleColor:I

.field private mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDialAnim:Landroid/animation/AnimatorSet;

.field private mRotateInterpolator:Landroid/animation/TimeInterpolator;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DialFloatButtonView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private createAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    const-string v2, "circleColor"

    new-array v3, v8, [I

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    aput v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_COLOR:I

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "backColorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v2, "rotation"

    new-array v3, v8, [F

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    aput v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_RORATION:F

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "rotateAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->ANIM_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v0    # "backColorAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "rotateAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public static createDefaultFloatingView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "floatIconId"    # I

    .prologue
    new-instance v0, Lcom/letv/leui/widget/DialFloatButtonView;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;)V

    .local v0, "dialFloatButtonView":Lcom/letv/leui/widget/DialFloatButtonView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DialFloatButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->ANIM_DURATION:I

    const v2, 0x1060157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    const v2, 0x1060158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_COLOR:I

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, "out":Landroid/util/TypedValue;
    const v2, 0x10501eb

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    const v2, 0x10501ec

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_RORATION:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/DialFloatButtonView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private measure(I)I
    .locals 2
    .param p1, "measureSpec"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->setRotation(F)V

    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->setCircleColor(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->invalidate()V

    return-void
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    iget-object v1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DialFloatButtonView;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/DialFloatButtonView;->measure(I)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "circleColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCircleColorInterpolator(Landroid/animation/TimeInterpolator;)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setRotateInterpolator(Landroid/animation/TimeInterpolator;)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public setSize(I)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 2
    .param p1, "dp"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mContext:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DialFloatButtonView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    return-object p0
.end method

.method public startAnim(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "animListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->cancelAnimation()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->createAnimation()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->startAnim(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method
