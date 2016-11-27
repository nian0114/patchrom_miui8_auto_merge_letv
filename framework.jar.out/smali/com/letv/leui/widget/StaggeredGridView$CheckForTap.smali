.class final Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->access$400(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v5, 0x4

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v6}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->access$500(Lcom/letv/leui/widget/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4, v7}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .local v3, "longPressTimeout":I
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView;->isLongClickable()Z

    move-result v2

    .local v2, "longClickable":Z
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->access$3800(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    new-instance v5, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->access$3802(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/letv/leui/widget/StaggeredGridView;->access$3800(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;->rememberWindowAttachCount()V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v5}, Lcom/letv/leui/widget/StaggeredGridView;->access$3800(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto :goto_1

    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    :cond_5
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto :goto_1
.end method
