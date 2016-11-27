.class public Lcom/letv/leui/widget/CircleAnimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleAnimDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CIRCLE_FILL_PROPERTY:Ljava/lang/String; = "circleScale"

.field private static final PAINT_ALPHA_PROPERTY:Ljava/lang/String; = "paintAlpha"


# instance fields
.field private centerColor:I

.field private circleScale:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private paintAlpha:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "centerColor"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    iput-boolean v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    return-void
.end method

.method private getDownPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    const-string v2, "paintAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x2d
    .end array-data
.end method

.method private getDownSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    const-string v2, "circleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "sizeAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getUpPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    const-string v2, "paintAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2d
        0x0
    .end array-data
.end method

.method private getUpSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const-string v2, "circleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "sizeAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isPressed([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x0

    .local v2, "pressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    if-eqz p1, :cond_1

    array-length v1, p1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_0
    return v2

    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public downAnim()V
    .locals 4

    .prologue
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getDownSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "downSizeAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getDownPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "paintAlphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .local v1, "size":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .end local v1    # "size":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCenterColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPaintAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CircleAnimDrawable;->isPressed([I)Z

    move-result v0

    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    iget-boolean v1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->downAnim()V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->upAnim()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setCenterColor(I)V
    .locals 0
    .param p1, "centerColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    return-void
.end method

.method public setCircleScale(F)V
    .locals 0
    .param p1, "circleScale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 0
    .param p1, "paintAlpha"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public upAnim()V
    .locals 2

    .prologue
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getUpPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "upPaintAlphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
