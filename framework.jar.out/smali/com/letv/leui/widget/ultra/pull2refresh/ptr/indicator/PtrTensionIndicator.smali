.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;
.super Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;
.source "PtrTensionIndicator.java"


# instance fields
.field private DRAG_RATE:F

.field private mCurrentDragPercent:F

.field private mDownPos:F

.field private mDownY:F

.field private mOneHeight:F

.field private mReleasePercent:F

.field private mReleasePos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->DRAG_RATE:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePercent:F

    return-void
.end method

.method private offsetToTarget(F)F
    .locals 14
    .param p1, "scrollTop"    # F

    .prologue
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    div-float v1, p1, v7

    .local v1, "currentDragPercent":F
    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mCurrentDragPercent:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .local v0, "boundedDragPercent":F
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    sub-float v3, p1, v7

    .local v3, "extraOS":F
    const/4 v7, 0x0

    iget v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .local v6, "tensionSlingshotPercent":F
    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, v6, v7

    float-to-double v8, v7

    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, v6, v7

    float-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v5, v7, v8

    .local v5, "tensionPercent":F
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    mul-float/2addr v7, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .local v2, "extraMove":F
    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    mul-float/2addr v7, v0

    add-float/2addr v7, v2

    float-to-int v4, v7

    .local v4, "targetY":I
    const/4 v7, 0x0

    return v7
.end method


# virtual methods
.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getOffsetToRefresh()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getOverDragPercent()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->isUnderTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mCurrentDragPercent:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePercent:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePercent:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePos:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public onPressDown(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onPressDown(FF)V

    iput p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mDownY:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mDownPos:F

    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onRelease()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePos:I

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mCurrentDragPercent:F

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePercent:F

    return-void
.end method

.method public onUIRefreshComplete()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePos:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getOverDragPercent()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mReleasePercent:F

    return-void
.end method

.method protected processOnMove(FFFF)V
    .locals 18
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "offsetX"    # F
    .param p4, "offsetY"    # F

    .prologue
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mDownY:F

    cmpg-float v11, p2, v11

    if-gez v11, :cond_0

    invoke-super/range {p0 .. p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->processOnMove(FFFF)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mDownY:F

    sub-float v11, p2, v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->DRAG_RATE:F

    mul-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mDownPos:F

    add-float v7, v11, v12

    .local v7, "scrollTop":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    div-float v4, v7, v11

    .local v4, "currentDragPercent":F
    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->setOffset(FF)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mCurrentDragPercent:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .local v2, "boundedDragPercent":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    sub-float v6, v7, v11

    .local v6, "extraOS":F
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .local v10, "tensionSlingshotPercent":F
    const/high16 v11, 0x40800000    # 4.0f

    div-float v11, v10, v11

    float-to-double v12, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float v11, v10, v11

    float-to-double v14, v11

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    double-to-float v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v11, v12

    .local v9, "tensionPercent":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    mul-float/2addr v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float v5, v11, v12

    .local v5, "extraMove":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    mul-float/2addr v11, v2

    add-float/2addr v11, v5

    float-to-int v8, v11

    .local v8, "targetY":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->getCurrentPosY()I

    move-result v11

    sub-int v3, v8, v11

    .local v3, "change":I
    int-to-float v11, v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->setOffset(FF)V

    goto/16 :goto_0
.end method

.method public setHeaderHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setHeaderHeight(I)V

    int-to-float v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrTensionIndicator;->mOneHeight:F

    return-void
.end method
