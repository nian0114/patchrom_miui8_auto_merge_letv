.class Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "ModifiedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ModifiedGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastDelta:I

.field private mLastFlingX:I

.field private mLastOverFlingX:I

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/letv/leui/widget/ModifiedGallery;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/ModifiedGallery;)V
    .locals 2

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/letv/leui/widget/ModifiedGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # invokes: Lcom/letv/leui/widget/ModifiedGallery;->scrollIntoSlots()V
    invoke-static {v0}, Lcom/letv/leui/widget/ModifiedGallery;->access$700(Lcom/letv/leui/widget/ModifiedGallery;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    iget v7, v7, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-nez v7, :cond_1

    invoke-direct {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .local v5, "scroller":Landroid/widget/OverScroller;
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$200(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7, v10}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$300(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z
    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->access$802(Lcom/letv/leui/widget/ModifiedGallery;Z)Z

    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .local v4, "more":Z
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    .local v6, "x":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    sub-int v1, v7, v6

    .local v1, "delta":I
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v1}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    move-result v3

    .local v3, "isAtEdge":Z
    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$800(Lcom/letv/leui/widget/ModifiedGallery;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    iput v6, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastDelta:I

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, p0}, Lcom/letv/leui/widget/ModifiedGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mShouldStopFling:Z
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$800(Lcom/letv/leui/widget/ModifiedGallery;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_5

    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$200(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-ne v7, v9, :cond_4

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v8, 0x4

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mLastScrollState:I
    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->access$300(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-eq v7, v9, :cond_3

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v9}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v8, 0x3

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto :goto_1

    :cond_5
    invoke-direct {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0

    .end local v1    # "delta":I
    .end local v3    # "isAtEdge":Z
    .end local v4    # "more":Z
    .end local v6    # "x":I
    :pswitch_1
    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .local v0, "currX":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    sub-int v2, v0, v7

    .local v2, "deltaX":I
    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    neg-int v8, v2

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    :cond_6
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v0    # "currX":I
    .end local v2    # "deltaX":I
    :cond_7
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v7, v10}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I
    invoke-static {v1}, Lcom/letv/leui/widget/ModifiedGallery;->access$600(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, 0x4

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mCurrentOverScrollDistance:I
    invoke-static {v0}, Lcom/letv/leui/widget/ModifiedGallery;->access$600(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, -0x1

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v2, 0x2

    # setter for: Lcom/letv/leui/widget/ModifiedGallery;->mTouchMode:I
    invoke-static {v0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->access$202(Lcom/letv/leui/widget/ModifiedGallery;I)I

    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startCommon()V

    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    # getter for: Lcom/letv/leui/widget/ModifiedGallery;->mAnimationDuration:I
    invoke-static {v2}, Lcom/letv/leui/widget/ModifiedGallery;->access$500(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method
