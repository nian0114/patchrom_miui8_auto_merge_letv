.class public abstract Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    :goto_0
    return-object v0

    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getTop()I

    move-result v2

    if-lt v5, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "lastItemPosition":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "lastVisiblePosition":I
    add-int/lit8 v5, v2, -0x1

    if-lt v4, v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .local v1, "childIndex":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getBottom()I

    move-result v5

    if-gt v8, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_0

    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_3
    move v5, v7

    goto :goto_0
.end method


# virtual methods
.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    if-lez p4, :cond_2

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_2

    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    instance-of v3, v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    :goto_1
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    return-void

    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    return-void
.end method
