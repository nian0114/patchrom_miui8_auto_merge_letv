.class Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/app/FlingBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingBackGestureListener"
.end annotation


# instance fields
.field private mHandleGestureToDown:Z

.field private mHandleGestureToLeft:Z

.field private mHandleGestureToRight:Z

.field private mHandleGestureToUp:Z

.field final synthetic this$0:Lcom/letv/leui/app/FlingBackHelper;


# direct methods
.method private constructor <init>(Lcom/letv/leui/app/FlingBackHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/app/FlingBackHelper;Lcom/letv/leui/app/FlingBackHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/app/FlingBackHelper;
    .param p2, "x1"    # Lcom/letv/leui/app/FlingBackHelper$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;-><init>(Lcom/letv/leui/app/FlingBackHelper;)V

    return-void
.end method

.method private performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide v6, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v2, v6

    .local v2, "ratio":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .local v1, "distanceY":F
    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v5}, Lcom/letv/leui/app/FlingBackHelper;->isLeftFlingBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget-boolean v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_3

    div-float v5, v1, v0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$300(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToLeft()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v5}, Lcom/letv/leui/app/FlingBackHelper;->isRightFlingBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget-boolean v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    div-float v5, v1, v0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_5

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$300(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :goto_2
    move v3, v4

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToRight()V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v5}, Lcom/letv/leui/app/FlingBackHelper;->isUpFlingBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    iget-boolean v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    div-float v5, v0, v1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_7

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$300(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :goto_3
    move v3, v4

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToUp()V

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v5}, Lcom/letv/leui/app/FlingBackHelper;->isDownFlingBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-boolean v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mScaledPagingTouchSlop:I
    invoke-static {v5}, Lcom/letv/leui/app/FlingBackHelper;->access$100(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    div-float v5, v0, v1

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$300(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    :goto_4
    move v3, v4

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    # getter for: Lcom/letv/leui/app/FlingBackHelper;->mFlingBackGestureListener:Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;
    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->access$200(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToDown()V

    goto :goto_4
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    :cond_1
    cmpg-float v0, p4, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    :cond_2
    cmpl-float v0, p4, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    :cond_3
    return v1
.end method
