.class Lcom/letv/leui/widget/picker/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/WheelScroller;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/WheelScroller;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$000(Lcom/letv/leui/widget/picker/WheelScroller;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .local v1, "currY":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$100(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v3

    sub-int v2, v3, v1

    .local v2, "delta":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # setter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I
    invoke-static {v3, v1}, Lcom/letv/leui/widget/picker/WheelScroller;->access$102(Lcom/letv/leui/widget/picker/WheelScroller;I)I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$900(Lcom/letv/leui/widget/picker/WheelScroller;)Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onScroll(I)V

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$1000(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v1    # "currY":I
    :goto_0
    return-void

    .restart local v1    # "currY":I
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # invokes: Lcom/letv/leui/widget/picker/WheelScroller;->justify()V
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$1100(Lcom/letv/leui/widget/picker/WheelScroller;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->finishScrolling()V

    goto :goto_0

    .end local v1    # "currY":I
    .end local v2    # "delta":I
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .local v0, "currX":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$500(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v3

    sub-int v2, v3, v0

    .restart local v2    # "delta":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # setter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I
    invoke-static {v3, v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$502(Lcom/letv/leui/widget/picker/WheelScroller;I)I

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$900(Lcom/letv/leui/widget/picker/WheelScroller;)Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onScroll(I)V

    :cond_5
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_6
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$1000(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_7
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # invokes: Lcom/letv/leui/widget/picker/WheelScroller;->justify()V
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$1100(Lcom/letv/leui/widget/picker/WheelScroller;)V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$2;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->finishScrolling()V

    goto :goto_0
.end method
