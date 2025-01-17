.class public Lcom/letv/leui/widget/BallsLoadingProgressBar;
.super Landroid/view/View;
.source "BallsLoadingProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;,
        Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;,
        Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;
    }
.end annotation


# instance fields
.field private bounceAnim:Landroid/animation/Animator;

.field private mAnimators:[Landroid/animation/ObjectAnimator;

.field private mBallColor:I

.field private mBallDistance:F

.field private mBallExpandRadius:F

.field private mBallNormalRadius:F

.field private mBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/BallsLoadingShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDuration:I

.field private mGravity:I

.field private mIsAnimLoading:Z

.field private mIsFinish:Z

.field private mIsFirstRun:Z

.field private mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

.field private mSumWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    const v0, -0xaf509b

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v0, 0x42900000    # 72.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x12c

    const/4 v3, 0x1

    const v2, -0xaf509b

    const/4 v7, 0x5

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    iput v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    iput v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    iput v7, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    const/high16 v1, 0x42100000    # 36.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v1, 0x42900000    # 72.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    iput-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    iput v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    sget-object v1, Lcom/android/internal/R$styleable;->BallsLoadingProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    iget v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    const/4 v1, 0x2

    iget v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initBall()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createAnimStep2()V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    return p1
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createEndAnim()V

    return-void
.end method

.method static synthetic access$702(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    return p1
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/BallsLoadingProgressBar;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    return v0
.end method

.method private addBall(FF)Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {v3, v1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .local v3, "shapeHolder":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setX(F)V

    invoke-virtual {v3, p2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setY(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .local v2, "paint":Landroid/graphics/Paint;
    iget v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    return-object v3
.end method

.method private createAnimStep2()V
    .locals 5

    .prologue
    iget-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/animation/ObjectAnimator;

    iput-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v3, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->setExpandAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "expandAnimation":Landroid/animation/ObjectAnimator;
    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "expandAnimation":Landroid/animation/ObjectAnimator;
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v4, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v3, Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private createBeginAnimation()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/animation/ObjectAnimator;

    .local v3, "shrinkAnims":[Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getZero2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v1

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getDouble2NormalAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_1
    if-ge v1, v2, :cond_1

    move v0, v1

    .local v0, "finalI":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v4, v4, v1

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$1;

    invoke-direct {v5, p0, v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$1;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "finalI":I
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;

    invoke-direct {v5, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$2;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/AnimatorSet;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "shrinkAnims":[Landroid/animation/ObjectAnimator;
    :cond_2
    return-void
.end method

.method private createEndAnim()V
    .locals 6

    .prologue
    iget-boolean v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/animation/ObjectAnimator;

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/animation/ObjectAnimator;

    .local v3, "normal2DoubleAnims":[Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getNormal2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v4, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getDouble2ZeroAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_1
    if-ge v1, v2, :cond_1

    move v0, v1

    .local v0, "finalI":I
    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v4, v4, v1

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;

    invoke-direct {v5, p0, v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "finalI":I
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    new-instance v5, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;

    invoke-direct {v5, p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    array-length v2, v4

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    check-cast v4, Landroid/animation/AnimatorSet;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "normal2DoubleAnims":[Landroid/animation/ObjectAnimator;
    :cond_2
    return-void
.end method

.method private getDouble2NormalAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "width"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v9

    aput-object v3, v5, v10

    aput-object v1, v5, v11

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "d2nAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getDouble2ZeroAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const-string v5, "width"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v10

    aput v8, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v10

    aput v8, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v10

    aput-object v3, v5, v11

    aput-object v1, v5, v12

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "d2zAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getNormal2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "width"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v9

    aput-object v3, v5, v10

    aput-object v1, v5, v11

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "n2dAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private getZero2DoubleAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const-string v5, "width"

    new-array v6, v12, [F

    aput v8, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v12, [F

    aput v8, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v9

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v12, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v10

    aput-object v2, v5, v11

    aput-object v0, v5, v12

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "z2dAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x3

    mul-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4
.end method

.method private getZero2Normal(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "width"

    new-array v6, v11, [F

    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v11, [F

    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v9

    aput-object v2, v5, v10

    aput-object v0, v5, v11

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4
.end method

.method private initBall()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    int-to-float v2, v0

    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->addBall(FF)Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-virtual {v1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    return-void
.end method

.method private initParams()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    move v0, v2

    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    move v0, v2

    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .end local v0    # "result":I
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setExpandAnim(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const-string v5, "width"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .local v4, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    mul-float/2addr v7, v12

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v11

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v8, v12

    sub-float/2addr v7, v8

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v5, v11

    aput-object v3, v5, v9

    aput-object v1, v5, v10

    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "expandAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v5, p2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method


# virtual methods
.method public addAnimProcessBarListener(Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    return-void
.end method

.method public cancleAnimProcessBarListener(Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    return-void
.end method

.method public getBallColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    return v0
.end method

.method public getBallDistance()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    return v0
.end method

.method public getBallNormalRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    return v0
.end method

.method public initAnimProcessBar()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initBall()V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    return v0
.end method

.method public loadFinish()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z

    :cond_0
    return-void
.end method

.method public loadStart()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->initParams()V

    invoke-direct {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->createBeginAnimation()V

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v1, v5, v7

    .local v1, "heighoff":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v4, v5, v7

    .local v4, "wightoff":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float v3, v5, v7

    .local v3, "offset":F
    iget v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    packed-switch v5, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .local v0, "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v5

    neg-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v6

    neg-float v6, v6

    sub-float/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .end local v0    # "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v6, v7

    sub-float v1, v5, v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float v4, v5, v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    div-float/2addr v6, v7

    sub-float v1, v5, v6

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mSumWidth:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    add-float v4, v5, v3

    goto :goto_0

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBallColor(I)V
    .locals 0
    .param p1, "ballColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallColor:I

    return-void
.end method

.method public setBallDistance(F)V
    .locals 0
    .param p1, "ballDistance"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallDistance:F

    return-void
.end method

.method public setBallNormalRadius(F)V
    .locals 1
    .param p1, "ballNormalRadius"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallExpandRadius:F

    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mCount:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mDuration:I

    return-void
.end method

.method public setGravity(Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;)V
    .locals 1
    .param p1, "gravity"    # Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;

    .prologue
    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$BallsLoadingGravity;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar;->mGravity:I

    return-void
.end method
