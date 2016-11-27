.class Lcom/letv/leui/widget/DragSortHelper$DropAnimator;
.super Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;-><init>(Lcom/letv/leui/widget/DragSortHelper;FI)V

    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v4}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "first":I
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I
    invoke-static {v4}, Lcom/letv/leui/widget/DragSortHelper;->access$1000(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .local v1, "otherAdjust":I
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v4}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .local v2, "targetY":I
    if-eqz v3, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mDropPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$1100(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$800(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mDropPos:I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$900(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->srcPos:I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v1, 0x2

    # setter for: Lcom/letv/leui/widget/DragSortHelper;->mDragState:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->access$402(Lcom/letv/leui/widget/DragSortHelper;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaY:F

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaX:F

    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # invokes: Lcom/letv/leui/widget/DragSortHelper;->dropFloatView()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$1200(Lcom/letv/leui/widget/DragSortHelper;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 8
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->getTargetY()I

    move-result v4

    .local v4, "targetY":I
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v3

    .local v3, "targetX":I
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    int-to-float v1, v5

    .local v1, "deltaY":F
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    int-to-float v0, v5

    .local v0, "deltaX":F
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, p2

    .local v2, "f":F
    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaY:F

    div-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaX:F

    div-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/letv/leui/widget/DragSortHelper;->access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v6}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v6, 0x1

    # invokes: Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(Z)V
    invoke-static {v5, v6}, Lcom/letv/leui/widget/DragSortHelper;->access$700(Lcom/letv/leui/widget/DragSortHelper;Z)V

    :cond_1
    return-void
.end method
