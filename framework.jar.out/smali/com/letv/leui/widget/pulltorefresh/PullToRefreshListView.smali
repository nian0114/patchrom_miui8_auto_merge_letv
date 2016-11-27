.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$1;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mListViewExtrasEnabled:Z

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .local v0, "lv":Landroid/widget/ListView;
    :goto_0
    return-object v0

    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 3
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v1

    .local v1, "proxy":Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .local v0, "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    .end local v0    # "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x102000a

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v1

    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setId(I)V

    .end local v1    # "lv":Landroid/widget/ListView;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    check-cast v2, Landroid/widget/ListView;

    .end local v2    # "view":Landroid/view/View;
    move-object v1, v2

    goto :goto_0

    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Refreshable View is not a ListView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 9
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v8, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0, v8}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .local v3, "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .local v1, "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .local v2, "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v5, 0x0

    .local v5, "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .local v4, "scrollToY":I
    :goto_1
    invoke-virtual {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    invoke-virtual {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->hideAllViews()V

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    invoke-virtual {v1, v8}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->smoothScrollTo(I)V

    goto :goto_0

    .end local v1    # "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v3    # "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v4    # "scrollToY":I
    .end local v5    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .restart local v3    # "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .restart local v1    # "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .restart local v2    # "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .restart local v4    # "scrollToY":I
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-nez v5, :cond_0

    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$1;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .local v1, "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .local v0, "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .local v3, "scrollToHeight":I
    const/4 v4, 0x0

    .local v4, "selection":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_3

    .local v2, "scrollLvToEdge":Z
    :goto_1
    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->showInvisibleViews()V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    :cond_1
    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    goto :goto_0

    .end local v0    # "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v1    # "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "scrollLvToEdge":Z
    .end local v3    # "scrollToHeight":I
    .end local v4    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .restart local v1    # "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .restart local v0    # "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .restart local v3    # "scrollToHeight":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_2

    .restart local v2    # "scrollLvToEdge":Z
    :goto_2
    goto :goto_1

    .end local v2    # "scrollLvToEdge":Z
    :cond_2
    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
