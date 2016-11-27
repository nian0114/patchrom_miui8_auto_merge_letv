.class public Lcom/letv/leui/widget/LeRoundRectDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "LeRoundRectDrawable2.java"


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "backgroundColor"    # I
    .param p2, "radius"    # F

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    iput p2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    iget v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method getPadding()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1
    .param p1, "padding"    # F
    .param p2, "insetForPadding"    # Z
    .param p3, "insetForRadius"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    iput-boolean p2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    iput-boolean p3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    goto :goto_0
.end method

.method setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    goto :goto_0
.end method
