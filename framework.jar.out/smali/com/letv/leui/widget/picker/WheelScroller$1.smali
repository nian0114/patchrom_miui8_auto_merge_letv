.class Lcom/letv/leui/widget/picker/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$000(Lcom/letv/leui/widget/picker/WheelScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # setter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelScroller;->access$102(Lcom/letv/leui/widget/picker/WheelScroller;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/letv/leui/widget/picker/WheelScroller;->access$100(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->minY:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$200(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v7

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I
    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->access$300(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v8

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # invokes: Lcom/letv/leui/widget/picker/WheelScroller;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelScroller;->access$800(Lcom/letv/leui/widget/picker/WheelScroller;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # setter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelScroller;->access$502(Lcom/letv/leui/widget/picker/WheelScroller;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$400(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$500(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v3

    neg-float v0, p3

    float-to-int v5, v0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->minX:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$600(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v9

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller$1;->this$0:Lcom/letv/leui/widget/picker/WheelScroller;

    # getter for: Lcom/letv/leui/widget/picker/WheelScroller;->maxX:I
    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelScroller;->access$700(Lcom/letv/leui/widget/picker/WheelScroller;)I

    move-result v10

    move v4, v1

    move v6, v1

    move v7, v1

    move v8, v1

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    return v0
.end method
