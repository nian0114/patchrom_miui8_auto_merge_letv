.class Lcom/letv/leui/widget/DragSortGridView$6;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1600(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1700(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->handleMobileCellScroll()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1800(Lcom/letv/leui/widget/DragSortGridView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1900(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->touchEventsEnded()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$2000(Lcom/letv/leui/widget/DragSortGridView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1600(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V
    invoke-static {v0, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->access$2100(Lcom/letv/leui/widget/DragSortGridView;J)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->handleCellSwitch()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$2200(Lcom/letv/leui/widget/DragSortGridView;)V

    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$1600(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v3}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v4

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V
    invoke-static {v2, v4, v5}, Lcom/letv/leui/widget/DragSortGridView;->access$2100(Lcom/letv/leui/widget/DragSortGridView;J)V

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->handleCellSwitch()V
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$2200(Lcom/letv/leui/widget/DragSortGridView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, -0x1

    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentFirstVisibleItem:I

    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentVisibleItemCount:I

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView$6;->checkAndHandleFirstVisibleCellChange()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView$6;->checkAndHandleLastVisibleCellChange()V

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1400(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$1400(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousFirstVisibleItem:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$6;->mCurrentScrollState:I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$6;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/letv/leui/widget/DragSortGridView;->access$1502(Lcom/letv/leui/widget/DragSortGridView;I)I

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView$6;->isScrollCompleted()V

    return-void
.end method
