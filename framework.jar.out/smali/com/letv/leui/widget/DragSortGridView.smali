.class public Lcom/letv/leui/widget/DragSortGridView;
.super Landroid/widget/GridView;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;,
        Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;,
        Lcom/letv/leui/widget/DragSortGridView$OnDragListener;,
        Lcom/letv/leui/widget/DragSortGridView$OnDropListener;,
        Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;,
        Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;,
        Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;,
        Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    }
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1

.field private static final MOVE_DURATION:I = 0x12c

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x8


# instance fields
.field private idList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mCellIsMobile:Z

.field private mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

.field private mDownX:I

.field private mDownY:I

.field private mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

.field private mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

.field private mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

.field private mHoverAnimation:Z

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsEditMode:Z

.field private mIsEditModeEnabled:Z

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventX:I

.field private mLastEventY:I

.field private mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMobileItemId:J

.field private mMobileView:Landroid/view/View;

.field private mModificationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/letv/leui/widget/DragSortGridModification;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlapIfSwitchStraightLine:I

.field private mReorderAnimation:Z

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffsetX:I

.field private mTotalOffsetY:I

.field private mUndoSupportEnabled:Z

.field private mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$1;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$6;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$6;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$1;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$6;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$6;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iput v3, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$1;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$6;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$6;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private above(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aboveLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aboveRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/DragSortGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView;->animateReorder(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/DragSortGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverAnimation:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/letv/leui/widget/DragSortGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mReorderAnimation:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/letv/leui/widget/DragSortGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/DragSortGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/DragSortGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1900(Lcom/letv/leui/widget/DragSortGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->updateEnableState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$2100(Lcom/letv/leui/widget/DragSortGridView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->reset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$412(Lcom/letv/leui/widget/DragSortGridView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    return v0
.end method

.method static synthetic access$512(Lcom/letv/leui/widget/DragSortGridView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/DragSortGridView;)J
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    iget-wide v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    return-wide v0
.end method

.method private animateBounds(Landroid/view/View;)V
    .locals 7
    .param p1, "mobileView"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    new-instance v1, Lcom/letv/leui/widget/DragSortGridView$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/DragSortGridView$2;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    .local v1, "sBoundEvaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<Landroid/graphics/Rect;>;"
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "bounds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/letv/leui/widget/DragSortGridView$3;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/DragSortGridView$3;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/letv/leui/widget/DragSortGridView$4;

    invoke-direct {v2, p0, p1}, Lcom/letv/leui/widget/DragSortGridView$4;-><init>(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateReorder(II)V
    .locals 10
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    if-le p2, p1, :cond_0

    const/4 v6, 0x1

    .local v6, "isForward":Z
    :goto_0
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .local v8, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v6, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "pos":I
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-direct {p0, v7}, Lcom/letv/leui/widget/DragSortGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v1    # "view":Landroid/view/View;
    .end local v6    # "isForward":Z
    .end local v7    # "pos":I
    .end local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .restart local v1    # "view":Landroid/view/View;
    .restart local v6    # "isForward":Z
    .restart local v7    # "pos":I
    .restart local v8    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "view":Landroid/view/View;
    .end local v7    # "pos":I
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "pos":I
    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v7, v0, :cond_4

    invoke-direct {p0, v7}, Lcom/letv/leui/widget/DragSortGridView;->getId(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v0

    add-int/2addr v0, v7

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v2

    rem-int/2addr v0, v2

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/DragSortGridView;->createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v1    # "view":Landroid/view/View;
    :cond_4
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .local v9, "resultSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v9, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/letv/leui/widget/DragSortGridView$5;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DragSortGridView$5;-><init>(Lcom/letv/leui/widget/DragSortGridView;)V

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private below(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private belowLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private belowRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createTranslationAnimations(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startX"    # F
    .param p3, "endX"    # F
    .param p4, "startY"    # F
    .param p5, "endY"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "translationX"

    new-array v4, v7, [F

    aput p2, v4, v5

    aput p3, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animX":Landroid/animation/ObjectAnimator;
    const-string v3, "translationY"

    new-array v4, v7, [F

    aput p4, v4, v5

    aput p5, v4, v6

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "animY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .local v0, "animSetXY":Landroid/animation/AnimatorSet;
    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getAdapterInterface()Lcom/letv/leui/widget/DragSortGridAdapterInterface;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/DragSortGridAdapterInterface;

    return-object v0
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .local v2, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .local v3, "left":I
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .local v2, "pos":I
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getColumnCount()I

    move-result v1

    .local v1, "columns":I
    rem-int v0, v2, v1

    .local v0, "column":I
    div-int v3, v2, v1

    .local v3, "row":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method private getColumnCount()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapterInterface()Lcom/letv/leui/widget/DragSortGridAdapterInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/DragSortGridAdapterInterface;->getColumnCount()I

    move-result v0

    return v0
.end method

.method private getId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleCellSwitch()V
    .locals 24

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    move/from16 v23, v0

    sub-int v7, v22, v23

    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    move/from16 v23, v0

    sub-int v5, v22, v23

    .local v5, "deltaX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v8, v22, v7

    .local v8, "deltaYTotal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v6, v22, v5

    .local v6, "deltaXTotal":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    const/16 v16, 0x0

    .local v16, "targetView":Landroid/view/View;
    const/16 v17, 0x0

    .local v17, "vX":F
    const/16 v18, 0x0

    .local v18, "vY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v11

    .local v11, "mobileColumnRowPair":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .local v10, "id":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v19

    .local v19, "view":Landroid/view/View;
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getColumnAndRowForView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v14

    .local v14, "targetColumnRowPair":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->aboveRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->aboveLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_8

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->belowRight(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v8, v0, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->belowLeft(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v8, v0, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_8

    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->above(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mOverlapIfSwitchStraightLine:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    if-lt v8, v0, :cond_8

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->below(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mOverlapIfSwitchStraightLine:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    if-gt v8, v0, :cond_8

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->right(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mOverlapIfSwitchStraightLine:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/letv/leui/widget/DragSortGridView;->left(Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mOverlapIfSwitchStraightLine:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    if-ge v6, v0, :cond_0

    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/DragSortGridUtils;->getViewX(Landroid/view/View;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/letv/leui/widget/DragSortGridUtils;->getViewX(Landroid/view/View;)F

    move-result v23

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .local v20, "xDiff":F
    invoke-static/range {v19 .. v19}, Lcom/letv/leui/widget/DragSortGridUtils;->getViewY(Landroid/view/View;)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/letv/leui/widget/DragSortGridUtils;->getViewY(Landroid/view/View;)F

    move-result v23

    sub-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .local v21, "yDiff":F
    cmpl-float v22, v20, v17

    if-ltz v22, :cond_0

    cmpl-float v22, v21, v18

    if-ltz v22, :cond_0

    move/from16 v17, v20

    move/from16 v18, v21

    move-object/from16 v16, v19

    goto/16 :goto_0

    .end local v10    # "id":Ljava/lang/Long;
    .end local v14    # "targetColumnRowPair":Landroid/graphics/Point;
    .end local v19    # "view":Landroid/view/View;
    .end local v20    # "xDiff":F
    .end local v21    # "yDiff":F
    :cond_9
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getPositionForView(Landroid/view/View;)I

    move-result v12

    .local v12, "originalPosition":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getPositionForView(Landroid/view/View;)I

    move-result v15

    .local v15, "targetPosition":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapterInterface()Lcom/letv/leui/widget/DragSortGridAdapterInterface;

    move-result-object v4

    .local v4, "adapter":Lcom/letv/leui/widget/DragSortGridAdapterInterface;
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v15, v0, :cond_a

    invoke-interface {v4, v12}, Lcom/letv/leui/widget/DragSortGridAdapterInterface;->canReorder(I)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v4, v15}, Lcom/letv/leui/widget/DragSortGridAdapterInterface;->canReorder(I)Z

    move-result v22

    if-nez v22, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V

    .end local v4    # "adapter":Lcom/letv/leui/widget/DragSortGridAdapterInterface;
    .end local v12    # "originalPosition":I
    .end local v15    # "targetPosition":I
    :cond_b
    :goto_1
    return-void

    .restart local v4    # "adapter":Lcom/letv/leui/widget/DragSortGridAdapterInterface;
    .restart local v12    # "originalPosition":I
    .restart local v15    # "targetPosition":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/letv/leui/widget/DragSortGridView;->reorderElements(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    new-instance v22, Lcom/letv/leui/widget/DragSortGridModification;

    invoke-direct/range {v22 .. v22}, Lcom/letv/leui/widget/DragSortGridModification;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v15}, Lcom/letv/leui/widget/DragSortGridModification;->addTransition(II)V

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/DragSortGridView;->isPostHoneycomb()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-static {}, Lcom/letv/leui/widget/DragSortGridView;->isPreLollipop()Z

    move-result v22

    if-eqz v22, :cond_f

    new-instance v13, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v7}, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;-><init>(Lcom/letv/leui/widget/DragSortGridView;II)V

    .local v13, "switchCellAnimator":Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V

    invoke-interface {v13, v12, v15}, Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;->animateSwitchCell(II)V

    goto :goto_1

    .end local v13    # "switchCellAnimator":Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    :cond_f
    invoke-static {}, Lcom/letv/leui/widget/DragSortGridView;->isPreLollipop()Z

    move-result v22

    if-eqz v22, :cond_10

    new-instance v13, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v7}, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;-><init>(Lcom/letv/leui/widget/DragSortGridView;II)V

    .restart local v13    # "switchCellAnimator":Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    goto :goto_2

    .end local v13    # "switchCellAnimator":Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    :cond_10
    new-instance v13, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v7}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;-><init>(Lcom/letv/leui/widget/DragSortGridView;II)V

    .restart local v13    # "switchCellAnimator":Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;
    goto :goto_2
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z

    return-void
.end method

.method private isPostHoneycomb()Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreLollipop()Z
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private left(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reorderElements(II)V
    .locals 1
    .param p1, "originalPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView$OnDragListener;->onDragPositionsChanged(II)V

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapterInterface()Lcom/letv/leui/widget/DragSortGridAdapterInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/DragSortGridAdapterInterface;->reorderItems(II)V

    return-void
.end method

.method private reset(Landroid/view/View;)V
    .locals 5
    .param p1, "mobileView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->invalidate()V

    return-void
.end method

.method private right(Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "targetColumnRowPair"    # Landroid/graphics/Point;
    .param p2, "mobileColumnRowPair"    # Landroid/graphics/Point;

    .prologue
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startDragAtPosition(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    iput v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v0, p1, v2

    .local v0, "itemNum":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "selectedView":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    iget-wide v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-interface {v2, v1, p1, v4, v5}, Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;->onPreSelectedItemBitmapCreation(Landroid/view/View;IJ)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    iget-wide v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-interface {v2, v1, p1, v4, v5}, Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;->onPostSelectedItemBitmapCreation(Landroid/view/View;IJ)V

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->isPostHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iget-wide v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->updateNeighborViewsForId(J)V

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    invoke-interface {v2, p1}, Lcom/letv/leui/widget/DragSortGridView$OnDragListener;->onDragStarted(I)V

    :cond_3
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-wide v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->reset(Landroid/view/View;)V

    :cond_0
    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    return-void
.end method

.method private touchEventsEnded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-wide v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .local v0, "mobileView":Landroid/view/View;
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_3

    :cond_0
    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollState:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsWaitingForScrollFinish:Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->animateBounds(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->invalidate()V

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->reset(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private undoModification(Lcom/letv/leui/widget/DragSortGridModification;)V
    .locals 4
    .param p1, "modification"    # Lcom/letv/leui/widget/DragSortGridModification;

    .prologue
    invoke-virtual {p1}, Lcom/letv/leui/widget/DragSortGridModification;->getTransitions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .local v1, "transition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/letv/leui/widget/DragSortGridView;->reorderElements(II)V

    goto :goto_0

    .end local v1    # "transition":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private updateEnableState()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverAnimation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mReorderAnimation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNeighborViewsForId(J)V
    .locals 7
    .param p1, "itemId"    # J

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView;->getPositionForID(J)I

    move-result v0

    .local v0, "draggedPos":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "pos":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getLastVisiblePosition()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapterInterface()Lcom/letv/leui/widget/DragSortGridAdapterInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/letv/leui/widget/DragSortGridAdapterInterface;->canReorder(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView;->idList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/DragSortGridView;->getId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearModificationHistory()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getPositionForID(J)I
    .locals 3
    .param p1, "itemId"    # J

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 9
    .param p1, "itemId"    # J

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/DragSortGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "v":Landroid/view/View;
    add-int v3, v1, v2

    .local v3, "position":I
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .local v4, "id":J
    cmp-long v7, v4, p1

    if-nez v7, :cond_0

    .end local v3    # "position":I
    .end local v4    # "id":J
    .end local v6    # "v":Landroid/view/View;
    :goto_1
    return-object v6

    .restart local v3    # "position":I
    .restart local v4    # "id":J
    .restart local v6    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "position":I
    .end local v4    # "id":J
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->computeVerticalScrollOffset()I

    move-result v4

    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getHeight()I

    move-result v1

    .local v1, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->computeVerticalScrollExtent()I

    move-result v0

    .local v0, "extent":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->computeVerticalScrollRange()I

    move-result v5

    .local v5, "range":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .local v3, "hoverViewTop":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .local v2, "hoverHeight":I
    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    iget v8, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/letv/leui/widget/DragSortGridView;->smoothScrollBy(II)V

    :goto_0
    return v6

    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    iget v8, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/letv/leui/widget/DragSortGridView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public hasModificationHistory()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x41000000    # 8.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050154

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mOverlapIfSwitchStraightLine:I

    return-void
.end method

.method public isEditMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    return v0
.end method

.method public isEditModeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    return v0
.end method

.method public isUndoSupportEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    iget-boolean v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->layoutChildren()V

    iget v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    iget v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/DragSortGridView;->pointToPosition(II)I

    move-result v4

    .local v4, "position":I
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/DragSortGridView;->startDragAtPosition(I)V

    goto :goto_0

    .end local v4    # "position":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :pswitch_2
    iget v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .local v3, "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    iget v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventY:I

    iget v7, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownY:I

    sub-int v1, v6, v7

    .local v1, "deltaY":I
    iget v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mLastEventX:I

    iget v7, p0, Lcom/letv/leui/widget/DragSortGridView;->mDownX:I

    sub-int v0, v6, v7

    .local v0, "deltaX":I
    iget-boolean v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mCellIsMobile:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView;->invalidate()V

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->handleCellSwitch()V

    iput-boolean v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsMobileScrolling:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->handleMobileCellScroll()V

    goto/16 :goto_1

    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->touchEventsEnded()V

    iget-boolean v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    invoke-virtual {v5}, Lcom/letv/leui/widget/DragSortGridModification;->getTransitions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    iget-object v6, p0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/letv/leui/widget/DragSortGridModification;

    invoke-direct {v5}, Lcom/letv/leui/widget/DragSortGridModification;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mCurrentModification:Lcom/letv/leui/widget/DragSortGridModification;

    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/DragSortGridView$OnDropListener;->onActionDrop()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->touchEventsCancelled()V

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/DragSortGridView$OnDropListener;->onActionDrop()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .local v2, "pointerId":I
    iget v5, p0, Lcom/letv/leui/widget/DragSortGridView;->mActivePointerId:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView;->touchEventsEnded()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setEditModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    return-void
.end method

.method public setOnDragListener(Lcom/letv/leui/widget/DragSortGridView$OnDragListener;)V
    .locals 0
    .param p1, "dragListener"    # Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mDragListener:Lcom/letv/leui/widget/DragSortGridView$OnDragListener;

    return-void
.end method

.method public setOnDropListener(Lcom/letv/leui/widget/DragSortGridView$OnDropListener;)V
    .locals 0
    .param p1, "dropListener"    # Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mDropListener:Lcom/letv/leui/widget/DragSortGridView$OnDropListener;

    return-void
.end method

.method public setOnEditModeChangeListener(Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;)V
    .locals 0
    .param p1, "editModeChangeListener"    # Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mUserItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mLocalItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "scrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mUserScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setOnSelectedItemBitmapCreationListener(Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;)V
    .locals 0
    .param p1, "selectedItemBitmapCreationListener"    # Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mSelectedItemBitmapCreationListener:Lcom/letv/leui/widget/DragSortGridView$OnSelectedItemBitmapCreationListener;

    return-void
.end method

.method public setUndoSupportEnabled(Z)V
    .locals 1
    .param p1, "undoSupportEnabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    goto :goto_0
.end method

.method public startDragSort()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->startDragSort(I)V

    return-void
.end method

.method public startDragSort(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditModeEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/DragSortGridView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DragSortGridView;->startDragAtPosition(I)V

    :cond_2
    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;->onEditModeChanged(Z)V

    goto :goto_0
.end method

.method public stopDragSort()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mIsEditMode:Z

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/DragSortGridView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView;->mEditModeChangeListener:Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/DragSortGridView$OnEditModeChangeListener;->onEditModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public undoAllModifications()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/DragSortGridModification;

    .local v0, "modification":Lcom/letv/leui/widget/DragSortGridModification;
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->undoModification(Lcom/letv/leui/widget/DragSortGridModification;)V

    goto :goto_0

    .end local v0    # "modification":Lcom/letv/leui/widget/DragSortGridModification;
    :cond_0
    return-void
.end method

.method public undoLastModification()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mUndoSupportEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView;->mModificationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/DragSortGridModification;

    .local v0, "modification":Lcom/letv/leui/widget/DragSortGridModification;
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/DragSortGridView;->undoModification(Lcom/letv/leui/widget/DragSortGridModification;)V

    .end local v0    # "modification":Lcom/letv/leui/widget/DragSortGridModification;
    :cond_0
    return-void
.end method
