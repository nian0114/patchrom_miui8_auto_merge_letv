.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;
.super Landroid/view/View;
.source "SimpleLeLoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final BALL_NUM:I = 0x6

.field private static final DISAPPEAR_DURATION:I = 0x12c

.field private static final DURATION:I = 0x3e8

.field private static EVERY_DURATION:I = 0x0

.field private static PERCENT_OFFSET:I = 0x0

.field private static final ROTATE_DURATION:I = 0x384


# instance fields
.field private mAppearAnimators:[Landroid/animation/ObjectAnimator;

.field private mBallRadius:F

.field private mBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearAnim:Landroid/animation/AnimatorSet;

.field private mLastPercent:J

.field private mRotateAnim:Landroid/animation/ObjectAnimator;

.field private mViewRadius:F

.field private mViewSize:F

.field private rot:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x14c

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    div-int/lit8 v0, v0, 0x6

    rsub-int v0, v0, 0xa6

    sput v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x6

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .local v0, "attrsArray":[I
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .local v3, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "layout_width":I
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .local v1, "layout_height":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->init(II)V

    return-void

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private addBall(FFI)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .prologue
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {v3, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .local v3, "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setX(F)V

    invoke-virtual {v3, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setY(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    return-object v3
.end method

.method private cancelRotateAnim()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getDirection(J)Z
    .locals 5
    .param p1, "curPer"    # J

    .prologue
    iget-wide v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mLastPercent:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .local v0, "isDown":Z
    :goto_0
    iput-wide p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mLastPercent:J

    return v0

    .end local v0    # "isDown":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNormal2Zero(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    .param p2, "orderId"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "width"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v8

    aput v11, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v8

    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    div-float/2addr v7, v12

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v10, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v7

    aput v7, v6, v8

    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    div-float/2addr v7, v12

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v5, v8

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    const/4 v6, 0x3

    aput-object v1, v5, v6

    invoke-static {p1, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v4
.end method

.method private getZero2Normal(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "ball"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
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

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getWidth()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v5, "height"

    new-array v6, v11, [F

    aput v8, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getHeight()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v5, "x"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "y"

    new-array v6, v11, [F

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v8, v12

    add-float/2addr v7, v8

    aput v7, v6, v9

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

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

    move-result-object v4

    .local v4, "z2nAnim":Landroid/animation/ObjectAnimator;
    sget v5, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v5}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method private init(II)V
    .locals 2
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getDefaultColorList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->prepare(II)V

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preAnim()V

    return-void
.end method

.method private initBall()V
    .locals 14

    .prologue
    const/high16 v0, 0x42700000    # 60.0f

    .local v0, "angleUnit":F
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewRadius:F

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    sub-float v1, v4, v5

    .local v1, "drawRadius":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "pointF":Landroid/graphics/PointF;
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

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

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

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

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v6, v7, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->addBall(FFI)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "pointF":Landroid/graphics/PointF;
    :cond_0
    return-void
.end method

.method private makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V
    .locals 4
    .param p1, "appearAnimator"    # Landroid/animation/ObjectAnimator;
    .param p2, "time"    # I

    .prologue
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    .local v0, "currentPlayTime":J
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method

.method private preAnim()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preAppearAnim()V

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preRotateAnim2()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->preDisappearAnim()V

    return-void
.end method

.method private preAppearAnim()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {p0, v2, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getZero2Normal(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private preDisappearAnim()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/animation/ObjectAnimator;

    .local v2, "mAnimators":[Landroid/animation/ObjectAnimator;
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-direct {p0, v3, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getNormal2Zero(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    aget-object v3, v2, v0

    new-instance v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "mAnimators":[Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private preRotateAnim()Landroid/animation/ObjectAnimator;
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

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private preRotateAnim2()Landroid/animation/ObjectAnimator;
    .locals 6

    .prologue
    const-string v2, "rot"

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

.method private prepare(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    if-lt p2, p1, :cond_0

    move v0, p2

    .local v0, "size":I
    :goto_0
    int-to-float v1, v0

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewSize:F

    div-int/lit8 v1, v0, 0x8

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mViewRadius:F

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->initBall()V

    return-void

    .end local v0    # "size":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private restInit()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->initBall()V

    return-void
.end method


# virtual methods
.method public autoPull2RefreshAnim()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .local v0, "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    goto :goto_0

    .end local v0    # "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method public cancelAutoPull2RefreshAnim()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setAllBallsAlpha(F)V

    return-void
.end method

.method public completeAnim()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mDisappearAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
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

    const-string v1, "#8c50e7"

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

    const-string v1, "#80cb17"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#ffd200"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#ff8400"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRot()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v0, v2, 0x1

    .local v0, "x":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .local v1, "y":I
    add-int/lit16 v2, v0, 0x2a0

    add-int/lit16 v3, v1, 0x2a0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate(IIII)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

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

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .local v0, "ball":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getAlpha()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBallRadius:F

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .end local v0    # "ball":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_2
    return-void
.end method

.method public resetOriginals()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setAllBallsAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .local v0, "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    goto :goto_0

    .end local v0    # "holder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    return-void
.end method

.method public setEachColor4Balls(IIIIII)V
    .locals 4
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I
    .param p5, "color5"    # I
    .param p6, "color6"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    .local v1, "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mColorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "shapeHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;
    :cond_0
    return-void
.end method

.method public setPercent(J)V
    .locals 9
    .param p1, "percent"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->PERCENT_OFFSET:I

    int-to-long v2, v1

    sub-long/2addr p1, v2

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getDirection(J)Z

    move-result v0

    .local v0, "isDown":Z
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto :goto_0

    :cond_3
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_5

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_1

    :cond_5
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x3

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_7

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_2

    :cond_7
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x4

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_9

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :goto_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_3

    :cond_9
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x5

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gtz v1, :cond_b

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :goto_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    goto :goto_4

    :cond_b
    sget v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v1, v1, 0x6

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-gez v1, :cond_d

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelRotateAnim()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mBalls:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;

    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/BallsLoadingShapeHolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v4

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v6

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v7

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    aget-object v1, v1, v8

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mAppearAnimators:[Landroid/animation/ObjectAnimator;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->EVERY_DURATION:I

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->makeCurPlayTime(Landroid/animation/ObjectAnimator;I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->invalidate()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->resume()V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->mRotateAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method public setRot(F)V
    .locals 0
    .param p1, "rot"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->rot:F

    return-void
.end method
