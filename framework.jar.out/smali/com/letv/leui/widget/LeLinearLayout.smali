.class public Lcom/letv/leui/widget/LeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LeLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

.field private mLeDivider:Landroid/graphics/drawable/Drawable;

.field private mLeDividerHeight:I

.field private mLeDividerPadding:I

.field private mLeDividerWidth:I

.field private mLeShowDividers:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerPadding()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    return-void
.end method


# virtual methods
.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v0, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->dividerEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v2, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->startDividerMargin(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v3, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->endDividerMargin(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method drawLeDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildCount()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->isLayoutRtl()Z

    move-result v3

    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .local v5, "position":I
    :goto_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1, v5, v2}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;II)V

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v5

    .restart local v5    # "position":I
    :goto_3
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_8

    invoke-virtual {p0, p1, v5, v1}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;II)V

    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_4
    :goto_4
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .end local v5    # "position":I
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_4
.end method

.method drawLeDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildCount()I

    move-result v2

    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    sub-int v5, v6, v7

    .local v5, "top":I
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1, v5, v3}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;II)V

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "top":I
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "bottom":I
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    sub-int v0, v6, v7

    :goto_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_5

    invoke-virtual {p0, p1, v0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;II)V

    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    return-void

    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_2

    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_3
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v0, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->dividerEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v2, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->startDividerMargin(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v4, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->endDividerMargin(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getDividerFilter()Lcom/letv/leui/widget/LinearLayoutDividerFilter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    return-object v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/4 v0, 0x1

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->drawLeDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->drawLeDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    iput v1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    goto :goto_0
.end method

.method public setDividerFilter(Lcom/letv/leui/widget/LinearLayoutDividerFilter;)V
    .locals 0
    .param p1, "dividerFilter"    # Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerPadding()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    return-void
.end method
