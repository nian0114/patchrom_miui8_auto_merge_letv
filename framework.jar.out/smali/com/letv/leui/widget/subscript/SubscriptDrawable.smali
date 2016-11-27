.class public Lcom/letv/leui/widget/subscript/SubscriptDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SubscriptDrawable.java"


# static fields
.field public static final BASE_POINT_LEFT_TOP:I = 0x1

.field public static final BASE_POINT_RIGHT_TOP:I = 0x2


# instance fields
.field final TAG:Ljava/lang/String;

.field mBasePoint:I

.field mBgColor:I

.field mContext:Landroid/content/Context;

.field mEmptyRadius:F

.field mHalfMoon:Landroid/graphics/RectF;

.field mHalfMoonRadius:F

.field mPaddingLeft:F

.field mPaint:Landroid/graphics/Paint;

.field mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field public mRadius:F

.field mText:Ljava/lang/String;

.field mTextColor:I

.field right:I

.field textWidthHeight:[F

.field top:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x14

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->TAG:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    iput v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBasePoint:I

    iput v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    iput v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    iput-object p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050243

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050244

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mEmptyRadius:F

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoonRadius:F

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050245

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaddingLeft:F

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBgColor:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoonRadius:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoonRadius:F

    mul-float/2addr v2, v4

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v5, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, "diagonalLength":F
    const/4 v2, 0x2

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBasePoint:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v2, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    aget v3, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaddingLeft:F

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    iget v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    iget v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v1, "viewRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mEmptyRadius:F

    invoke-virtual {p0, p1, v2}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->drawCircle(Landroid/graphics/Canvas;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void

    .end local v1    # "viewRect":Landroid/graphics/Rect;
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    iget v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    iget v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "viewRect":Landroid/graphics/Rect;
    goto :goto_0

    .end local v1    # "viewRect":Landroid/graphics/Rect;
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v2, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    iget v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    iget-object v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    aget v5, v5, v6

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaddingLeft:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "viewRect":Landroid/graphics/Rect;
    goto :goto_0

    .end local v1    # "viewRect":Landroid/graphics/Rect;
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    iget v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    iget v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    iget v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    float-to-int v6, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v1    # "viewRect":Landroid/graphics/Rect;
    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    mul-float/2addr v2, v7

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->drawStretchCircle(Landroid/graphics/Canvas;)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->drawText(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    invoke-virtual {p0, p1, v2}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->drawCircle(Landroid/graphics/Canvas;F)V

    goto :goto_2
.end method

.method drawBoundRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .local v6, "rectDrawable":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawCircle(Landroid/graphics/Canvas;F)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "radius"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "rectDrawable":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawStretchCircle(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x43340000    # 180.0f

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBgColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, "rectDrawable":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoonRadius:F

    sub-float v0, v6, v7

    .local v0, "horizonLength":F
    iget v6, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v3, v6, v0

    .local v3, "startX":F
    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    int-to-float v4, v6

    .local v4, "startY":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .local v5, "textRectF":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .local v1, "path":Landroid/graphics/Path;
    add-float v6, v3, v0

    iget v7, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget v6, v5, Landroid/graphics/RectF;->right:F

    iget v7, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v6, v7, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    invoke-virtual {v1, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mHalfMoon:Landroid/graphics/RectF;

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v1, v6, v7, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method drawText(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, "rectDrawable":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBasePoint()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBasePoint:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    return v0
.end method

.method public getTextDiagonalLength()F
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v2, v3

    .local v2, "width":F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v0, v3

    .local v0, "height":F
    float-to-double v4, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public getTextWidthHeight()[F
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    new-array v2, v4, [F

    .local v2, "widthHeight":[F
    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    new-array v2, v4, [F

    .end local v2    # "widthHeight":[F
    fill-array-data v2, :array_0

    :goto_0
    return-object v2

    .restart local v2    # "widthHeight":[F
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget-object v3, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v6

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getTop()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setBasePoint(I)V
    .locals 0
    .param p1, "basePoint"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mBasePoint:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method

.method public setRight(I)V
    .locals 0
    .param p1, "right"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->right:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->getTextWidthHeight()[F

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->textWidthHeight:[F

    invoke-virtual {p0}, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->top:I

    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/subscript/SubscriptDrawable;->y:I

    return-void
.end method
