.class Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
.super Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 3452
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p2, "x1"    # Lcom/letv/leui/widget/StaggeredGridView$1;

    .prologue
    .line 3452
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3454
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v5

    .line 3455
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v7}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3456
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3457
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v4

    .line 3458
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v7}, Lcom/letv/leui/widget/StaggeredGridView;->access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3460
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3461
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->access$500(Lcom/letv/leui/widget/StaggeredGridView;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3462
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/letv/leui/widget/StaggeredGridView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3464
    :cond_0
    if-eqz v1, :cond_2

    .line 3465
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v7, 0x6

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    .line 3466
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v6, v8}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    .line 3467
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3472
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 3469
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v7, 0x5

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto :goto_0
.end method
