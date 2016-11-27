.class public Lcom/letv/leui/widget/LeLoadingView;
.super Landroid/view/View;
.source "LeLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;,
        Lcom/letv/leui/widget/LeLoadingView$EmptyAnimatorListener;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final DURATION2:I = 0x64

.field private static final ROTATE_DURATION:I = 0x384


# instance fields
.field private animListener:Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

.field private appearAnim:Landroid/animation/AnimatorSet;

.field private ballNum:I

.field private colorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private disappearAnim:Landroid/animation/AnimatorSet;

.field private isAnimRunning:Z

.field private isAppearAnimRunning:Z

.field private isCancelAnim:Z

.field private isDisAppearAnimRunning:Z

.field private mBallRadius:F

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

.field private mDelayAppearAnim:Z

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsOnDraw:Z

.field private mRotateAnim:Landroid/animation/ObjectAnimator;

.field private mViewRadius:F

.field private mViewSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x6

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x6

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v5, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .local v0, "attrsArray":[I
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "layout_width":I
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .local v1, "layout_height":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitWidth:I

    iput v1, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeLoadingView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/LeLoadingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLoadingView;->isAppearAnimRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeLoadingView;)Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->animListener:Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LeLoadingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLoadingView;->isCancelAnim:Z

    return v0
.end method

.method static synthetic access$302(Lcom/letv/leui/widget/LeLoadingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLoadingView;->isCancelAnim:Z

    return p1
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/LeLoadingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLoadingView;->isDisAppearAnimRunning:Z

    return p1
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/LeLoadingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLoadingView;->isAnimRunning:Z

    return p1
.end method

.method private addBall(FF)Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

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
    const/high16 v4, -0x10000

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    return-object v3
.end method

.method private addBall(FFI)Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .prologue
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

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
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    return-object v3
.end method

.method private getNormal2Zero(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
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

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v9

    aput v8, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v9

    aput v8, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

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

    const-wide/16 v6, 0x32

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    mul-int/lit8 v5, p2, 0x4b

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4
.end method

.method private getRotateAnim()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "rotation":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "rotateAnim":Landroid/animation/ObjectAnimator;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
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

    iget v8, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

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

    iget v8, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

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

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    mul-int/lit8 v5, p2, 0x4b

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4
.end method

.method private initBall()V
    .locals 14

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    iget v5, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .local v0, "angleUnit":F
    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mViewRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    sub-float v1, v4, v5

    .local v1, "drawRadius":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    if-ge v2, v4, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "pointF":Landroid/graphics/PointF;
    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mViewSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, v1

    int-to-float v8, v2

    mul-float/2addr v8, v0

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/LeLoadingView;->mViewSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v6, v5

    float-to-double v8, v1

    int-to-float v5, v2

    mul-float/2addr v5, v0

    float-to-double v10, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v6, v7, v4}, Lcom/letv/leui/widget/LeLoadingView;->addBall(FFI)Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "pointF":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method


# virtual methods
.method public appearAnim()Z
    .locals 3

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitWidth:I

    if-lez v2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitWidth:I

    .local v1, "width":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitHeight:I

    if-lez v2, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitHeight:I

    .local v0, "height":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeLoadingView;->appearAnim(IILjava/lang/Runnable;)Z

    move-result v2

    return v2

    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->getWidth()I

    move-result v1

    goto :goto_0

    .restart local v1    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method public appearAnim(II)Z
    .locals 1
    .param p1, "height"    # I
    .param p2, "width"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeLoadingView;->appearAnim(IILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public appearAnim(IILjava/lang/Runnable;)Z
    .locals 9
    .param p1, "height"    # I
    .param p2, "width"    # I
    .param p3, "disappearedCallBack"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x1

    iget-boolean v6, p0, Lcom/letv/leui/widget/LeLoadingView;->isAnimRunning:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/letv/leui/widget/LeLoadingView;->isDisAppearAnimRunning:Z

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_1
    iput-boolean v7, p0, Lcom/letv/leui/widget/LeLoadingView;->isAnimRunning:Z

    move v0, p1

    .local v0, "h":I
    move v5, p2

    .local v5, "w":I
    if-lt v0, v5, :cond_3

    move v4, v0

    .local v4, "size":I
    :goto_1
    int-to-float v6, v4

    iput v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mViewSize:F

    div-int/lit8 v6, v4, 0x8

    int-to-float v6, v6

    iput v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    iput v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mViewRadius:F

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->getDefaultColorList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->appearAnim:Landroid/animation/AnimatorSet;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeLoadingView;->initBall()V

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Landroid/animation/ObjectAnimator;

    .local v3, "mAnimators":[Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "j":I
    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v6, v1}, Lcom/letv/leui/widget/LeLoadingView;->getZero2Normal(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v3, v1

    aget-object v6, v3, v1

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    aget-object v6, v3, v1

    new-instance v8, Lcom/letv/leui/widget/LeLoadingView$1;

    invoke-direct {v8, p0}, Lcom/letv/leui/widget/LeLoadingView$1;-><init>(Lcom/letv/leui/widget/LeLoadingView;)V

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mAnimators":[Landroid/animation/ObjectAnimator;
    .end local v4    # "size":I
    :cond_3
    move v4, v5

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "mAnimators":[Landroid/animation/ObjectAnimator;
    .restart local v4    # "size":I
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeLoadingView;->getRotateAnim()Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->appearAnim:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->appearAnim:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/letv/leui/widget/LeLoadingView$2;

    invoke-direct {v8, p0, p3}, Lcom/letv/leui/widget/LeLoadingView$2;-><init>(Lcom/letv/leui/widget/LeLoadingView;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->appearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "mAnimators":[Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v6, p0, Lcom/letv/leui/widget/LeLoadingView;->appearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    move v6, v7

    goto/16 :goto_0
.end method

.method public appearAnim(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "disappearedCallBack"    # Ljava/lang/Runnable;

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitWidth:I

    if-lez v2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitWidth:I

    .local v1, "width":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitHeight:I

    if-lez v2, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mInitHeight:I

    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/letv/leui/widget/LeLoadingView;->appearAnim(IILjava/lang/Runnable;)Z

    move-result v2

    return v2

    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->getWidth()I

    move-result v1

    goto :goto_0

    .restart local v1    # "width":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method public disappearAnim(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "disappearedCallBack"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeLoadingView;->isCancelAnim:Z

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeLoadingView;->isAnimRunning:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeLoadingView;->isAppearAnimRunning:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/animation/ObjectAnimator;

    .local v2, "mAnimators":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    invoke-direct {p0, v3, v0}, Lcom/letv/leui/widget/LeLoadingView;->getNormal2Zero(Lcom/letv/leui/widget/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    aget-object v3, v2, v0

    new-instance v4, Lcom/letv/leui/widget/LeLoadingView$3;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/LeLoadingView$3;-><init>(Lcom/letv/leui/widget/LeLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/letv/leui/widget/LeLoadingView$4;

    invoke-direct {v4, p0, p1}, Lcom/letv/leui/widget/LeLoadingView$4;-><init>(Lcom/letv/leui/widget/LeLoadingView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "mAnimators":[Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public getAnimListener()Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->animListener:Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    return-object v0
.end method

.method public getBallNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    return v0
.end method

.method public getColorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultColorList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v1, "#ed1e20"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#6c24c6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#1ab1eb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#8ad127"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#ffd800"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#ff8a00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelAnim()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLoadingView;->isCancelAnim:Z

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .local v0, "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/LeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .end local v0    # "ball":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    :cond_0
    return-void
.end method

.method public setAnimListener(Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;)V
    .locals 0
    .param p1, "animListener"    # Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingView;->animListener:Lcom/letv/leui/widget/LeLoadingView$LeLoadingAnimListener;

    return-void
.end method

.method public setBallNum(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "ballNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorList size < balls count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    iput p1, p0, Lcom/letv/leui/widget/LeLoadingView;->ballNum:I

    return-void
.end method

.method public setCancelAnim(Z)V
    .locals 0
    .param p1, "isCancelAnim"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLoadingView;->isCancelAnim:Z

    return-void
.end method

.method public setColorList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingView;->colorList:Ljava/util/ArrayList;

    return-void
.end method
