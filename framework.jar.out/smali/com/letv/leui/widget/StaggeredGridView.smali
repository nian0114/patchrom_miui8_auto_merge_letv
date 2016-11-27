.class public Lcom/letv/leui/widget/StaggeredGridView;
.super Landroid/view/ViewGroup;
.source "StaggeredGridView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;,
        Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;,
        Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;,
        Lcom/letv/leui/widget/StaggeredGridView$DragItemFilter;,
        Lcom/letv/leui/widget/StaggeredGridView$PerformClick;,
        Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;,
        Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;,
        Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;,
        Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;,
        Lcom/letv/leui/widget/StaggeredGridView$SavedState;,
        Lcom/letv/leui/widget/StaggeredGridView$ColMap;,
        Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;,
        Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;,
        Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;,
        Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;,
        Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;,
        Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;,
        Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field private static final COLUMN_COUNT_AUTO:I = -0x1

.field private static final DEBUG:Z = false

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StaggeredGridView"

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x5

.field private static final TOUCH_MODE_DOWN:I = 0x3

.field private static final TOUCH_MODE_DRAGGING:I = 0x1

.field private static final TOUCH_MODE_FLINGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I = 0x0

.field static final TOUCH_MODE_OVERSCROLL:I = 0x7

.field private static final TOUCH_MODE_REST:I = 0x6

.field private static final TOUCH_MODE_TAP:I = 0x4

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBeginClick:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field private final mChildRectsForAnimation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;",
            ">;"
        }
    .end annotation
.end field

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mColCount:I

.field private mColCountSetting:I

.field private mColMappings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mColWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDataChanged:Z

.field private mDeleteItemId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawSelectorOnTop:Z

.field private mEnableAnimation:Z

.field private mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOuting:Z

.field private mFastChildLayout:Z

.field private mFirstAdapterId:J

.field private mFirstPosition:I

.field private mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsChildViewEnabled:Z

.field private mItemBottoms:[I

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemTops:[I

.field private mLastOverScrollX:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLayoutAnim:Z

.field private final mLayoutRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxOverScrollDistance:I

.field private mMaximumVelocity:I

.field private mMinColWidth:I

.field private mMotionPosition:I

.field mMotionX:I

.field mMotionY:I

.field private mMoveBy:I

.field mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

.field private mNumCols:I

.field private final mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

.field mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

.field private mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

.field private mPopulating:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field private final mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

.field private mRestoreOffsets:[I

.field private final mScroller:Landroid/widget/OverScroller;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSpecificTop:I

.field private mSync:Z

.field private mSyncPosition:I

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderY:F

.field private mTouchSlop:I

.field private mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

.field private mUpdateing:Z

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/StaggeredGridView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x10304c3

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/StaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    iput v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    iput v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    const/16 v4, 0x8

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    iput v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    iput v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->StaggeredGridView:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .local v3, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaximumVelocity:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFlingVelocity:I

    new-instance v4, Landroid/widget/OverScroller;

    invoke-direct {v4, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/16 v4, 0x7f

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setClipToPadding(Z)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->useDefaultSelector()V

    :cond_1
    const v4, 0x10a004f

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .local v1, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iput-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$1;

    invoke-direct {v4, p0}, Lcom/letv/leui/widget/StaggeredGridView$1;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/StaggeredGridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearChoices()V

    return-void
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1800(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/letv/leui/widget/StaggeredGridView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method static synthetic access$2302(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return p1
.end method

.method static synthetic access$2402(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I

    return p1
.end method

.method static synthetic access$2500(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    return v0
.end method

.method static synthetic access$2600(Lcom/letv/leui/widget/StaggeredGridView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleAllViews()V

    return-void
.end method

.method static synthetic access$2800(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method static synthetic access$2900(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    return-object v0
.end method

.method static synthetic access$3100(Lcom/letv/leui/widget/StaggeredGridView;)J
    .locals 2
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstAdapterId:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/letv/leui/widget/StaggeredGridView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object v0
.end method

.method static synthetic access$3202(Lcom/letv/leui/widget/StaggeredGridView;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    return-object p1
.end method

.method static synthetic access$3500(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    return v0
.end method

.method static synthetic access$3800(Lcom/letv/leui/widget/StaggeredGridView;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;)Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/StaggeredGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/letv/leui/widget/StaggeredGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$702(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    return p1
.end method

.method static synthetic access$802(Lcom/letv/leui/widget/StaggeredGridView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    return p1
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/StaggeredGridView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    return v0
.end method

.method private clearAllState()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->resetStateForGridTop()V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->clear()V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    return-void
.end method

.method private clearChoices()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private getFadeOutAnimationsForStaleViews()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v4, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-boolean v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7, v4}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContext:Landroid/content/Context;

    const v8, 0x10a004d

    invoke-static {v7, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    const v8, 0x3f8ccccd    # 1.1f

    invoke-direct {v7, v8}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    new-instance v7, Lcom/letv/leui/widget/StaggeredGridView$5;

    invoke-direct {v7, p0, v6}, Lcom/letv/leui/widget/StaggeredGridView$5;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "alphAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v7, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x32

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "alphAnimator":Landroid/animation/ObjectAnimator;
    .end local v1    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_0
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto :goto_1

    .end local v4    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSelectedItemPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    return v0
.end method

.method private getUpdateDataAnimation()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v10

    .local v10, "size":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "locaList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-lez v10, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    if-lez v2, :cond_2

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .local v14, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v9, v16, v3

    .local v9, "position":I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v8, "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    iget-wide v4, v8, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;

    .local v15, "viewRectPair":Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;
    iget-object v7, v15, Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;->rect:Landroid/graphics/Rect;

    .local v7, "localRect":Landroid/graphics/Rect;
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .local v12, "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .local v13, "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .local v11, "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChildRectsForAnimation:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v7    # "localRect":Landroid/graphics/Rect;
    .end local v15    # "viewRectPair":Lcom/letv/leui/widget/StaggeredGridView$ViewRectPair;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    div-int/lit8 v16, v2, 0x2

    move/from16 v0, v16

    if-ge v3, v0, :cond_1

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    sget-object v16, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .restart local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/view/View;->getTranslationY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .restart local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .restart local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v16, 0x15e

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    mul-int/lit8 v16, v3, 0x28

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x96

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v11    # "translationAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "translationXHolder":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationYHolder":Landroid/animation/PropertyValuesHolder;
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    rsub-int/lit8 v16, v16, 0x0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v16

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2

    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "id":J
    .end local v8    # "params":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v9    # "position":I
    .end local v14    # "view":Landroid/view/View;
    :cond_2
    return-object v6
.end method

.method private populate(Z)V
    .locals 6
    .param p1, "clearData"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v2, v3

    .local v0, "colCount":I
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .end local v0    # "colCount":I
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .restart local v0    # "colCount":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_5

    :cond_4
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViewsInLayout()V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    array-length v2, v2

    if-ne v2, v0, :cond_6

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/letv/leui/widget/StaggeredGridView;->fillDown(II)I

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/letv/leui/widget/StaggeredGridView;->fillUp(II)I

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSpecificTop:I

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/StaggeredGridView;->setPositionAndTop(II)V

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v2, :cond_7

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getUpdateDataAnimation()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/letv/leui/widget/StaggeredGridView$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/StaggeredGridView$3;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFadeOutAnimationsForStaleViews()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/letv/leui/widget/StaggeredGridView$4;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/StaggeredGridView$4;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSyncPosition:I

    :cond_8
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    goto/16 :goto_2
.end method

.method private positionSelector(IIII)V
    .locals 5
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private recycleAllViews()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    goto :goto_1

    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViewsInLayout()V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->removeAllViews()V

    goto :goto_2
.end method

.method private recycleOffscreenViews()V
    .locals 21

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v13

    .local v13, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    neg-int v7, v0

    .local v7, "clearAbove":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v18, v0

    add-int v8, v13, v18

    .local v8, "clearBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    if-gt v0, v8, :cond_5

    .end local v5    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v18

    move/from16 v0, v18

    if-lt v0, v7, :cond_7

    .end local v5    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    if-lez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const v19, 0x7fffffff

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([II)V

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v15, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .local v17, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .local v16, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v16, :cond_2

    new-instance v16, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v14

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    iget-wide v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    :cond_2
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v19, v0

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int v11, v18, v19

    .local v11, "colEnd":I
    iget v9, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .local v9, "col":I
    :goto_3
    if-ge v9, v11, :cond_9

    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v18

    sub-int v12, v17, v18

    .local v12, "colTop":I
    iget v0, v15, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v18, v0

    sub-int v18, v9, v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v18

    add-int v10, v4, v18

    .local v10, "colBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-ge v12, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aput v12, v18, v9

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    aput v10, v18, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v4    # "bottom":I
    .end local v6    # "childCount":I
    .end local v9    # "col":I
    .end local v10    # "colBottom":I
    .end local v11    # "colEnd":I
    .end local v12    # "colTop":I
    .end local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewsInLayout(II)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewsInLayout(II)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    goto/16 :goto_1

    :cond_8
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    goto :goto_5

    .restart local v4    # "bottom":I
    .restart local v6    # "childCount":I
    .restart local v9    # "col":I
    .restart local v11    # "colEnd":I
    .restart local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .restart local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .restart local v17    # "top":I
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .end local v4    # "bottom":I
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "col":I
    .end local v11    # "colEnd":I
    .end local v15    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v16    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v17    # "top":I
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "col":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v19, v18, v9

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .end local v9    # "col":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v17

    .restart local v17    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    .end local v17    # "top":I
    :cond_d
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    return-void
.end method

.method private resetStateForGridTop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v0, "colCount":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v1

    .local v1, "top":I
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    if-eqz v2, :cond_2

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    :cond_2
    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    return-void
.end method

.method private trackMotionScroll(IZ)Z
    .locals 22
    .param p1, "deltaY"    # I
    .param p2, "allowOverScroll"    # Z

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    .local v6, "childCount":I
    if-nez v6, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v21

    sub-int v10, v20, v21

    .local v10, "height":I
    if-gez p1, :cond_3

    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .local v3, "allowOverhang":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .local v9, "firstPosition":I
    const v14, 0x7fffffff

    .local v14, "mostTop":I
    const/high16 v13, -0x80000000

    .local v13, "mostBottom":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-ge v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v14, v20, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-le v0, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v13, v20, v11

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v3    # "allowOverhang":I
    .end local v9    # "firstPosition":I
    .end local v11    # "i":I
    .end local v13    # "mostBottom":I
    .end local v14    # "mostTop":I
    :cond_3
    add-int/lit8 v20, v10, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .restart local v3    # "allowOverhang":I
    .restart local v9    # "firstPosition":I
    .restart local v11    # "i":I
    .restart local v13    # "mostBottom":I
    .restart local v14    # "mostTop":I
    :cond_4
    const/4 v12, 0x0

    .local v12, "isAtEdge":Z
    const/4 v8, 0x0

    .local v8, "dontRecycle":Z
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v18

    .local v18, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v17

    .local v17, "paddingBottom":I
    if-nez v9, :cond_a

    move/from16 v0, v18

    if-lt v14, v0, :cond_a

    if-ltz p1, :cond_a

    const/4 v4, 0x1

    .local v4, "cannotScrollDown":Z
    :goto_3
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-gt v13, v0, :cond_b

    if-gtz p1, :cond_b

    const/4 v5, 0x1

    .local v5, "cannotScrollUp":Z
    :goto_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    :cond_5
    const/4 v8, 0x1

    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    if-lez p1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/letv/leui/widget/StaggeredGridView;->fillUp(II)I

    move-result v16

    .local v16, "overhang":I
    const/16 v19, 0x1

    .local v19, "up":Z
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/letv/leui/widget/StaggeredGridView;->offsetChildren(I)V

    if-nez v8, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleOffscreenViews()V

    :cond_7
    move/from16 v15, p1

    .local v15, "movedBy":I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v6

    const v14, 0x7fffffff

    const/high16 v13, -0x80000000

    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-ge v0, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v20, v0

    aget v14, v20, v11

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v20, v20, v11

    move/from16 v0, v20

    if-le v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v20, v0

    aget v13, v20, v11

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v4    # "cannotScrollDown":Z
    .end local v5    # "cannotScrollUp":Z
    .end local v15    # "movedBy":I
    .end local v16    # "overhang":I
    .end local v19    # "up":Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .restart local v4    # "cannotScrollDown":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .restart local v5    # "cannotScrollUp":Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/letv/leui/widget/StaggeredGridView;->fillDown(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .restart local v16    # "overhang":I
    const/16 v19, 0x0

    .restart local v19    # "up":Z
    goto :goto_5

    .restart local v15    # "movedBy":I
    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v20, :cond_10

    move/from16 v0, v18

    if-le v14, v0, :cond_10

    sub-int v20, v18, v14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v12, 0x1

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->awakenScrollBars(IZ)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .local v7, "childIndex":I
    if-ltz v7, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_f

    const/16 v20, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .end local v7    # "childIndex":I
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iput v15, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMoveBy:I

    goto/16 :goto_0

    :cond_10
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-ge v13, v0, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v0, v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v20, v20, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_11
    add-int v20, v9, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    move/from16 v0, v20

    if-ge v13, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v6, :cond_e

    sub-int v20, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v21

    sub-int v21, v21, v17

    sub-int v21, v21, v18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    sub-int v20, v18, v14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v20, v20, v13

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v12, 0x1

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_8
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public beginFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .local v2, "y":I
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    if-ne v3, v7, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    sub-int v0, v2, v3

    .local v0, "dy":I
    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    invoke-direct {p0, v0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->postInvalidate()V

    .end local v0    # "dy":I
    .end local v2    # "y":I
    :cond_1
    :goto_0
    return-void

    .restart local v2    # "y":I
    :cond_2
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .restart local v0    # "dy":I
    int-to-float v3, v2

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    invoke-direct {p0, v0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v1

    .local v1, "isAtEdge":Z
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6, v6, v6}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->postInvalidate()V

    goto :goto_0

    .end local v1    # "isAtEdge":Z
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "lastPos":I
    const-wide/16 v12, -0x1

    .local v12, "lastPosId":J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-ge v5, v3, :cond_1

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .local v10, "end":I
    const/4 v11, 0x0

    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_4

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .end local v14    # "searchId":J
    :cond_2
    if-nez v11, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_6
    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/letv/leui/widget/StaggeredGridView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deleteItemId(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "id":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDeleteItemId:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    .local v0, "drawSelectorOnTop":Z
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    return-void
.end method

.method public enableAnimation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    return-void
.end method

.method public endFastChildLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    return-void
.end method

.method final fillDown(II)I
    .locals 36
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v26

    .local v26, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v27

    .local v27, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v20, v0

    .local v20, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v34

    sub-int v34, v34, v26

    sub-int v34, v34, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v20

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v11, v34, v35

    .local v11, "colWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingBottom()I

    move-result v35

    sub-int v13, v34, v35

    .local v13, "gridBottom":I
    add-int v12, v13, p2

    .local v12, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    .local v25, "nextCol":I
    move/from16 v28, p1

    .local v28, "position":I
    :cond_0
    :goto_0
    if-ltz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v25

    move/from16 v0, v34

    if-ge v0, v12, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    move/from16 v34, v0

    move/from16 v0, v28

    move/from16 v1, v34

    if-ge v0, v1, :cond_12

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v24, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    if-nez v24, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    const/16 v34, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v30

    .local v30, "span":I
    mul-int v34, v11, v30

    add-int/lit8 v35, v30, -0x1

    mul-int v35, v35, v20

    add-int v32, v34, v35

    .local v32, "widthSize":I
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .local v33, "widthSpec":I
    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getNextRecordDown(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    move-result-object v29

    .local v29, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :goto_2
    const/16 v17, 0x0

    .local v17, "invalidateAfter":Z
    if-nez v29, :cond_a

    new-instance v29, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .local v18, "id":J
    move-wide/from16 v0, v18

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    move-wide/from16 v0, v18

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .end local v18    # "id":J
    :cond_4
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_b

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .local v14, "heightSpec":I
    :goto_4
    move/from16 v0, v33

    invoke-virtual {v5, v0, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    if-nez v17, :cond_5

    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v7, v0, :cond_6

    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    if-lez v34, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    :cond_6
    move-object/from16 v0, v29

    iput v7, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v22, v34, v25

    .local v22, "lowest":I
    add-int/lit8 v15, v25, 0x1

    .local v15, "i":I
    :goto_5
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v4, v34, v15

    .local v4, "bottom":I
    move/from16 v0, v22

    if-le v4, v0, :cond_7

    move/from16 v22, v4

    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .end local v4    # "bottom":I
    .end local v7    # "childHeight":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v22    # "lowest":I
    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .restart local v30    # "span":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .restart local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_2

    .restart local v17    # "invalidateAfter":Z
    :cond_a
    move-object/from16 v0, v29

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v0, v25

    move-object/from16 v1, v29

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, v24

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .restart local v14    # "heightSpec":I
    goto/16 :goto_4

    .restart local v7    # "childHeight":I
    .restart local v15    # "i":I
    .restart local v22    # "lowest":I
    :cond_c
    move/from16 v31, v22

    .end local v15    # "i":I
    .end local v22    # "lowest":I
    .local v31, "startFrom":I
    :goto_6
    add-int v10, v31, v20

    .local v10, "childTop":I
    add-int v6, v10, v7

    .local v6, "childBottom":I
    add-int v34, v11, v20

    mul-int v34, v34, v25

    add-int v8, v26, v34

    .local v8, "childLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v9, v8, v34

    .local v9, "childRight":I
    invoke-virtual {v5, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v6    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31    # "startFrom":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v31, v34, v25

    .restart local v31    # "startFrom":I
    goto :goto_6

    .restart local v6    # "childBottom":I
    .restart local v8    # "childLeft":I
    .restart local v9    # "childRight":I
    .restart local v10    # "childTop":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_10
    move/from16 v15, v25

    .restart local v15    # "i":I
    :goto_8
    add-int v34, v25, v30

    move/from16 v0, v34

    if-ge v15, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    sub-int v35, v15, v25

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginBelow(I)I

    move-result v35

    add-int v35, v35, v6

    aput v35, v34, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnDown()I

    move-result v25

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childBottom":I
    .end local v7    # "childHeight":I
    .end local v8    # "childLeft":I
    .end local v9    # "childRight":I
    .end local v10    # "childTop":I
    .end local v14    # "heightSpec":I
    .end local v15    # "i":I
    .end local v17    # "invalidateAfter":Z
    .end local v24    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v29    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v30    # "span":I
    .end local v31    # "startFrom":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_12
    const/16 v23, 0x0

    .local v23, "lowestView":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v34, v34, v15

    move/from16 v0, v34

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v34, v0

    aget v23, v34, v15

    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_14
    sub-int v34, v23, v13

    return v34
.end method

.method final fillUp(II)I
    .locals 36
    .param p1, "fromPosition"    # I
    .param p2, "overhang"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v24

    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v25

    .local v25, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v20, v0

    .local v20, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v34

    sub-int v34, v34, v24

    sub-int v34, v34, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    add-int/lit8 v35, v35, -0x1

    mul-int v35, v35, v20

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    div-int v10, v34, v35

    .local v10, "colWidth":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingTop()I

    move-result v12

    .local v12, "gridTop":I
    sub-int v11, v12, p2

    .local v11, "fillTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v23

    .local v23, "nextCol":I
    move/from16 v26, p1

    .local v26, "position":I
    move/from16 v27, v26

    .end local v26    # "position":I
    .local v27, "position":I
    :cond_0
    :goto_0
    if-ltz v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v34, v34, v23

    move/from16 v0, v34

    if-le v0, v11, :cond_11

    if-ltz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1

    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    move/from16 v23, v16

    .end local v16    # "i":I
    :cond_1
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v22, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    if-nez v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v29

    .local v29, "span":I
    mul-int v34, v10, v29

    add-int/lit8 v35, v29, -0x1

    mul-int v35, v35, v20

    add-int v32, v34, v35

    .local v32, "widthSize":I
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v33

    .local v33, "widthSpec":I
    const/16 v34, 0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getNextRecordUp(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    move-result-object v28

    .local v28, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :goto_3
    const/16 v17, 0x0

    .local v17, "invalidateBefore":Z
    if-nez v28, :cond_c

    new-instance v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    move/from16 v34, v0

    if-eqz v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .local v18, "id":J
    move-wide/from16 v0, v18

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    move-wide/from16 v0, v18

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .end local v18    # "id":J
    :cond_5
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/16 v35, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_d

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .local v13, "heightSpec":I
    :goto_5
    move/from16 v0, v33

    invoke-virtual {v4, v0, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .local v6, "childHeight":I
    if-nez v17, :cond_6

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v6, v0, :cond_7

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v34, v0

    if-lez v34, :cond_7

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    :cond_7
    move-object/from16 v0, v28

    iput v6, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v21, v34, v23

    .local v21, "itemTop":I
    const/16 v34, 0x1

    move/from16 v0, v29

    move/from16 v1, v34

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v14, v34, v23

    .local v14, "highest":I
    add-int/lit8 v16, v23, 0x1

    .restart local v16    # "i":I
    :goto_6
    add-int v34, v23, v29

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v31, v34, v16

    .local v31, "top":I
    move/from16 v0, v31

    if-ge v0, v14, :cond_8

    move/from16 v14, v31

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childHeight":I
    .end local v13    # "heightSpec":I
    .end local v14    # "highest":I
    .end local v17    # "invalidateBefore":Z
    .end local v21    # "itemTop":I
    .end local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v31    # "top":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .end local v16    # "i":I
    .restart local v4    # "child":Landroid/view/View;
    .restart local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :cond_a
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .restart local v29    # "span":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthSpec":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    goto/16 :goto_3

    .restart local v17    # "invalidateBefore":Z
    :cond_c
    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v34, v0

    move/from16 v0, v29

    move/from16 v1, v34

    if-eq v0, v1, :cond_4

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    const/16 v17, 0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, v22

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v34, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v34 .. v35}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .restart local v13    # "heightSpec":I
    goto/16 :goto_5

    .restart local v6    # "childHeight":I
    .restart local v14    # "highest":I
    .restart local v16    # "i":I
    .restart local v21    # "itemTop":I
    :cond_e
    move/from16 v30, v14

    .end local v14    # "highest":I
    .end local v16    # "i":I
    .local v30, "startFrom":I
    :goto_7
    move/from16 v5, v30

    .local v5, "childBottom":I
    sub-int v9, v5, v6

    .local v9, "childTop":I
    add-int v34, v10, v20

    mul-int v34, v34, v23

    add-int v7, v24, v34

    .local v7, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v8, v7, v34

    .local v8, "childRight":I
    invoke-virtual {v4, v7, v9, v8, v5}, Landroid/view/View;->layout(IIII)V

    move/from16 v16, v23

    .restart local v16    # "i":I
    :goto_8
    add-int v34, v23, v29

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    sub-int v35, v16, v23

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->getMarginAbove(I)I

    move-result v35

    sub-int v35, v9, v35

    sub-int v35, v35, v20

    aput v35, v34, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v16    # "i":I
    .end local v30    # "startFrom":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v30, v34, v23

    .restart local v30    # "startFrom":I
    goto :goto_7

    .restart local v5    # "childBottom":I
    .restart local v7    # "childLeft":I
    .restart local v8    # "childRight":I
    .restart local v9    # "childTop":I
    .restart local v16    # "i":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getNextColumnUp()I

    move-result v23

    add-int/lit8 v26, v27, -0x1

    .end local v27    # "position":I
    .restart local v26    # "position":I
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v27, v26

    .end local v26    # "position":I
    .restart local v27    # "position":I
    goto/16 :goto_0

    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childBottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .end local v13    # "heightSpec":I
    .end local v16    # "i":I
    .end local v17    # "invalidateBefore":Z
    .end local v21    # "itemTop":I
    .end local v22    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v30    # "startFrom":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthSpec":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHeight()I

    move-result v15

    .local v15, "highestView":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v34, v34, v16

    move/from16 v0, v34

    if-ge v0, v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v34, v0

    aget v15, v34, v16

    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    :cond_13
    sub-int v34, v12, v15

    return v34
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    :cond_1
    return-object v3

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .local v0, "count":I
    new-array v3, v0, [J

    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final getNextColumnDown()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .local v3, "result":I
    const v4, 0x7fffffff

    .local v4, "topMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v0, v5, v2

    .local v0, "bottom":I
    if-ge v0, v4, :cond_0

    move v4, v0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bottom":I
    :cond_1
    return v3
.end method

.method final getNextColumnUp()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .local v3, "result":I
    const/high16 v0, -0x80000000

    .local v0, "bottomMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v1, "colCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v4, v5, v2

    .local v4, "top":I
    if-le v4, v0, :cond_0

    move v0, v4

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v4    # "top":I
    :cond_1
    return v3
.end method

.method final getNextRecordDown(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .local v4, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v6, -0x1

    .local v6, "targetCol":I
    const v7, 0x7fffffff

    .local v7, "topMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v1, "colCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v8, v1, p2

    if-gt v2, v8, :cond_5

    const/high16 v0, -0x80000000

    .local v0, "bottom":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v8, v3

    .local v5, "singleBottom":I
    if-le v5, v0, :cond_1

    move v0, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "bottom":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleBottom":I
    .end local v6    # "targetCol":I
    .end local v7    # "topMost":I
    :cond_2
    iget v8, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .restart local v0    # "bottom":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "topMost":I
    :cond_3
    if-ge v0, v7, :cond_4

    move v7, v0

    move v6, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v3    # "j":I
    :cond_5
    iput v6, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int v8, v7, v8

    invoke-virtual {v4, v2, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->setMarginAbove(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v4
.end method

.method final getNextRecordUp(II)Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .locals 11
    .param p1, "position"    # I
    .param p2, "span"    # I

    .prologue
    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .local v4, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v4, :cond_2

    new-instance v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v4    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    iput p2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v6, -0x1

    .local v6, "targetCol":I
    const/high16 v0, -0x80000000

    .local v0, "bottomMost":I
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v1, "colCount":I
    sub-int v2, v1, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    const v7, 0x7fffffff

    .local v7, "top":I
    move v3, v2

    .local v3, "j":I
    :goto_1
    add-int v8, v2, p2

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v8, v3

    .local v5, "singleTop":I
    if-ge v5, v7, :cond_1

    move v7, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "bottomMost":I
    .end local v1    # "colCount":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "singleTop":I
    .end local v6    # "targetCol":I
    .end local v7    # "top":I
    :cond_2
    iget v8, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    if-eq v8, p2, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid LayoutRecord! Record had span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but caller requested span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for position="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .restart local v0    # "bottomMost":I
    .restart local v1    # "colCount":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v6    # "targetCol":I
    .restart local v7    # "top":I
    :cond_3
    if-le v7, v0, :cond_4

    move v0, v7

    move v6, v2

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v3    # "j":I
    .end local v7    # "top":I
    :cond_5
    iput v6, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_6

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    add-int v9, v2, v6

    aget v8, v8, v9

    sub-int/2addr v8, v0

    invoke-virtual {v4, v2, v8}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->setMarginBelow(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-object v4
.end method

.method public final getOnItemClickListener()Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method hideSelector()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method final invalidateLayoutRecordsAfterPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "beginAt":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "end":I
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final invalidateLayoutRecordsBeforePosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "endAt":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "end":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    return-void
.end method

.method public isDrawSelectorOnTop()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method final layoutChildren(Z)V
    .locals 38
    .param p1, "queryAdapter"    # Z

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v23

    .local v23, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v24

    .local v24, "paddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v17, v0

    .local v17, "itemMargin":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v35

    sub-int v35, v35, v23

    sub-int v35, v35, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    mul-int v36, v36, v17

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v36, v0

    div-int v14, v35, v36

    .local v14, "colWidth":I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    const/16 v27, -0x1

    .local v27, "rebuildLayoutRecordsBefore":I
    const/16 v26, -0x1

    .local v26, "rebuildLayoutRecordsAfter":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .local v31, "tops":[I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v8

    .local v8, "childCount":I
    if-eqz v8, :cond_0

    const/16 v16, 0x0

    .local v16, "i":I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .local v32, "view":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v30, "tempLp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v35, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v36

    aput v36, v31, v35

    move-object/from16 v0, v30

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v35, v0

    add-int v18, v18, v35

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .end local v16    # "i":I
    .end local v18    # "j":I
    .end local v30    # "tempLp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v32    # "view":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    const/high16 v36, -0x80000000

    invoke-static/range {v35 .. v36}, Ljava/util/Arrays;->fill([II)V

    const/4 v4, 0x0

    .local v4, "amountRemoved":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v8, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v20, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iget v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .local v13, "col":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v25, v35, v16

    .local v25, "position":I
    if-nez p1, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v35

    if-eqz v35, :cond_4

    :cond_1
    const/16 v21, 0x1

    .local v21, "needsLayout":Z
    :goto_2
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->obtainView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v22

    .local v22, "newView":Landroid/view/View;
    if-nez v22, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    add-int/lit8 v35, v16, -0x1

    if-ltz v35, :cond_2

    add-int/lit8 v35, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .end local v22    # "newView":Landroid/view/View;
    :cond_3
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .end local v21    # "needsLayout":Z
    :cond_4
    const/16 v21, 0x0

    goto :goto_2

    .restart local v21    # "needsLayout":Z
    .restart local v22    # "newView":Landroid/view/View;
    :cond_5
    move-object/from16 v0, v22

    if-eq v0, v6, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->removeViewAt(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/StaggeredGridView;->addView(Landroid/view/View;I)V

    move-object/from16 v6, v22

    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .restart local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, v20

    iput v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v22    # "newView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v29

    .local v29, "span":I
    mul-int v35, v14, v29

    add-int/lit8 v36, v29, -0x1

    mul-int v36, v36, v17

    add-int v33, v35, v36

    .local v33, "widthSize":I
    if-eqz v21, :cond_8

    const/high16 v35, 0x40000000    # 2.0f

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    .local v34, "widthSpec":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v35, v0

    const/16 v36, -0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-static/range {v35 .. v36}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .local v15, "heightSpec":I
    :goto_4
    move/from16 v0, v34

    invoke-virtual {v6, v0, v15}, Landroid/view/View;->measure(II)V

    .end local v15    # "heightSpec":I
    .end local v34    # "widthSpec":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    const/high16 v36, -0x80000000

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v36, v0

    add-int v12, v35, v36

    .local v12, "childTop":I
    :goto_5
    const/16 v35, 0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-le v0, v1, :cond_d

    move/from16 v19, v12

    .local v19, "lowest":I
    add-int/lit8 v18, v13, 0x1

    .restart local v18    # "j":I
    :goto_6
    add-int v35, v13, v29

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    move/from16 v36, v0

    add-int v5, v35, v36

    .local v5, "bottom":I
    move/from16 v0, v19

    if-le v5, v0, :cond_9

    move/from16 v19, v5

    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .end local v5    # "bottom":I
    .end local v12    # "childTop":I
    .end local v18    # "j":I
    .end local v19    # "lowest":I
    .restart local v34    # "widthSpec":I
    :cond_a
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    invoke-static/range {v35 .. v36}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .restart local v15    # "heightSpec":I
    goto :goto_4

    .end local v15    # "heightSpec":I
    .end local v34    # "widthSpec":I
    :cond_b
    aget v12, v31, v13

    goto :goto_5

    .restart local v12    # "childTop":I
    .restart local v18    # "j":I
    .restart local v19    # "lowest":I
    :cond_c
    move/from16 v12, v19

    .end local v18    # "j":I
    .end local v19    # "lowest":I
    :cond_d
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .local v9, "childHeight":I
    add-int v7, v12, v9

    .local v7, "childBottom":I
    add-int v35, v14, v17

    mul-int v35, v35, v13

    add-int v10, v23, v35

    .local v10, "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    add-int v11, v10, v35

    .local v11, "childRight":I
    invoke-virtual {v6, v10, v12, v11, v7}, Landroid/view/View;->layout(IIII)V

    move/from16 v18, v13

    .restart local v18    # "j":I
    :goto_7
    add-int v35, v13, v29

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aput v7, v35, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .local v28, "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-eqz v28, :cond_f

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-eq v0, v9, :cond_f

    move-object/from16 v0, v28

    iput v9, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move/from16 v27, v25

    :cond_f
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    move/from16 v26, v25

    :cond_10
    if-eqz v28, :cond_3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-eq v0, v13, :cond_3

    move-object/from16 v0, v28

    iput v13, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    goto/16 :goto_3

    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childBottom":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    .end local v13    # "col":I
    .end local v18    # "j":I
    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v21    # "needsLayout":Z
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    .end local v29    # "span":I
    .end local v33    # "widthSize":I
    :cond_11
    const/16 v16, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    aget v35, v35, v16

    const/high16 v36, -0x80000000

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    move-object/from16 v36, v0

    aget v36, v36, v16

    aput v36, v35, v16

    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    :cond_13
    if-gez v27, :cond_14

    if-ltz v26, :cond_18

    :cond_14
    if-ltz v27, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsBeforePosition(I)V

    :cond_15
    if-ltz v26, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateLayoutRecordsAfterPosition(I)V

    :cond_16
    const/16 v16, 0x0

    :goto_9
    sub-int v35, v8, v4

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v25, v35, v16

    .restart local v25    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .restart local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    if-nez v28, :cond_17

    new-instance v28, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;

    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    const/16 v35, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;-><init>(Lcom/letv/leui/widget/StaggeredGridView$1;)V

    .restart local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutRecords:Landroid/util/SparseArray;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->column:I

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->height:I

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->id:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    move/from16 v36, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;->span:I

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .end local v6    # "child":Landroid/view/View;
    .end local v20    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v25    # "position":I
    .end local v28    # "rec":Lcom/letv/leui/widget/StaggeredGridView$LayoutRecord;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    move/from16 v35, v0

    const/16 v36, -0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .end local v6    # "child":Landroid/view/View;
    :cond_19
    :goto_a
    return-void

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "child":Landroid/view/View;
    if-eqz v6, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    goto :goto_a

    .end local v6    # "child":Landroid/view/View;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_a
.end method

.method final obtainView(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "optScrap"    # Landroid/view/View;

    .prologue
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v5

    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    move-object v7, v5

    :goto_0
    return-object v7

    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt p1, v7, :cond_1

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    iget v1, v7, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    .local v1, "optType":I
    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .local v2, "positionViewType":I
    if-ne v1, v2, :cond_5

    move-object v3, p2

    .local v3, "scrap":Landroid/view/View;
    :goto_2
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eq v5, v3, :cond_2

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-virtual {v7, v3}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->addScrap(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_3

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->generateDefaultLayoutParams()Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    :goto_3
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz v6, :cond_8

    move-object v4, v6

    check-cast v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    .local v4, "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    :goto_4
    iput p1, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->position:I

    iput v2, v4, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    move-object v7, v5

    goto :goto_0

    .end local v0    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v1    # "optType":I
    .end local v2    # "positionViewType":I
    .end local v3    # "scrap":Landroid/view/View;
    .end local v4    # "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v1, -0x1

    goto :goto_1

    .restart local v1    # "optType":I
    .restart local v2    # "positionViewType":I
    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    iget-object v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->getScrapView(IJ)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .restart local v0    # "lp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    .restart local v3    # "scrap":Landroid/view/View;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v6

    check-cast v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;

    goto :goto_3

    :cond_8
    move-object v4, v0

    .restart local v4    # "sglp":Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
    goto :goto_4
.end method

.method final offsetChildren(I)V
    .locals 8
    .param p1, "offset"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .local v2, "colCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemBottoms:[I

    aget v5, v4, v3

    add-int/2addr v5, p1

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    iget-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v4, Lcom/letv/leui/widget/StaggeredGridView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v3

    .local v3, "state":[I
    const/4 v0, -0x1

    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    move v0, v2

    :cond_2
    if-ltz v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v5, v6

    :goto_0
    return v5

    :pswitch_1
    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    iget-object v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v7}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    iget v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    :pswitch_2
    iget v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .local v3, "index":I
    if-gez v3, :cond_1

    const-string v5, "StaggeredGridView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "event stream?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .local v4, "y":F
    iget v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v7, v4, v7

    iget v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v2, v7, v8

    .local v2, "dy":F
    float-to-int v1, v2

    .local v1, "deltaY":I
    int-to-float v7, v1

    sub-float v7, v2, v7

    iput v7, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .local v3, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "heightSize":I
    if-eq v3, v5, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    :cond_0
    if-eq v1, v5, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setMeasuredDimension(II)V

    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    div-int v0, v4, v5

    .local v0, "colCount":I
    iget v5, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq v0, v5, :cond_2

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    .end local v0    # "colCount":I
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v3, p1

    check-cast v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;

    .local v3, "ss":Lcom/letv/leui/widget/StaggeredGridView$SavedState;
    invoke-virtual {v3}, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    iget v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRestoreOffsets:[I

    iget-boolean v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    iget-object v1, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    .local v0, "colMap":Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    iget-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    # getter for: Lcom/letv/leui/widget/StaggeredGridView$ColMap;->values:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView$ColMap;->access$1200(Lcom/letv/leui/widget/StaggeredGridView$ColMap;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "colMap":Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-wide v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    iget-wide v4, v3, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstAdapterId:J

    const/4 v4, -0x1

    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v8

    .local v8, "superState":Landroid/os/Parcelable;
    new-instance v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;

    invoke-direct {v7, v8}, Lcom/letv/leui/widget/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v7, "ss":Lcom/letv/leui/widget/StaggeredGridView$SavedState;
    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .local v6, "position":I
    iput v6, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    if-ltz v6, :cond_0

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-ge v6, v10, :cond_0

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iput-wide v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    :cond_0
    iget v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    new-array v9, v10, [I

    .local v9, "topOffsets":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v10

    if-lez v10, :cond_4

    iget v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColWidth:I

    if-lez v10, :cond_1

    iget-object v9, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemTops:[I

    :cond_1
    iput-object v9, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColMappings:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    invoke-direct {v10, v0}, Lcom/letv/leui/widget/StaggeredGridView$ColMap;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "cols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iput-object v1, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .end local v1    # "convert":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/widget/StaggeredGridView$ColMap;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    iget v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v10

    iput-object v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_3
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_7

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_6

    iget-object v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    iget-object v12, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v10, v11, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_4
    iput-object v9, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_6
    iput-object v5, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_7
    iget v10, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    iput v10, v7, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    return-object v7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v11, v2, 0xff

    .local v11, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/letv/leui/widget/StaggeredGridView;->pointToPosition(II)I

    move-result v21

    .local v21, "motionPosition":I
    packed-switch v11, :pswitch_data_0

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .local v27, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .local v28, "y":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_1

    if-ltz v21, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_0

    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/letv/leui/widget/StaggeredGridView$CheckForTap;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionX:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mMotionY:I

    goto/16 :goto_0

    .end local v27    # "x":I
    .end local v28    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    .local v20, "index":I
    if-gez v20, :cond_2

    const-string v2, "StaggeredGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - did StaggeredGridView receive an inconsistent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event stream?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    .local v28, "y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    sub-float v2, v28, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    add-float v16, v2, v3

    .local v16, "dy":F
    move/from16 v0, v16

    float-to-int v15, v0

    .local v15, "deltaY":I
    int-to-float v2, v15

    sub-float v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .local v17, "handler":Landroid/os/Handler;
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .local v22, "motionView":Landroid/view/View;
    if-eqz v22, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .local v23, "parent":Landroid/view/ViewParent;
    if-eqz v23, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v17    # "handler":Landroid/os/Handler;
    .end local v22    # "motionView":Landroid/view/View;
    .end local v23    # "parent":Landroid/view/ViewParent;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    if-lt v2, v3, :cond_8

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    float-to-int v15, v0

    int-to-float v2, v15

    sub-float v2, v16, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchRemainderY:F

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaxOverScrollDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v13, v2, v3

    .local v13, "coeff":F
    mul-float v16, v16, v13

    goto :goto_2

    .end local v13    # "coeff":F
    .end local v15    # "deltaY":I
    .end local v16    # "dy":F
    .end local v20    # "index":I
    .end local v28    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .restart local v22    # "motionView":Landroid/view/View;
    if-eqz v22, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v17

    .restart local v17    # "handler":Landroid/os/Handler;
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleVelocityTracker()V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    goto/16 :goto_0

    .end local v17    # "handler":Landroid/os/Handler;
    .end local v22    # "motionView":Landroid/view/View;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    .local v26, "velocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move/from16 v25, v0

    .local v25, "prevTouchMode":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastOverScrollX:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    goto/16 :goto_0

    :cond_c
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_d

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v26

    float-to-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mLastTouchY:F

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    :goto_3
    packed-switch v25, :pswitch_data_1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    :cond_e
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v2, v21, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .local v12, "child":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .local v27, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v27, v2

    if-lez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v27, v2

    if-gez v2, :cond_15

    const/16 v19, 0x1

    .local v19, "inList":Z
    :goto_5
    if-eqz v12, :cond_1a

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_1a

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    if-nez v2, :cond_10

    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPerformClick:Lcom/letv/leui/widget/StaggeredGridView$PerformClick;

    move-object/from16 v24, v0

    .local v24, "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->mClickMotionPosition:I

    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v18

    .local v18, "handlerTouch":Landroid/os/Handler;
    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForTap:Ljava/lang/Runnable;

    :goto_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->layoutChildren(Z)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->setPressed(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .local v14, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_13

    instance-of v2, v14, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_13

    check-cast v14, Landroid/graphics/drawable/TransitionDrawable;

    .end local v14    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/StaggeredGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_14
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v2, v0, v12, v1}, Lcom/letv/leui/widget/StaggeredGridView$2;-><init>(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;Lcom/letv/leui/widget/StaggeredGridView$PerformClick;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .end local v18    # "handlerTouch":Landroid/os/Handler;
    .end local v19    # "inList":Z
    .end local v24    # "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_5

    .restart local v18    # "handlerTouch":Landroid/os/Handler;
    .restart local v19    # "inList":Z
    .restart local v24    # "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/letv/leui/widget/StaggeredGridView$CheckForLongPress;

    goto/16 :goto_6

    :cond_17
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_7

    .end local v18    # "handlerTouch":Landroid/os/Handler;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/StaggeredGridView$PerformClick;->run()V

    .end local v24    # "performClick":Lcom/letv/leui/widget/StaggeredGridView$PerformClick;
    :cond_19
    :goto_8
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    goto/16 :goto_4

    :cond_1a
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x1

    .local v8, "dispatchItemClick":Z
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    .local v7, "checkedStateChanged":Z
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_6

    move v6, v9

    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v6, :cond_7

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    :goto_1
    if-eqz v6, :cond_8

    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    :goto_2
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v8, 0x0

    :cond_1
    const/4 v7, 0x1

    .end local v6    # "checked":Z
    :cond_2
    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateOnScreenCheckedViews()V

    .end local v7    # "checkedStateChanged":Z
    :cond_3
    if-eqz v8, :cond_9

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->playSoundEffect(I)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;->onItemClick(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_5
    :goto_3
    return v9

    .restart local v7    # "checkedStateChanged":Z
    :cond_6
    move v6, v0

    goto :goto_0

    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .end local v6    # "checked":Z
    .end local v7    # "checkedStateChanged":Z
    :cond_9
    move v9, v0

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .local v6, "frame":Landroid/graphics/Rect;
    if-nez v6, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0, p2, v7}, Lcom/letv/leui/widget/StaggeredGridView;->setItemChecked(IZ)V

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/StaggeredGridView;->performHapticFeedback(I)Z

    .end local v6    # "frame":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return v7

    :cond_4
    const/4 v7, 0x0

    .local v7, "handled":Z
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;->onItemLongClick(Lcom/letv/leui/widget/StaggeredGridView;Landroid/view/View;IJ)Z

    move-result v7

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/StaggeredGridView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v7

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/StaggeredGridView;->performHapticFeedback(I)Z

    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    .local v2, "frame":Landroid/graphics/Rect;
    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    add-int/2addr v4, v3

    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorPosition:I

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectorRect:Landroid/graphics/Rect;

    .local v1, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v2, p2, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/letv/leui/widget/StaggeredGridView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/letv/leui/widget/StaggeredGridView;->positionSelector(IIII)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_2

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mIsChildViewEnabled:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->refreshDrawableState()V

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mPopulating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFastChildLayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearAllState()V

    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    iput-boolean v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mObserver:Lcom/letv/leui/widget/StaggeredGridView$AdapterDataSetObserver;

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mRecycler:Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/StaggeredGridView$RecycleBin;->setViewTypeCount(I)V

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_3
    if-eqz p1, :cond_5

    :goto_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mHasStableIds:Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->clearChoices()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    :cond_3
    return-void
.end method

.method public setColumnCount(I)V
    .locals 4
    .param p1, "colCount"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Column count must be at least 1 - received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eq p1, v2, :cond_2

    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCountSetting:I

    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mColCount:I

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    :cond_1
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "drawSelectorOnTop"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v3}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/StaggeredGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    if-ne v3, v6, :cond_a

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .local v0, "oldValue":Z
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_1
    if-eq v0, p2, :cond_6

    if-eqz p2, :cond_9

    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .local v4, "id":J
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mInLayout:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    goto :goto_0

    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_2

    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_e

    move v7, v1

    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v7, :cond_c

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    :cond_c
    if-eqz p2, :cond_f

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v7, :cond_d

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v9, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_d
    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_e
    move v7, v2

    goto :goto_4

    .restart local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_10
    iput v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setItemMargin(I)V
    .locals 3
    .param p1, "marginPixels"    # I

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    if-eq p1, v2, :cond_1

    const/4 v0, 0x1

    .local v0, "needsPopulate":Z
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemMargin:I

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V

    :cond_0
    return-void

    .end local v0    # "needsPopulate":Z
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setMinColumnWidth(I)V
    .locals 1
    .param p1, "minColWidth"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMinColWidth:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setColumnCount(I)V

    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    iput-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMultiChoiceModeCallback:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->setWrapped(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mOnItemLongClickListener:Lcom/letv/leui/widget/StaggeredGridView$OnItemLongClickListener;

    return-void
.end method

.method public setPositionAndTop(II)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    .local v1, "firstPosition":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    .local v2, "lastVisiblePosition":I
    move v4, p1

    .local v4, "syncPosition":I
    move v3, p2

    .local v3, "sncTop":I
    if-ltz v4, :cond_0

    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mItemCount:I

    if-lt v4, v6, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getFirstPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getLastVisiblePosition()I

    move-result v2

    :cond_2
    if-lt v4, v1, :cond_3

    if-le v4, v2, :cond_5

    :cond_3
    if-le v4, v2, :cond_7

    const/16 v6, -0x12c

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    :cond_4
    :goto_1
    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mMoveBy:I

    if-nez v6, :cond_1

    :cond_5
    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "delta":I
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    :cond_6
    if-eqz v0, :cond_0

    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    iget v6, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/StaggeredGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v6, v3

    if-eqz v0, :cond_0

    neg-int v6, v0

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_0

    .end local v0    # "delta":I
    .end local v5    # "view":Landroid/view/View;
    :cond_7
    if-ge v4, v1, :cond_4

    const/16 v6, 0x12c

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/StaggeredGridView;->trackMotionScroll(IZ)Z

    goto :goto_1
.end method

.method public setSelectionToTop()V
    .locals 6

    .prologue
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mLayoutAnim:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOuting:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFadeOutViewAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mUpdateAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mDataChanged:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSync:Z

    if-eqz v3, :cond_5

    :cond_4
    new-instance v2, Lcom/letv/leui/widget/StaggeredGridView$6;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/StaggeredGridView$6;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mFirstPosition:I

    .local v0, "firstPosition":I
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->recycleAllViews()V

    invoke-direct {p0}, Lcom/letv/leui/widget/StaggeredGridView;->resetStateForGridTop()V

    iget-boolean v3, p0, Lcom/letv/leui/widget/StaggeredGridView;->mEnableAnimation:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->startLayoutAnimation()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->requestLayout()V

    goto :goto_0
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->updateSelectorState()V

    goto :goto_0
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/StaggeredGridView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
