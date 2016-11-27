.class Lcom/letv/leui/widget/LePinnedScrollView$1;
.super Ljava/lang/Object;
.source "LePinnedScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePinnedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePinnedScrollView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePinnedScrollView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;
    invoke-static {v4}, Lcom/letv/leui/widget/LePinnedScrollView;->access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;
    invoke-static {v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;

    move-result-object v5

    # invokes: Lcom/letv/leui/widget/LePinnedScrollView;->getLeftForViewRelativeOnlyChild(Landroid/view/View;)I
    invoke-static {v4, v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$100(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I

    move-result v1

    .local v1, "l":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;
    invoke-static {v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;

    move-result-object v5

    # invokes: Lcom/letv/leui/widget/LePinnedScrollView;->getBottomForViewRelativeOnlyChild(Landroid/view/View;)I
    invoke-static {v4, v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$200(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I

    move-result v3

    .local v3, "t":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;
    invoke-static {v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;

    move-result-object v5

    # invokes: Lcom/letv/leui/widget/LePinnedScrollView;->getRightForViewRelativeOnlyChild(Landroid/view/View;)I
    invoke-static {v4, v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$300(Lcom/letv/leui/widget/LePinnedScrollView;Landroid/view/View;)I

    move-result v2

    .local v2, "r":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LePinnedScrollView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->currentlyStickingView:Landroid/view/View;
    invoke-static {v5}, Lcom/letv/leui/widget/LePinnedScrollView;->access$000(Lcom/letv/leui/widget/LePinnedScrollView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    # getter for: Lcom/letv/leui/widget/LePinnedScrollView;->stickyViewTopOffset:F
    invoke-static {v6}, Lcom/letv/leui/widget/LePinnedScrollView;->access$400(Lcom/letv/leui/widget/LePinnedScrollView;)F

    move-result v6

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .local v0, "b":I
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/letv/leui/widget/LePinnedScrollView;->invalidate(IIII)V

    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LePinnedScrollView$1;->this$0:Lcom/letv/leui/widget/LePinnedScrollView;

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Lcom/letv/leui/widget/LePinnedScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
