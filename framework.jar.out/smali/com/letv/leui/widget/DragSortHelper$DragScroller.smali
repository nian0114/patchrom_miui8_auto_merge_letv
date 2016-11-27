.class Lcom/letv/leui/widget/DragSortHelper$DragScroller;
.super Ljava/lang/Object;
.source "DragSortHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v3

    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v2

    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v10

    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mY:I
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$600(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I
    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->access$1300(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->access$300(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mY:I
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$600(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I
    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->access$1300(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I
    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->access$300(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$1600(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F
    invoke-static {v14}, Lcom/letv/leui/widget/DragSortHelper;->access$1400(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollHeight:F
    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->access$1500(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dt:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    if-ltz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    move v9, v3

    .local v9, "movePos":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    add-int v11, v13, v14

    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    move v11, v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x1

    # setter for: Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/letv/leui/widget/DragSortHelper;->access$1902(Lcom/letv/leui/widget/DragSortHelper;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->layoutChildren()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x0

    # setter for: Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z
    invoke-static {v13, v14}, Lcom/letv/leui/widget/DragSortHelper;->access$1902(Lcom/letv/leui/widget/DragSortHelper;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    const/4 v14, 0x0

    # invokes: Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v13, v9, v8, v14}, Lcom/letv/leui/widget/DragSortHelper;->access$2000(Lcom/letv/leui/widget/DragSortHelper;ILandroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v13

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;
    invoke-static {v13}, Lcom/letv/leui/widget/DragSortHelper;->access$1600(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F
    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->access$1700(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollHeight:F
    invoke-static {v15}, Lcom/letv/leui/widget/DragSortHelper;->access$1800(Lcom/letv/leui/widget/DragSortHelper;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->dy:I

    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->tStart:J

    iget-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mPrevTime:J

    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->scrollDir:I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mScrolling:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->mAbort:Z

    goto :goto_0
.end method
