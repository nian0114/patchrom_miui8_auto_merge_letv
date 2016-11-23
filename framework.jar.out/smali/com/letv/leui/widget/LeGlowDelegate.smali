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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->TAG:Ljava/lang/String;

    .line 19
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    .line 33
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleStart:F

    .line 43
    const v0, 0x3fe66666    # 1.8f

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    .line 44
    iput v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    .line 51
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    .line 52
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    .line 53
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    .line 54
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaEnd:I

    .line 58
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    .line 59
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    .line 68
    iput-object p2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "delegateView"    # Landroid/view/View;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    .line 65
    return-void
.end method

.method private createAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xaf

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "backRoundRectScale"

    new-array v1, v5, [F

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleStart:F

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    .line 145
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 146
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 148
    const-string v0, "backRoundRectAlpha"

    new-array v1, v5, [I

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaStart:I

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    .line 149
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    .line 152
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScale:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlpha:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    .line 158
    const-string v0, "backRoundRectScale"

    new-array v1, v5, [F

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    .line 159
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    const-string v0, "backRoundRectAlpha"

    new-array v1, v5, [I

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    aput v2, v1, v3

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaEnd:I

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScale:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlpha:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 167
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 179
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectAlpha(I)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScale(F)V

    .line 182
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->invalidate()V

    .line 183
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 203
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    .line 206
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    .line 207
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    .line 209
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

    .line 210
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 212
    :cond_2
    return-void
.end method

.method public getBackRoundRectAlpha()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectAlpha:I

    return v0
.end method

.method public getBackRoundRectScale()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectScale:F

    return v0
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 84
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 85
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050255

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 86
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    .line 89
    .end local v0    # "out":Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 221
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->invalidate()V

    .line 217
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    .line 94
    if-nez p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->cancelAnimation()V

    .line 97
    :cond_0
    return-void
.end method

.method public setBackRoundRectAlpha(I)V
    .locals 1
    .param p1, "backRoundRectAlpha"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 228
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectAlpha:I

    .line 229
    return-void
.end method

.method public setBackRoundRectColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    .line 101
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    return-void
.end method

.method public setBackRoundRectScale(F)V
    .locals 2
    .param p1, "backRoundRectScale"    # F

    .prologue
    .line 235
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    .line 238
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->DEFAULT_BACK_ROUND_RECT_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectWidth:F

    .line 239
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectScale:F

    .line 240
    return-void
.end method

.method public setBackRoundRectScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    .line 106
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseAlphaStart:I

    .line 107
    return-void
.end method

.method public setBackRoundRectScaleMultiple(F)V
    .locals 2
    .param p1, "multiple"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    .line 111
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleStart:F

    .line 112
    iget v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/high16 v1, 0x41600000    # 14.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectReleaseScaleEnd:F

    .line 113
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 263
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    .line 267
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 256
    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 249
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    if-eqz p1, :cond_1

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    .line 189
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeGlowDelegate;->startAnimation(I)V

    goto :goto_0
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->mView:Landroid/view/View;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->centerX:I

    .line 200
    return-void
.end method

.method public startAnimation(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->createAnimation()V

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeGlowDelegate;->cancelAnimation()V

    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->pressAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate$1;-><init>(Lcom/letv/leui/widget/LeGlowDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isUp:Z

    .line 134
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeGlowDelegate;->isPressAnimEnd:Z

    .line 135
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowDelegate;->releaseAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
