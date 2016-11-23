.class Landroid/widget/Editor$SectionBottomHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionBottomHandleView"
.end annotation


# instance fields
.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6503
    iput-object p1, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    .line 6504
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6506
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    .line 6507
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    .line 6508
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mTouchOffsetY:F

    .line 6509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mIsSystemHandle:Z

    .line 6510
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 6534
    iget-object v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 6616
    const/4 v0, 0x0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6514
    iget v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6519
    iget v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 6524
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosY(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 6529
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 6570
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6571
    .local v0, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6572
    .local v1, "line":I
    invoke-static {v0, p1}, Lcom/letv/leui/text/LeTextOpt;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6573
    add-int/lit8 v1, v1, -0x1

    .line 6576
    :cond_0
    if-gez v1, :cond_1

    .line 6577
    const/4 v1, 0x0

    .line 6580
    :cond_1
    invoke-virtual {p0, v1, p2}, Landroid/widget/Editor$SectionBottomHandleView;->positionAtCursorline(IZ)V

    .line 6581
    return-void
.end method

.method protected positionAtCursorline(IZ)V
    .locals 6
    .param p1, "line"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v3, 0x1

    .line 6585
    iget-object v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6586
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 6588
    iget-object v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6611
    :cond_0
    :goto_0
    return-void

    .line 6592
    :cond_1
    iget v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPreviousLine:I

    if-eq p1, v4, :cond_4

    move v1, v3

    .line 6593
    .local v1, "lineChanged":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 6595
    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 6596
    .local v2, "offset":I
    if-eqz v1, :cond_3

    .line 6597
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionBottomHandleView;->updateSelection(I)V

    .line 6598
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionBottomHandleView;->addPositionToTouchUpFilterExt(I)V

    .line 6601
    :cond_3
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionBottomHandleView;->getPosX(Landroid/text/Layout;II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    .line 6602
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionBottomHandleView;->getPosY(Landroid/text/Layout;II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    .line 6605
    iget v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    .line 6606
    iget v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    .line 6608
    iput p1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPreviousLine:I

    .line 6609
    iput-boolean v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 6592
    .end local v1    # "lineChanged":Z
    .end local v2    # "offset":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 6564
    iget-object v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6565
    .local v0, "newline":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SectionBottomHandleView;->positionAtCursorline(IZ)V

    .line 6566
    return-void
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 6539
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6540
    .local v1, "startOffset":I
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6541
    .local v0, "endOffset":I
    if-ge v1, p1, :cond_1

    .line 6542
    if-ne v0, p1, :cond_0

    .line 6543
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightPathBogusExt(Z)V

    .line 6544
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 6546
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6549
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SectionBottomHandleView;->updateDrawable()V

    .line 6550
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 6551
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 6560
    :cond_2
    return-void
.end method
