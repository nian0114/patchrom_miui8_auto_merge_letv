.class public Lcom/letv/leui/widget/LeGlowDelegate;
.super Ljava/lang/Object;
.source "LeGlowDelegate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final BACK_ROUND_RECT_ALPHA:Ljava/lang/String; = "backRoundRectAlpha"

.field private static final BACK_ROUND_RECT_SCALE:Ljava/lang/String; = "backRoundRectScale"

.field private static final PRESS:I = 0x1

.field private static final PRESS_DURATION:I = 0xaf

.field private static final RELEASE:I = 0x2

.field private static final RELEASE_DURATION:I = 0xaf


# instance fields
.field private DEFAULT_BACK_ROUND_RECT_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private backRoundRectAlpha:I

.field private backRoundRectColor:I

.field private backRoundRectPaint:Landroid/graphics/Paint;

.field private backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

.field public backRoundRectPressAlphaEnd:I

.field private backRoundRectPressAlphaStart:I

.field private backRoundRectPressScale:Landroid/animation/ObjectAnimator;

.field public backRoundRectPressScaleEnd:F

.field private backRoundRectPressScaleStart:F

.field private backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

.field private backRoundRectReleaseAlphaEnd:I

.field private backRoundRectReleaseAlphaStart:I

.field private backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

.field private backRoundRectReleaseScaleEnd:F

.field private backRoundRectReleaseScaleStart:F

.field private backRoundRectScale:F

.field private backRoundRectWidth:F

.field private centerX:I

.field private centerY:I

.field isPressAnimEnd:Z

.field isUp:Z

.field private mEnabled:Z

.field private mView:Landroid/view/View;

.field private pressAnim:Landroid/animation/AnimatorSet;

.field private rectF:Landroid/graphics/RectF;

.field private releaseAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleStart:F

    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iput v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaEnd:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    iput-object p2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "delegateView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    return-void
.end method

.method private createAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xaf

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const-string v0, "backRoundRectScale"

    new-array v1, v5, [F

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleStart:F

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "backRoundRectAlpha"

    new-array v1, v5, [I

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    const-string v0, "backRoundRectScale"

    new-array v1, v5, [F

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v0, "backRoundRectAlpha"

    new-array v1, v5, [I

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaEnd:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScale(F)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectWidth:F

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget v3, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectWidth:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getBackRoundRectAlpha()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectAlpha:I

    return v0
.end method

.method public getBackRoundRectScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectScale:F

    return v0
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->invalidate()V

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public setBackRoundRectAlpha(I)V
    .locals 1
    .param p1, "backRoundRectAlpha"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectAlpha:I

    return-void
.end method

.method public setBackRoundRectColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBackRoundRectScale(F)V
    .locals 2
    .param p1, "backRoundRectScale"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectWidth:F

    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectScale:F

    return-void
.end method

.method public setBackRoundRectScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    return-void
.end method

.method public setBackRoundRectScaleMultiple(F)V
    .locals 2
    .param p1, "multiple"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    return-void
.end method

.method public startAnimation(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->createAnimation()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->cancelAnimation()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate$1;-><init>(Lcom/letv/leui/widget/LeGlowDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
