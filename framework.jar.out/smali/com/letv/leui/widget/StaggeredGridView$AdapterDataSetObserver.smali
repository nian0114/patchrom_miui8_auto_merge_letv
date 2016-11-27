.class Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p2, "x1"    # Lcom/letv/leui/widget/StaggeredGridView$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v8, v13}, Lcom/letv/leui/widget/StaggeredGridView;->access$502(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1300(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1400(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/view/VelocityTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1300(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1500(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1500(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1600(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1600(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$1702(Lcom/letv/leui/widget/StaggeredGridView;I)I

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1900(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->confirmCheckedPositionsById()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    float-to-int v3, v8

    .local v3, "left":I
    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v6, v8

    .local v6, "top":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-direct {v4, v3, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v4, "localRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v5, "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1900(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;

    move-result-object v8

    iget-wide v10, v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;

    invoke-direct {v10, v7, v4}, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2000(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2000(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-wide v10, v5, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v8, v8, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "left":I
    .end local v4    # "localRect":Landroid/graphics/Rect;
    .end local v5    # "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z
    invoke-static {v8, v13}, Lcom/letv/leui/widget/StaggeredGridView;->access$2102(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I
    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$2202(Lcom/letv/leui/widget/StaggeredGridView;I)I

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8, v12}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I
    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$2402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    :goto_1
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1000(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->clearTransientViews()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2600(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # invokes: Lcom/letv/leui/widget/StaggeredGridView;->recycleAllViews()V
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2700(Lcom/letv/leui/widget/StaggeredGridView;)V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2800(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v1

    .local v1, "colCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2900(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I
    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$3000(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v9

    aget v9, v9, v2

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "colCount":I
    .end local v2    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v9

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I
    invoke-static {v10}, Lcom/letv/leui/widget/StaggeredGridView;->access$2500(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v10

    add-int/2addr v9, v10

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I
    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$2402(Lcom/letv/leui/widget/StaggeredGridView;I)I

    goto :goto_1

    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I
    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$1700(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v8, v9, :cond_7

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstAdapterId:J
    invoke-static {v10}, Lcom/letv/leui/widget/StaggeredGridView;->access$3100(Lcom/letv/leui/widget/StaggeredGridView;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v8, v12}, Lcom/letv/leui/widget/StaggeredGridView;->access$2302(Lcom/letv/leui/widget/StaggeredGridView;I)I

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v6

    .restart local v6    # "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$3000(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$2900(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->fill([II)V

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v8}, Lcom/letv/leui/widget/StaggeredGridView;->access$3200(Lcom/letv/leui/widget/StaggeredGridView;)[I

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v9, 0x0

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I
    invoke-static {v8, v9}, Lcom/letv/leui/widget/StaggeredGridView;->access$3202(Lcom/letv/leui/widget/StaggeredGridView;[I)[I

    .end local v6    # "top":I
    :cond_8
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    return-void
.end method
