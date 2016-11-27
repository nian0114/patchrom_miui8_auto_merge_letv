.class Landroid/widget/Editor$SectionTopHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionTopHandleView"
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
    iput-object p1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mTouchOffsetY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mIsSystemHandle:Z

    return-void
.end method

.method static synthetic access$3400(Landroid/widget/Editor$SectionTopHandleView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Editor$SectionTopHandleView;

    .prologue
    iget v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    return v0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    iget v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    iget v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

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
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .local v0, "line":I
    invoke-virtual {p0, v0, p2}, Landroid/widget/Editor$SectionTopHandleView;->positionAtCursorline(IZ)V

    return-void
.end method

.method protected positionAtCursorline(IZ)V
    .locals 6
    .param p1, "line"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPreviousLine:I

    if-eq p1, v4, :cond_4

    move v1, v3

    .local v1, "lineChanged":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .local v2, "offset":I
    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionTopHandleView;->updateSelection(I)V

    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionTopHandleView;->addPositionToTouchUpFilterExt(I)V

    :cond_3
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionTopHandleView;->getPosX(Landroid/text/Layout;II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionTopHandleView;->getPosY(Landroid/text/Layout;II)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    iget v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    iput p1, p0, Landroid/widget/Editor$SectionTopHandleView;->mPreviousLine:I

    iput-boolean v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionHasChanged:Z

    goto :goto_0

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
    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .local v0, "newline":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SectionTopHandleView;->positionAtCursorline(IZ)V

    return-void
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, "startOffset":I
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, "endOffset":I
    if-ge p1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightPathBogusExt(Z)V

    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SectionTopHandleView;->updateDrawable()V

    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    :cond_2
    return-void
.end method
