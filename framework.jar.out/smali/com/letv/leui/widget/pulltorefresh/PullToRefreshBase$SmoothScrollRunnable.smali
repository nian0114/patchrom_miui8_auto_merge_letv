.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J
    .param p6, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    iput p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iput p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-wide p4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    iput-object p6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v8, 0x3e8

    iget-wide v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    :goto_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$300(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$300(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    move-result-object v1

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    # getter for: Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    invoke-static {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->access$400(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v2, v4, v6

    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "deltaY":I
    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .end local v0    # "deltaY":I
    .end local v2    # "normalizedTime":J
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
