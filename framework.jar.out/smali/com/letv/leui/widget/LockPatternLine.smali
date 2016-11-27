.class public Lcom/letv/leui/widget/LockPatternLine;
.super Ljava/lang/Object;
.source "LockPatternLine.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    }
.end annotation


# static fields
.field private static final COLOR_NORMAL:I = -0x7f000001

.field private static final COLOR_WRONG:I = -0x7f010000

.field private static final LINE_ALPHA:Ljava/lang/String; = "lineAlpha"

.field private static final LINE_COLOR:Ljava/lang/String; = "lineColor"

.field private static final LINE_DISAPPEAR:Ljava/lang/String; = "lineDisappear"

.field private static final strokeWidth:I = 0x5


# instance fields
.field private factorX:F

.field private factorY:F

.field private lineAlpha:F

.field private lineColor:I

.field private lineDisappear:F

.field private mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

.field private mLineErrorAnimator:Landroid/animation/AnimatorSet;

.field private mMovePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveTimes:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaint2:Landroid/graphics/Paint;

.field private final mPath2:Landroid/graphics/Path;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x7f000001

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint2()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lineColor"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x7f000001

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    iput p2, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getPaint2()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LockPatternLine;)Lcom/letv/leui/widget/LockMovePoint;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternLine;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    return-object v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockMovePoint;)Lcom/letv/leui/widget/LockMovePoint;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternLine;
    .param p1, "x1"    # Lcom/letv/leui/widget/LockMovePoint;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    return-object p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LockPatternLine;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternLine;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    return v0
.end method

.method static synthetic access$108(Lcom/letv/leui/widget/LockPatternLine;)I
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternLine;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LockPatternLine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternLine;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    return-object v0
.end method

.method private cancelLineAnim()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method private getLineColorAnim()Landroid/animation/ObjectAnimator;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v2, "lineColor"

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget v4, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    aput v4, v3, v5

    const/high16 v4, -0x7f010000

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

.method private getLineDisappearAnim(Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    const/4 v6, 0x1

    const-string v2, "lineDisappear"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvColor":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v1, v2, v3

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

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
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

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method private getPaint2()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, -0x7f010000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public doError()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->getLineColorAnim()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "lineColorAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public doLineErrorDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    iget v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LockPatternLine;->setError(Ljava/util/List;I)V

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getCurX()F

    move-result v0

    .local v0, "curX":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getCurY()F

    move-result v1

    .local v1, "curY":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getMoveX()F

    move-result v2

    .local v2, "moveX":F
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mCurPoint:Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LockMovePoint;->getMoveY()F

    move-result v3

    .local v3, "moveY":F
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    cmpl-float v4, v0, v2

    if-nez v4, :cond_0

    move v5, v2

    :goto_0
    cmpl-float v4, v1, v3

    if-nez v4, :cond_1

    move v4, v3

    :goto_1
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v0    # "curX":F
    .end local v1    # "curY":F
    .end local v2    # "moveX":F
    .end local v3    # "moveY":F
    :goto_2
    return-void

    .restart local v0    # "curX":F
    .restart local v1    # "curY":F
    .restart local v2    # "moveX":F
    .restart local v3    # "moveY":F
    :cond_0
    sub-float v4, v2, v0

    iget v5, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    move v5, v4

    goto :goto_0

    :cond_1
    sub-float v4, v3, v1

    iget v7, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v1

    goto :goto_1

    .end local v0    # "curX":F
    .end local v1    # "curY":F
    .end local v2    # "moveX":F
    .end local v3    # "moveY":F
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public doNewError(Ljava/util/ArrayList;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V
    .locals 3
    .param p2, "listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;",
            "Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mLockMovePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/LockMovePoint;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LockPatternLine;->getMoveAnim(Ljava/util/List;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "moveAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public endAnime()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mLineErrorAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public getFactorX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    return v0
.end method

.method public getFactorY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    return v0
.end method

.method public getLineAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    return v0
.end method

.method public getLineColor()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getLineDisappear()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    return v0
.end method

.method public getMoveAnim(Ljava/util/List;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)Landroid/animation/ObjectAnimator;
    .locals 8
    .param p2, "listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;",
            "Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LockMovePoint;>;"
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternLine;->mMovePoints:Ljava/util/List;

    iput v7, p0, Lcom/letv/leui/widget/LockPatternLine;->mMoveTimes:I

    const-string v3, "factorY"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "pvMoveY":Landroid/animation/PropertyValuesHolder;
    const-string v3, "factorX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "pvMoveX":Landroid/animation/PropertyValuesHolder;
    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v7

    aput-object v1, v3, v6

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "moveAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    new-instance v3, Lcom/letv/leui/widget/LockPatternLine$1;

    invoke-direct {v3, p0, p2}, Lcom/letv/leui/widget/LockPatternLine$1;-><init>(Lcom/letv/leui/widget/LockPatternLine;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resetLine()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternLine;->cancelLineAnim()V

    iget v0, p0, Lcom/letv/leui/widget/LockPatternLine;->lineColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternLine;->setLineColor(I)V

    return-void
.end method

.method public setError(Ljava/util/List;I)V
    .locals 6
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LockMovePoint;>;"
    move v0, p2

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LockMovePoint;

    .local v2, "p":Lcom/letv/leui/widget/LockMovePoint;
    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getCurX()F

    move-result v4

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getCurY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternLine;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getMoveX()F

    move-result v4

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockMovePoint;->getMoveY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "p":Lcom/letv/leui/widget/LockMovePoint;
    :cond_0
    return-void
.end method

.method public setFactorX(F)V
    .locals 0
    .param p1, "factorX"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorX:F

    return-void
.end method

.method public setFactorY(F)V
    .locals 0
    .param p1, "factorY"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->factorY:F

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 0
    .param p1, "lineAlpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineAlpha:F

    return-void
.end method

.method public setLineColor(I)V
    .locals 1
    .param p1, "lineColor"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setLineDisappear(F)V
    .locals 0
    .param p1, "lineDisappear"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LockPatternLine;->lineDisappear:F

    return-void
.end method
