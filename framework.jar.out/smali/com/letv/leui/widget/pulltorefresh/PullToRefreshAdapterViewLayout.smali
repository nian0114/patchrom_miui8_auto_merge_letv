.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshAdapterViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$1;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;
    }
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

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
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
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
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-gt v4, v2, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, v5, :cond_4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "lastItemPosition":I
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "lastVisiblePosition":I
    add-int/lit8 v7, v2, -0x1

    if-lt v4, v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v1, v4, v7

    .local v1, "childIndex":I
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gt v7, v8, :cond_4

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v0, "fl":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public getRefreshableAbsListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onFinishInflate()V

    const/4 v2, 0x0

    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    if-eqz v3, :cond_1

    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    .end local v0    # "childView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/widget/AbsListView;

    .end local v2    # "view":Landroid/view/View;
    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setId(I)V

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    new-instance v4, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    .restart local v2    # "view":Landroid/view/View;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Refreshable View is not a AbsListView\'s subclass, or the number of Refreshable View more than one"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_3

    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v3, v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    :goto_2
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    return-void
.end method
