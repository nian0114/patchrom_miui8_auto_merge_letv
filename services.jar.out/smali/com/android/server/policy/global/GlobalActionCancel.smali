.class public Lcom/android/server/policy/global/GlobalActionCancel;
.super Landroid/view/View;
.source "GlobalActionCancel.java"


# static fields
.field public static final HIDE_TIME:J = 0xfaL

.field public static final SHOW_TIME:J = 0x15eL

.field public static final SHUTDOWN_TIME:J = 0x190L


# instance fields
.field public density:F

.field private mArcBeginAngle:F

.field private mArcColor:I

.field private mArcWidth:I

.field mCancel:Z

.field private mCrossWidth:I

.field private mInnerRingDiameter:I

.field private mLineColorNormal:I

.field private mLineColorPress:I

.field private mLineHeight:I

.field private mLineOffset:I

.field private mLineOffsetInit:I

.field private mLineOffsetScale:I

.field private mLineOffsetScaleInit:I

.field private mLineWidth:I

.field private mRingWidthInc:I

.field private mRingWidthIncMax:I

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleArcPaint:Landroid/graphics/Paint;

.field private mScaleListener:Landroid/animation/Animator$AnimatorListener;

.field private mScaleRingAlpha:I

.field private mScaleRingColor:I

.field private mScaleRingWH:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaddingBottom:I

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipTextSize:F

.field private paint:Landroid/graphics/Paint;

.field private startAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x6

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipTextSize:F

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineColorNormal:I

    const v0, -0xcc00cd

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineColorPress:I

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineWidth:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineHeight:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetInit:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffset:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScale:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScaleInit:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcColor:I

    const v0, -0x66666667

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingAlpha:I

    const/high16 v0, -0x3d900000    # -60.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcBeginAngle:F

    const/16 v0, 0x7e

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mInnerRingDiameter:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthIncMax:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    const/16 v0, 0x30

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaddingBottom:I

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCancel:Z

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionCancel;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionCancel;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionCancel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionCancel;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->resetScale()V

    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    int-to-float v0, v0

    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    int-to-float v2, v2

    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    int-to-float v3, v3

    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v3, 0x42b40000    # 90.0f

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCross(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .local v7, "centerY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .local v8, "seq":I
    const/high16 v0, 0x42340000    # 45.0f

    int-to-float v1, v6

    int-to-float v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v6, v0

    int-to-float v1, v0

    int-to-float v2, v7

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawScaleArc(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .local v7, "centerY":I
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mInnerRingDiameter:I

    div-int/lit8 v8, v0, 0x2

    .local v8, "innerCircle":I
    new-instance v1, Landroid/graphics/RectF;

    add-int/lit8 v0, v8, 0x1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    add-int/lit8 v2, v8, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v2, v7, v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-int/lit8 v3, v8, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int/lit8 v4, v8, 0x1

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v1, "rect2":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v3, 0x42b40000    # 90.0f

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "seq":I
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .local v1, "textWidth":F
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaddingBottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->density:F

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->initLine()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->initArc()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->initTip()V

    return-void
.end method

.method private initArc()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcColor:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcBeginAngle:F

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mInnerRingDiameter:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCrossWidth:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->initScaleArc()V

    return-void
.end method

.method private initLine()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineColorNormal:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineColorPress:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineWidth:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineHeight:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetInit:I

    return-void
.end method

.method private initScale()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v3, Lcom/android/server/policy/global/GlobalActionCancel$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/global/GlobalActionCancel$1;-><init>(Lcom/android/server/policy/global/GlobalActionCancel;)V

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    const-string v3, "innerRingWidthInc"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthIncMax:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "ringScale":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleRingAlpha"

    new-array v4, v8, [I

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingAlpha:I

    aput v5, v4, v6

    aput v6, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "ringAlpha":Landroid/animation/PropertyValuesHolder;
    const-string v3, "lineOffsetScale"

    new-array v4, v8, [I

    aput v6, v4, v6

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScaleInit:I

    aput v5, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "lineScale":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x834

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initScaleArc()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingAlpha:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthIncMax:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScaleInit:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->initScale()V

    return-void
.end method

.method private initTip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104062c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipTextSize:F

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaddingBottom:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineColorNormal:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private resetScale()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScale:I

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method private setInnerRingWidthInc(I)V
    .locals 0
    .param p1, "ringWidthInc"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mRingWidthInc:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method private setLineOffsetScale(I)V
    .locals 0
    .param p1, "lineOffsetScale"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffsetScale:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method private setScaleRingAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method


# virtual methods
.method public destroyMarquee()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->stopMarquee()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    :cond_0
    return-void
.end method

.method public final getBottomBarWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "tipWidth":I
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionCancel;->density:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public final getMargin(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "marginBase"    # I

    .prologue
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v0, p2, v1

    .local v0, "margin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, "location":[I
    invoke-virtual {p0, v3}, Lcom/android/server/policy/global/GlobalActionCancel;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v4, v3, v9

    aget v5, v3, v8

    aget v6, v3, v9

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    if-le v4, v5, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .local v0, "bottomOffsetY":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .end local v0    # "bottomOffsetY":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    if-le v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleRingWH:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .local v1, "dx":I
    invoke-virtual {v2, v1, v9}, Landroid/graphics/Rect;->inset(II)V

    .end local v1    # "dx":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->drawScaleArc(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->drawArc(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->drawCross(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->drawTip(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "result":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "result":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public reBoot()V
    .locals 0

    .prologue
    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/global/GlobalActionCancel;->setAlpha(F)V

    goto :goto_0
.end method

.method public setAngleArc(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mArcBeginAngle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->startAngle:F

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method public setCustomerText(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipMsg:Ljava/lang/String;

    return-void
.end method

.method public setLineHeightOffset(I)V
    .locals 0
    .param p1, "lineOffset"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mLineOffset:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method public setTipAlapha(I)V
    .locals 3
    .param p1, "alapha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->invalidate()V

    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionCancel;->setTranslationY(F)V

    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionCancel;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionCancel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public shutDown()V
    .locals 0

    .prologue
    return-void
.end method

.method public startMarquee()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCancel:Z

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x41a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCancel:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionCancel;->mCancel:Z

    goto :goto_0
.end method
