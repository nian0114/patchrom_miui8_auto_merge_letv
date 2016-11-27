.class public Lcom/letv/leui/widget/DragSortHelper;
.super Ljava/lang/Object;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;,
        Lcom/letv/leui/widget/DragSortHelper$DragScroller;,
        Lcom/letv/leui/widget/DragSortHelper$LimitedListener;,
        Lcom/letv/leui/widget/DragSortHelper$DragSortListener;,
        Lcom/letv/leui/widget/DragSortHelper$DropListener;,
        Lcom/letv/leui/widget/DragSortHelper$DragListener;,
        Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;,
        Lcom/letv/leui/widget/DragSortHelper$DropAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$LiftAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;,
        Lcom/letv/leui/widget/DragSortHelper$HeightCache;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final STOPPED:I = 0x3

.field public static final TAG_DRAG_SORT:Ljava/lang/String; = "LeListView_DRAG_SORT"

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

.field private mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimDuration:I

.field private mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

.field private mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLeListView:Lcom/letv/leui/widget/LeListView;

.field private mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mOffsetX:I

.field private mOffsetY:I

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3eaaaaab

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    iput v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iput v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    const/16 v0, 0x96

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortHelper$1;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;-><init>(Lcom/letv/leui/widget/DragSortHelper;I)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeListView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/DragSortHelper;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/DragSortHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$1902(Lcom/letv/leui/widget/DragSortHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/DragSortHelper;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/DragSortHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    return v0
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/DragSortHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    return p1
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/DragSortHelper;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    return v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/DragSortHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/DragSortHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortHelper;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "first":I
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "last":I
    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "begin":I
    sub-int v6, v4, v2

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    add-int v6, v2, v3

    invoke-virtual {p0, v6, v5, v9}, Lcom/letv/leui/widget/DragSortHelper;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private adjustOnReorder()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "firstPos":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ge v3, v0, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "top":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v5

    .local v5, "moveHeightAfter":I
    move v4, v6

    .local v4, "moveBlankBefore":I
    move v3, v5

    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq p1, v7, :cond_0

    sub-int/2addr v4, v1

    sub-int/2addr v3, v1

    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    .local v2, "maxBlank":I
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    :cond_1
    if-gt p1, p3, :cond_3

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    sub-int v7, v2, v3

    add-int/2addr v0, v7

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne p1, p4, :cond_6

    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    :cond_6
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/letv/leui/widget/DragSortHelper;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .local v2, "i":I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .local v3, "position":I
    move v1, v3

    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    aput v1, p3, v4

    aput v0, p4, v4

    add-int/lit8 v4, v4, 0x1

    move v1, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_2

    :cond_3
    if-ne v0, p2, :cond_4

    move v0, p1

    :cond_4
    aput v1, p3, v4

    aput v0, p4, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    aget v6, p3, v5

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p4, v6

    if-ne v6, p1, :cond_5

    add-int/lit8 v6, v4, -0x1

    aget v6, p3, v6

    aput v6, p3, v5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    move v5, v4

    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    iget-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .local v3, "slideHeight":I
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .local v0, "height":I
    :goto_1
    return v0

    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    if-eqz v1, :cond_5

    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(Z)V

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "minY":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxY":I
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->getScrollDir()I

    move-result v0

    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->startScrolling(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->startScrolling(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v3, v5}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 7
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->updateFloatView()V

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->updatePositions()Z

    move-result v3

    .local v3, "updated":Z
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .local v2, "scroll":I
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, p1, v5}, Lcom/letv/leui/widget/LeListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->layoutChildren()V

    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->invalidate()V

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .local v1, "movePos":I
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v3

    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, p1, v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v5

    .local v5, "l":I
    iget-object v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeListView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    iget v8, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v8, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .local v7, "t":I
    add-int v0, v7, v3

    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/letv/leui/widget/DragSortHelper$DropListener;->drop(II)V

    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->destroyFloatView()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustOnReorder()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->clearPositions()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_2

    :cond_1
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_2
    return v0
.end method

.method private getChildHeight(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v5, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v4, v1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v5, p1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->get(I)I

    move-result v1

    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    if-ltz v2, :cond_5

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v7, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mChildHeightCache:Lcom/letv/leui/widget/DragSortHelper$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/letv/leui/widget/DragSortHelper$HeightCache;->add(II)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-interface {v0, p1, v7, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    :cond_2
    move-object v0, p2

    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->measureItem(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v7

    .local v7, "numHeaders":I
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v6

    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    :goto_0
    return v3

    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v2

    .local v2, "divHeight":I
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v1

    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v4

    .local v4, "itemHeight":I
    move v8, p2

    .local v8, "otop":I
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v9, v10, :cond_5

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v9, :cond_3

    add-int v9, p2, v4

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v8, v9, v10

    :cond_2
    :goto_1
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt p1, v9, :cond_7

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/letv/leui/widget/DragSortHelper;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    goto :goto_1

    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt p1, v9, :cond_2

    sub-int v8, p2, v5

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    add-int v8, p2, v5

    goto :goto_1

    :cond_6
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    sub-int v0, v4, v1

    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/LeListView;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "leListView"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    const/4 v7, 0x1

    .local v7, "sortEnabled":Z
    const/4 v4, 0x0

    .local v4, "dragInitMode":I
    const/4 v3, 0x0

    .local v3, "dragHandleId":I
    const/high16 v1, -0x1000000

    .local v1, "bgColor":I
    if-eqz p2, :cond_0

    const/16 v9, 0x16

    iget-boolean v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    const/16 v9, 0x13

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatAlpha:F

    iput v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v12, 0x14

    const/high16 v13, 0x3f400000    # 0.75f

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    const/16 v9, 0x10

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .local v5, "frac":F
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollStart(F)V

    const/16 v9, 0x11

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    const/16 v9, 0x15

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    const/16 v9, 0x1a

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .local v8, "useDefaultController":Z
    if-eqz v8, :cond_0

    const/16 v9, 0x17

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v9, 0x18

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/16 v9, 0x19

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/16 v9, 0x12

    const/high16 v10, -0x1000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .end local v5    # "frac":F
    .end local v8    # "useDefaultController":Z
    :cond_0
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    new-instance v2, Lcom/letv/leui/widget/DragSortController;

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v3, v4}, Lcom/letv/leui/widget/DragSortController;-><init>(Lcom/letv/leui/widget/LeListView;II)V

    .local v2, "controller":Lcom/letv/leui/widget/DragSortController;
    invoke-virtual {v2, v7}, Lcom/letv/leui/widget/DragSortController;->setSortEnabled(Z)V

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/DragSortController;->setBackgroundColor(I)V

    iput-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    iget-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v9, v2}, Lcom/letv/leui/widget/LeListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-direct {v9, p0}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    iput-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    const/high16 v6, 0x3f000000    # 0.5f

    .local v6, "smoothness":F
    iget v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    if-lez v9, :cond_1

    new-instance v9, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    iget v10, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimDuration:I

    invoke-direct {v9, p0, v6, v10}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;-><init>(Lcom/letv/leui/widget/DragSortHelper;FI)V

    iput-object v9, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    :cond_1
    return-void

    .end local v2    # "controller":Lcom/letv/leui/widget/DragSortController;
    .end local v6    # "smoothness":F
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private isLimited()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v2}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->topLimitedPosition()I

    move-result v1

    .local v1, "topLimit":I
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v2}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->bottomLimitedPosition()I

    move-result v0

    .local v0, "bottomLimit":I
    add-int/lit8 v2, v1, 0x2

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "bottomLimit":I
    .end local v1    # "topLimit":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->measureItem(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getListPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void

    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    sub-int v0, p3, p2

    .local v0, "windowSize":I
    add-int/2addr p0, p1

    if-ge p0, p2, :cond_1

    add-int/2addr p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-lt p0, p3, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "action":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastX:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastX:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastY:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mOffsetX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mTouchLoc:Landroid/graphics/Point;

    move-object/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v4, v14, Landroid/graphics/Point;->x:I

    .local v4, "floatX":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v5, v14, Landroid/graphics/Point;->y:I

    .local v5, "floatY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingLeft()I

    move-result v10

    .local v10, "padLeft":I
    if-le v4, v10, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v10, v14, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v9

    .local v9, "numHeaders":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v8

    .local v8, "numFooters":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v3

    .local v3, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getLastVisiblePosition()I

    move-result v7

    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v11

    .local v11, "topLimit":I
    if-ge v3, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    sub-int v15, v9, v3

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v11

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortHelper;->isLimited()Z

    move-result v6

    .local v6, "isLimited":Z
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v14}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->topLimitedPosition()I

    move-result v12

    .local v12, "topLimitedPosition":I
    :goto_1
    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le v14, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    sub-int v15, v12, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .local v13, "view":Landroid/view/View;
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v11

    .end local v13    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    and-int/lit8 v14, v14, 0x8

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v3, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v15}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v15

    sub-int v1, v14, v15

    .local v1, "bottomLimit":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v14}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v14

    sub-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    if-lt v7, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v15}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v15

    sub-int/2addr v15, v8

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    :cond_5
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    invoke-interface {v14}, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;->bottomLimitedPosition()I

    move-result v2

    .local v2, "bottomLimitedPosition":I
    :goto_2
    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-gt v14, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    add-int/lit8 v15, v2, -0x1

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .restart local v13    # "view":Landroid/view/View;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .end local v13    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    and-int/lit8 v14, v14, 0x4

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-lt v7, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    sub-int/2addr v15, v3

    invoke-virtual {v14, v15}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    if-ge v5, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v11, v14, Landroid/graphics/Point;->y:I

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeightHalf:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    return-void

    .end local v1    # "bottomLimit":I
    .end local v2    # "bottomLimitedPosition":I
    .end local v3    # "firstPos":I
    .end local v6    # "isLimited":Z
    .end local v7    # "lastPos":I
    .end local v8    # "numFooters":I
    .end local v9    # "numHeaders":I
    .end local v11    # "topLimit":I
    .end local v12    # "topLimitedPosition":I
    :cond_9
    if-ge v4, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iput v10, v14, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .restart local v3    # "firstPos":I
    .restart local v6    # "isLimited":Z
    .restart local v7    # "lastPos":I
    .restart local v8    # "numFooters":I
    .restart local v9    # "numHeaders":I
    .restart local v11    # "topLimit":I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .restart local v1    # "bottomLimit":I
    .restart local v12    # "topLimitedPosition":I
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2    # "bottomLimitedPosition":I
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    add-int/2addr v14, v5

    if-le v14, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewHeight:I

    sub-int v15, v1, v15

    iput v15, v14, Landroid/graphics/Point;->y:I

    goto :goto_3
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v9

    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v23, v0

    .local v23, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v9

    invoke-virtual/range {v27 .. v28}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v9

    invoke-virtual/range {v27 .. v28}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    .local v5, "edge":I
    move v13, v5

    .local v13, "lastEdge":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getDividerHeight()I

    move-result v4

    .local v4, "divHeight":I
    move/from16 v11, v23

    .local v11, "itemPos":I
    move/from16 v12, v24

    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    :goto_0
    if-ltz v11, :cond_1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v10

    if-nez v11, :cond_7

    sub-int v27, v12, v4

    sub-int v5, v27, v10

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v15

    .local v15, "numHeaders":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getFooterViewsCount()I

    move-result v14

    .local v14, "numFooters":I
    const/16 v26, 0x0

    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v16, v0

    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v17, v0

    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    move/from16 v18, v0

    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    move v6, v5

    .local v6, "edgeBottom":I
    move v8, v13

    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    move v11, v15

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    :cond_3
    const/16 v26, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/letv/leui/widget/DragSortHelper$DragListener;->drag(II)V

    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    const/16 v26, 0x1

    :cond_6
    return v26

    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    move v13, v5

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v3

    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    add-int v27, v12, v4

    add-int v5, v27, v10

    goto/16 :goto_1

    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/DragSortHelper;->getItemHeight(I)I

    move-result v10

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/letv/leui/widget/DragSortHelper;->getShuffleEdge(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    move v13, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSlideFrac:F

    goto/16 :goto_3

    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/LeListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    goto/16 :goto_4
.end method


# virtual methods
.method adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    const/4 v1, -0x2

    .local v1, "height":I
    :goto_0
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v4, :cond_0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    check-cast v4, Lcom/letv/leui/widget/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/DragSortItemView;->setGravity(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v3

    .local v3, "oldAlpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "alpha":F
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :cond_3
    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void

    .end local v0    # "alpha":F
    .end local v1    # "height":I
    .end local v3    # "oldAlpha":F
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/DragSortHelper;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/letv/leui/widget/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method public cancelDrag()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->destroyFloatView()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->clearPositions()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->adjustAllItems()V

    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    goto :goto_0
.end method

.method dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->drawDivider(ILandroid/graphics/Canvas;)V

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/DragSortHelper;->drawDivider(ILandroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    .local v9, "w":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    .local v8, "h":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    .local v11, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getWidth()I

    move-result v10

    .local v10, "width":I
    if-gez v11, :cond_2

    neg-int v11, v11

    :cond_2
    if-ge v11, v10, :cond_4

    sub-int v0, v10, v11

    int-to-float v0, v0

    int-to-float v2, v10

    div-float v7, v0, v2

    .local v7, "alphaMod":F
    mul-float/2addr v7, v7

    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v7

    float-to-int v5, v0

    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v3, v3, v9, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v3, v9

    int-to-float v4, v8

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .end local v5    # "alpha":I
    .end local v7    # "alphaMod":F
    .end local v8    # "h":I
    .end local v9    # "w":I
    .end local v10    # "width":I
    .end local v11    # "x":I
    :cond_3
    return-void

    .restart local v8    # "h":I
    .restart local v9    # "w":I
    .restart local v10    # "width":I
    .restart local v11    # "x":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    return v0
.end method

.method public isBlockLayoutRequests()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mBlockLayoutRequests:Z

    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    return v0
.end method

.method isDragSortEnabled()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getLeListViewMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isListViewIntercepted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    return v0
.end method

.method layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    :cond_1
    return-void
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .local v3, "rangeStart":I
    move v2, p2

    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    move v3, p2

    move v2, p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/letv/leui/widget/DragSortHelper;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .local v4, "runCount":I
    if-ne v4, v10, :cond_2

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_2

    :cond_1
    return-void

    :cond_2
    if-ge p1, p2, :cond_3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_1

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-static {v8, v11, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    invoke-virtual {v7, v8, v10}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-static {v8, v11, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_1

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-virtual {v7, v8, v10}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/letv/leui/widget/DragSortHelper$DropListener;->drop(II)V

    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->cancelDrag()V

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->stopDrag()Z

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/DragSortHelper;->continueDrag(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->saveTouchCoords(Landroid/view/MotionEvent;)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    if-nez v0, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    :cond_2
    const/4 v1, 0x0

    .local v1, "intercept":Z
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeListView;->onInterceptTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mListViewIntercepted:Z

    const/4 v1, 0x1

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v1, :cond_6

    iput v2, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_1

    :cond_6
    const/4 v3, 0x2

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewOnMeasured:Z

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mWidthMeasureSpec:I

    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    iget-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mIgnoreTouchEvent:Z

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLastCallWasIntercept:Z

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->saveTouchCoords(Landroid/view/MotionEvent;)V

    :cond_3
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->doActionUpOrCancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, -0x1

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LeListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .local v5, "runEnd":[I
    move v3, p1

    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/letv/leui/widget/DragSortHelper;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_0

    aget v7, v6, v1

    if-eq v7, p1, :cond_3

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_2

    aget v7, v5, v1

    if-gt v7, p1, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v6, v1

    invoke-static {v8, v10, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    aget v8, v5, v1

    invoke-static {v8, v10, v3, v2}, Lcom/letv/leui/widget/DragSortHelper;->rotate(IIII)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/letv/leui/widget/LeListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/DragSortHelper$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortHelper$2;-><init>(Lcom/letv/leui/widget/DragSortHelper;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/DragSortHelper$DropListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V

    :cond_0
    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/DragSortHelper$DragListener;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortHelper;->setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V

    :cond_1
    instance-of v0, p1, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V

    :cond_2
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    return-void
.end method

.method setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragListener:Lcom/letv/leui/widget/DragSortHelper$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mScrollProfile:Lcom/letv/leui/widget/DragSortHelper$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    invoke-virtual {p0, p1, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper;->updateScrollStarts()V

    :cond_0
    return-void

    :cond_1
    iput p2, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/letv/leui/widget/DragSortHelper$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DragSortListener;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortHelper;->setDragListener(Lcom/letv/leui/widget/DragSortHelper$DragListener;)V

    return-void
.end method

.method setDropListener(Lcom/letv/leui/widget/DragSortHelper$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$DropListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropListener:Lcom/letv/leui/widget/DragSortHelper$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mCurrFloatAlpha:F

    return-void
.end method

.method setFloatViewManager(Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    return-void
.end method

.method public setLimitedListener(Lcom/letv/leui/widget/DragSortHelper$LimitedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mLimitedListener:Lcom/letv/leui/widget/DragSortHelper$LimitedListener;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortHelper;->mMaxScrollSpeed:F

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatViewManager:Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/DragSortHelper$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortHelper;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 18
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->getHeaderViewsCount()I

    move-result v2

    add-int v16, p1, v2

    .local v16, "pos":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFirstExpPos:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSecondExpPos:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFloatPos:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragState:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    or-int v2, v2, p3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragFlags:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortHelper;->measureFloatView()V

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragStartY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mFloatLoc:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mDragDeltaY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mSrcPos:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .local v17, "srcItem":Landroid/view/View;
    if-eqz v17, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeListView;->requestLayout()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :pswitch_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->onTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :pswitch_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeListView;->onInterceptTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/DragSortHelper;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragScroller:Lcom/letv/leui/widget/DragSortHelper$DragScroller;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/DragSortHelper$DragScroller;->stopScrolling(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper;->mDropAnimator:Lcom/letv/leui/widget/DragSortHelper$DropAnimator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/DragSortHelper$DropAnimator;->start()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper;->dropFloatView()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateScrollStarts()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getPaddingTop()I

    move-result v2

    .local v2, "padTop":I
    iget-object v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mLeListView:Lcom/letv/leui/widget/LeListView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .local v1, "listHeight":I
    int-to-float v0, v1

    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartY:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartY:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragUpScrollHeight:F

    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/DragSortHelper;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/DragSortHelper;->mDragDownScrollHeight:F

    return-void
.end method
