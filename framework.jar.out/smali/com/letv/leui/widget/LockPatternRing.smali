.class public Lcom/letv/leui/widget/LockPatternRing;
.super Ljava/lang/Object;
.source "LockPatternRing.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LockPatternRing$EmptyAnimatorListener;
    }
.end annotation


# static fields
.field private static COLOR_INNER_COLOR:I = 0x0

.field private static COLOR_NORMAL:I = 0x0

.field private static COLOR_RING_COLOR:I = 0x0

.field private static COLOR_WRONG:I = 0x0

.field private static final INNER_COLOR:Ljava/lang/String; = "innerColor"

.field private static final INNER_RADIUS_CIRCLE_ALPHA:Ljava/lang/String; = "innerRadiusCircleAlpha"

.field private static final INNER_RADIUS_CIRCLE_SCALE:Ljava/lang/String; = "innerRadiusCircleScale"

.field private static final OUTER_RADIUS_CIRCLE_ALPHA:Ljava/lang/String; = "outerRadiusCircleAlpha"

.field private static final OUTER_RADIUS_CIRCLE_SCALE:Ljava/lang/String; = "outerRadiusCircleScale"

.field private static final RING_COLOR:Ljava/lang/String; = "ringColor"


# instance fields
.field private innerColor:I

.field private final innerRadius:I

.field private innerRadiusCircleAlpha:F

.field private innerRadiusCircleScale:F

.field private final innerStrokeWidth:I

.field private mRingAnim:Landroid/animation/AnimatorSet;

.field private mRingErrorAnim:Landroid/animation/AnimatorSet;

.field private final mView:Landroid/view/View;

.field private outerColor:I

.field private final outerRadius:I

.field private outerRadiusCircleAlpha:F

.field private outerRadiusCircleScale:F

.field private ringColor:I

.field private strokeRedAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x7f010000

    const v0, -0x7f000001

    sput v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_NORMAL:I

    sput v1, Lcom/letv/leui/widget/LockPatternRing;->COLOR_WRONG:I

    const/4 v0, -0x1

    sput v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_INNER_COLOR:I

    sput v1, Lcom/letv/leui/widget/LockPatternRing;->COLOR_RING_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleScale:F

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleAlpha:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternRing;->strokeRedAlpha:F

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleScale:F

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleAlpha:F

    iput v2, p0, Lcom/letv/leui/widget/LockPatternRing;->innerColor:I

    sget v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_NORMAL:I

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->ringColor:I

    iput v2, p0, Lcom/letv/leui/widget/LockPatternRing;->outerColor:I

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/letv/leui/widget/LockPatternRing;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadius:I

    invoke-static {p1, v1}, Lcom/letv/leui/widget/LockPatternRing;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerStrokeWidth:I

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p1, v0}, Lcom/letv/leui/widget/LockPatternRing;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadius:I

    iput-object p2, p0, Lcom/letv/leui/widget/LockPatternRing;->mView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "innerCircleColor"    # I
    .param p4, "ringColor"    # I
    .param p5, "outerCircleColor"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LockPatternRing;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput p3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerColor:I

    iput p4, p0, Lcom/letv/leui/widget/LockPatternRing;->ringColor:I

    iput p5, p0, Lcom/letv/leui/widget/LockPatternRing;->outerColor:I

    sput p4, Lcom/letv/leui/widget/LockPatternRing;->COLOR_RING_COLOR:I

    sput p3, Lcom/letv/leui/widget/LockPatternRing;->COLOR_INNER_COLOR:I

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LockPatternRing;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternRing;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getOuterUpPaintAlphaAnim()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private cancelAnim()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingErrorAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingErrorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingErrorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getInnerDownPaintAlphaAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "innerRadiusCircleAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private getInnerErrorColorAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "innerColor"

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/letv/leui/widget/LockPatternRing;->COLOR_NORMAL:I

    aput v4, v3, v5

    sget v4, Lcom/letv/leui/widget/LockPatternRing;->COLOR_WRONG:I

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvColor":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xaf

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v0
.end method

.method private getInterDownSizeAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "innerRadiusCircleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "sizeAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getOuterDownPaintAlphaAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "outerRadiusCircleAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

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
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private getOuterDownSizeAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "outerRadiusCircleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

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

.method private getOuterUpPaintAlphaAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "outerRadiusCircleAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

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
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-object v0
.end method

.method private getRingErrorColorAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "ringColor"

    const/4 v3, 0x2

    new-array v3, v3, [I

    sget v4, Lcom/letv/leui/widget/LockPatternRing;->COLOR_NORMAL:I

    aput v4, v3, v5

    sget v4, Lcom/letv/leui/widget/LockPatternRing;->COLOR_WRONG:I

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvColor":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xaf

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "colorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object v0
.end method


# virtual methods
.method public doError()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->cancelAnim()V

    sget v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_WRONG:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternRing;->setInnerColor(I)V

    sget v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_WRONG:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternRing;->setRingColor(I)V

    return-void
.end method

.method public downAnim()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->cancelAnim()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getOuterDownSizeAnim()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "outerDownSizeAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getInterDownSizeAnim()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "interDownSizeAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getOuterDownPaintAlphaAnim()Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "paintOuterAlphaAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getInnerDownPaintAlphaAnim()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "paintInnerAlphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-instance v5, Lcom/letv/leui/widget/LockPatternRing$1;

    invoke-direct {v5, p0}, Lcom/letv/leui/widget/LockPatternRing$1;-><init>(Lcom/letv/leui/widget/LockPatternRing;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mRingAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public drawRing(Landroid/graphics/Canvas;FF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .local v0, "p1":Landroid/graphics/Paint;
    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleAlpha:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleScale:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, p2, p3, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .local v1, "p2":Landroid/graphics/Paint;
    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->ringColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadius:I

    iget v4, p0, Lcom/letv/leui/widget/LockPatternRing;->innerStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, p2, p3, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .local v2, "p3":Landroid/graphics/Paint;
    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->outerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleAlpha:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleScale:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, p2, p3, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getInnerColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerColor:I

    return v0
.end method

.method public getInnerRadiusCircleAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleAlpha:F

    return v0
.end method

.method public getInnerRadiusCircleScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleScale:F

    return v0
.end method

.method public getOuterRadiusCircleAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleAlpha:F

    return v0
.end method

.method public getOuterRadiusCircleScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleScale:F

    return v0
.end method

.method public getRingColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->ringColor:I

    return v0
.end method

.method public getStrokeRedAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternRing;->strokeRedAlpha:F

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resetRing()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternRing;->cancelAnim()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternRing;->setInnerRadiusCircleScale(F)V

    sget v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_INNER_COLOR:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternRing;->setInnerColor(I)V

    sget v0, Lcom/letv/leui/widget/LockPatternRing;->COLOR_RING_COLOR:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternRing;->setRingColor(I)V

    return-void
.end method

.method public setInnerColor(I)V
    .locals 0
    .param p1, "innerColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->innerColor:I

    return-void
.end method

.method public setInnerRadiusCircleAlpha(F)V
    .locals 0
    .param p1, "innerRadiusCircleAlpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleAlpha:F

    return-void
.end method

.method public setInnerRadiusCircleScale(F)V
    .locals 0
    .param p1, "innerRadiusCircleScale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->innerRadiusCircleScale:F

    return-void
.end method

.method public setOuterRadiusCircleAlpha(F)V
    .locals 0
    .param p1, "outerRadiusCircleAlpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleAlpha:F

    return-void
.end method

.method public setOuterRadiusCircleScale(F)V
    .locals 0
    .param p1, "outerRadiusCircleScale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->outerRadiusCircleScale:F

    return-void
.end method

.method public setRingColor(I)V
    .locals 0
    .param p1, "ringColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->ringColor:I

    return-void
.end method

.method public setStrokeRedAlpha(F)V
    .locals 0
    .param p1, "strokeRedAlpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternRing;->strokeRedAlpha:F

    return-void
.end method
