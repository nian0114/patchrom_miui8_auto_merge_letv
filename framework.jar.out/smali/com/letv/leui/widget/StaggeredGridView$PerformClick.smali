.class Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 1

    .prologue
    .line 3475
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p2, "x1"    # Lcom/letv/leui/widget/StaggeredGridView$1;

    .prologue
    .line 3475
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3480
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v3}, Lcom/letv/leui/widget/StaggeredGridView;->access$500(Lcom/letv/leui/widget/StaggeredGridView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3494
    :cond_0
    :goto_0
    return-void

    .line 3482
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v3}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3483
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    .line 3484
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/letv/leui/widget/StaggeredGridView;->access$1700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3487
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3490
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 3491
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method
