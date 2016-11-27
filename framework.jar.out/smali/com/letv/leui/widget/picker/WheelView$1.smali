.class Lcom/letv/leui/widget/picker/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->access$000(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyScrollingListenersAboutEnd()V

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->access$002(Lcom/letv/leui/widget/picker/WheelView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->access$202(Lcom/letv/leui/widget/picker/WheelView;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/picker/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$100(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v3, v3, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v1

    .local v1, "lastOffset":I
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    sub-int/2addr v4, v1

    # invokes: Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->access$300(Lcom/letv/leui/widget/picker/WheelView;I)V

    .end local v1    # "lastOffset":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "lastOffset":I
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    neg-int v4, v4

    sub-int/2addr v4, v1

    # invokes: Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->access$300(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .end local v1    # "lastOffset":I
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # invokes: Lcom/letv/leui/widget/picker/WheelView;->doScroll(I)V
    invoke-static {v3, p1}, Lcom/letv/leui/widget/picker/WheelView;->access$300(Lcom/letv/leui/widget/picker/WheelView;I)V

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->isVertical:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$100(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    .local v0, "height":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    if-le v3, v0, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3, v0}, Lcom/letv/leui/widget/picker/WheelView;->access$202(Lcom/letv/leui/widget/picker/WheelView;I)I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    neg-int v4, v0

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    neg-int v4, v0

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->access$202(Lcom/letv/leui/widget/picker/WheelView;I)I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_0

    .end local v0    # "height":I
    :cond_5
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v2

    .local v2, "width":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    if-le v3, v2, :cond_6

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3, v2}, Lcom/letv/leui/widget/picker/WheelView;->access$202(Lcom/letv/leui/widget/picker/WheelView;I)I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$200(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    neg-int v4, v2

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    neg-int v4, v2

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->scrollingOffset:I
    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->access$202(Lcom/letv/leui/widget/picker/WheelView;I)I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    # getter for: Lcom/letv/leui/widget/picker/WheelView;->scroller:Lcom/letv/leui/widget/picker/WheelScroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->access$400(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto/16 :goto_0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/picker/WheelView;->isScrollingPerformed:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->access$002(Lcom/letv/leui/widget/picker/WheelView;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
