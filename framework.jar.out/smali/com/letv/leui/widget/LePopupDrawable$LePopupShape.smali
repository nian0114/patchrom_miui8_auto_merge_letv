.class public Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "LePopupDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LePopupShape"
.end annotation


# instance fields
.field private mArrowHeight:F

.field private mArrowOffset:I

.field private mArrowWidth:F

.field private mBorderPath:Landroid/graphics/Path;

.field private mCurFillColor:I

.field private mFillColorList:Landroid/content/res/ColorStateList;

.field private mFillPath:Landroid/graphics/Path;

.field private mIsArrowOnTop:Z

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mShowArrow:Z


# direct methods
.method public constructor <init>(FIZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "fillColor"    # I
    .param p3, "isArrowOnTop"    # Z

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iput p2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    iput-boolean p3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "isArrowOnTop"    # Z

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;-><init>(FIZ)V

    return-void
.end method

.method private updateBoundPath()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    iget v1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    .local v1, "arrowWidth":F
    iget v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    .local v0, "arrowHeight":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->rect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .local v2, "r":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void

    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private updateShapePath()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    iget v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v1, v3, v4

    .local v1, "arrowWidth":F
    iget v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    sub-float v0, v3, v6

    .local v0, "arrowHeight":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->rect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .local v2, "r":Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void

    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    .local v0, "shape":Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .local v1, "oldColor":I
    iget v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    .local v0, "fillColor":I
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isArrowOnTop()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    return v0
.end method

.method protected onResize(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateBoundPath()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    return-void
.end method

.method public setArrowOffset(I)V
    .locals 0
    .param p1, "arrowOffset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowOffset:I

    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    goto :goto_0
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "fillColor"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setIsArrowOnTop(Z)V
    .locals 1
    .param p1, "isArrowOnTop"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    goto :goto_0
.end method

.method public updateTextColors([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .local v1, "inval":Z
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .local v0, "color":I
    iget v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    const/4 v1, 0x1

    .end local v0    # "color":I
    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
