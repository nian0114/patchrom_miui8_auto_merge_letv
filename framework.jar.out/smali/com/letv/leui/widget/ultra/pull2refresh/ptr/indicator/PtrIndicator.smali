.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# static fields
.field public static final POS_START:I


# instance fields
.field private mCurrentPos:I

.field private mHeaderHeight:I

.field private mIsUnderTouch:Z

.field private mLastPos:I

.field private mOffsetToKeepHeaderWhileLoading:I

.field protected mOffsetToRefresh:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPressedPos:I

.field private mPtLastMove:Landroid/graphics/PointF;

.field private mRatioOfHeaderHeightToRefresh:F

.field private mRefreshCompleteY:I

.field private mResistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPressedPos:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    const/high16 v0, 0x40300000    # 2.75f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mResistance:F

    iput-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    return-void
.end method


# virtual methods
.method public convertFrom(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 1
    .param p1, "ptrSlider"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    iget v0, p1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v0, p1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    iget v0, p1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    return-void
.end method

.method public crossRefreshLineFromTopToBottom()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPercent()F
    .locals 3

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "currentPercent":F
    :goto_0
    return v0

    .end local v0    # "currentPercent":F
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentPosY()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    return v0
.end method

.method public getLastPercent()F
    .locals 3

    .prologue
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, "oldPercent":F
    :goto_0
    return v0

    .end local v0    # "oldPercent":F
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getLastPosY()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    return v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    goto :goto_0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetY:F

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    return v0
.end method

.method public getResistance()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mResistance:F

    return v0
.end method

.method public goDownCrossFinishPosition()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustBackToStartPosition()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustLeftStartPosition()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJustReachedHeaderHeightFromTopToBottom()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLeftStartPosition()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMovedAfterPressedDown()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPressedPos:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlreadyHere(I)Z
    .locals 1
    .param p1, "to"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInStartPosition()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverOffsetToKeepHeaderWhileLoading()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverOffsetToRefresh()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderTouch()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    return v0
.end method

.method public final onMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v2

    .local v0, "offsetX":F
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v2

    .local v1, "offsetY":F
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->processOnMove(FFFF)V

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public onPressDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPressedPos:I

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mPtLastMove:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mIsUnderTouch:Z

    return-void
.end method

.method public onUIRefreshComplete()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRefreshCompleteY:I

    return-void
.end method

.method protected onUpdatePos(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "last"    # I

    .prologue
    return-void
.end method

.method protected processOnMove(FFFF)V
    .locals 1
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mResistance:F

    div-float v0, p4, v0

    invoke-virtual {p0, p3, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setOffset(FF)V

    return-void
.end method

.method public final setCurrentPos(I)V
    .locals 1
    .param p1, "current"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mCurrentPos:I

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mLastPos:I

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onUpdatePos(II)V

    return-void
.end method

.method public setHeaderHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->updateHeight()V

    return-void
.end method

.method protected setOffset(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetX:F

    iput p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetY:F

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToKeepHeaderWhileLoading:I

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    div-int/2addr v0, p1

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mRatioOfHeaderHeightToRefresh:F

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    return-void
.end method

.method public setResistance(F)V
    .locals 0
    .param p1, "resistance"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mResistance:F

    return-void
.end method

.method protected updateHeight()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mHeaderHeight:I

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->mOffsetToRefresh:I

    return-void
.end method

.method public willOverTop(I)Z
    .locals 1
    .param p1, "to"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
