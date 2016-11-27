.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;
.super Ljava/lang/Object;
.source "PullToRefreshAdapterViewLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
    .param p2, "x1"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    if-lez p4, :cond_2

    add-int v0, p2, p3

    add-int/lit8 v2, p4, -0x1

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z
    invoke-static {v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$102(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$100(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
