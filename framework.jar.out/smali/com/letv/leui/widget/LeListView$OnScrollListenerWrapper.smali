.class Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "LeListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/letv/leui/widget/LeListView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p2, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/SwipeListViewHelper;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/SwipeListViewHelper;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$OnScrollListenerWrapper;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
