.class public Lcom/letv/leui/widget/slide/LeSlidePager;
.super Landroid/view/ViewGroup;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;,
        Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;,
        Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;,
        Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;,
        Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;,
        Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;,
        Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;,
        Lcom/letv/leui/widget/slide/LeSlidePager$Decor;,
        Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;,
        Lcom/letv/leui/widget/slide/LeSlidePager$SimpleOnPageChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;,
        Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LeSlidePager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

.field private mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDisableStateSaving:Z

.field private mDistanceThreshold:F

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEdgeSize:I

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mFragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGutterSize:I

.field private mIgnoreGutter:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mIsUsingInnerAdapter:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxSettleDuration:I

.field private mMaximumVelocity:I

.field private mMgr:Landroid/app/FragmentManager;

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mShadowsHeight:F

.field private mSpecRect:Landroid/graphics/Rect;

.field private mSpecTab:I

.field private final mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mTouchSlopAdjust:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->LAYOUT_ATTRS:[I

    .line 81
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->COMPARATOR:Ljava/util/Comparator;

    .line 88
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$2;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$2;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 201
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 322
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 103
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 104
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 116
    const v0, -0x800001

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 126
    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 166
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 171
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 185
    iput-boolean v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 186
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$3;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 226
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 2896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    .line 2897
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2899
    const/16 v0, 0x258

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 3009
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 323
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->initViewPager()V

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 327
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    .line 102
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 103
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 104
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 116
    const v0, -0x800001

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 117
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 126
    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 150
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 166
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 171
    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 185
    iput-boolean v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 186
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 219
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$3;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 226
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 2896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    .line 2897
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2899
    const/16 v0, 0x258

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 3009
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 328
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->initViewPager()V

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/slide/LeSlidePager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/slide/LeSlidePager;)Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/slide/LeSlidePager;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/letv/leui/widget/slide/LeSlidePager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/slide/LeSlidePager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/slide/LeSlidePager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    return v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/slide/LeSlidePager;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/slide/LeSlidePager;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 49
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mShadowsHeight:F

    return v0
.end method

.method private calculatePageOffsets(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;ILcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)V
    .locals 14
    .param p1, "curItem"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .prologue
    .line 1114
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v1

    .line 1115
    .local v1, "N":I
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v11

    .line 1116
    .local v11, "width":I
    if-lez v11, :cond_0

    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v12, v12

    int-to-float v13, v11

    div-float v6, v12, v13

    .line 1118
    .local v6, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1119
    move-object/from16 v0, p3

    iget v8, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 1121
    .local v8, "oldCurPosition":I
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v8, v12, :cond_3

    .line 1122
    const/4 v5, 0x0

    .line 1123
    .local v5, "itemIndex":I
    const/4 v3, 0x0

    .line 1124
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p3

    iget v12, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move-object/from16 v0, p3

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1125
    .local v7, "offset":F
    add-int/lit8 v9, v8, 0x1

    .line 1126
    .local v9, "pos":I
    :goto_1
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-gt v9, v12, :cond_6

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 1127
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1128
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_2
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_1

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v5, v12, :cond_1

    .line 1129
    add-int/lit8 v5, v5, 0x1

    .line 1130
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_2

    .line 1116
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v6    # "marginOffset":F
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1132
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v5    # "itemIndex":I
    .restart local v6    # "marginOffset":F
    .restart local v7    # "offset":F
    .restart local v8    # "oldCurPosition":I
    .restart local v9    # "pos":I
    :cond_1
    :goto_3
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_2

    .line 1135
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1136
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1138
    :cond_2
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1139
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1126
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1141
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v9    # "pos":I
    :cond_3
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v8, v12, :cond_6

    .line 1142
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .line 1143
    .restart local v5    # "itemIndex":I
    const/4 v3, 0x0

    .line 1144
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p3

    iget v7, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1145
    .restart local v7    # "offset":F
    add-int/lit8 v9, v8, -0x1

    .line 1146
    .restart local v9    # "pos":I
    :goto_4
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-lt v9, v12, :cond_6

    if-ltz v5, :cond_6

    .line 1147
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1148
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_5
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_4

    if-lez v5, :cond_4

    .line 1149
    add-int/lit8 v5, v5, -0x1

    .line 1150
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_5

    .line 1152
    :cond_4
    :goto_6
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_5

    .line 1155
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1156
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 1158
    :cond_5
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1159
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1146
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1165
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "itemIndex":I
    .end local v7    # "offset":F
    .end local v8    # "oldCurPosition":I
    .end local v9    # "pos":I
    :cond_6
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1166
    .local v4, "itemCount":I
    iget v7, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1167
    .restart local v7    # "offset":F
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, -0x1

    .line 1168
    .restart local v9    # "pos":I
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-nez v12, :cond_7

    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    :goto_7
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 1169
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_8

    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v13, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    :goto_8
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 1172
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_b

    .line 1173
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1174
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_a
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v12, :cond_9

    .line 1175
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_a

    .line 1168
    .end local v2    # "i":I
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_7
    const v12, -0x800001

    goto :goto_7

    .line 1169
    :cond_8
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_8

    .line 1177
    .restart local v2    # "i":I
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_9
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    sub-float/2addr v7, v12

    .line 1178
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1179
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-nez v12, :cond_a

    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    .line 1172
    :cond_a
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 1181
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_b
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v13, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float v7, v12, v6

    .line 1182
    iget v12, p1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v9, v12, 0x1

    .line 1184
    add-int/lit8 v2, p2, 0x1

    :goto_b
    if-ge v2, v4, :cond_e

    .line 1185
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1186
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_c
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ge v9, v12, :cond_c

    .line 1187
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v12, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    move v9, v10

    .end local v10    # "pos":I
    .restart local v9    # "pos":I
    goto :goto_c

    .line 1189
    :cond_c
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v13, v1, -0x1

    if-ne v12, v13, :cond_d

    .line 1190
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v7

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    .line 1192
    :cond_d
    iput v7, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 1193
    iget v12, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v6

    add-float/2addr v7, v12

    .line 1184
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 1196
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_e
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mNeedCalculatePageOffsets:Z

    .line 1197
    return-void
.end method

.method private checkJumpToFinalState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2982
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 2983
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2984
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v2

    .line 2985
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v3

    .line 2986
    .local v3, "oldY":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 2987
    .local v4, "x":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 2988
    .local v5, "y":I
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_1

    .line 2989
    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 2991
    :cond_1
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 2992
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 2993
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2994
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-boolean v6, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    if-eqz v6, :cond_2

    .line 2995
    iput-boolean v7, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    .line 2992
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2998
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_3
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 2999
    return-void
.end method

.method private completeScroll(Z)V
    .locals 10
    .param p1, "postEvents"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1727
    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v2, 0x1

    .line 1728
    .local v2, "needPopulate":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1730
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1731
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1732
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v3

    .line 1733
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v4

    .line 1734
    .local v4, "oldY":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1735
    .local v5, "x":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1736
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 1737
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1740
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1742
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1743
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-boolean v8, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    if-eqz v8, :cond_2

    .line 1744
    const/4 v2, 0x1

    .line 1745
    iput-boolean v7, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    .line 1741
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v2    # "needPopulate":Z
    :cond_3
    move v2, v7

    .line 1727
    goto :goto_0

    .line 1748
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 1749
    if-eqz p1, :cond_6

    .line 1750
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1755
    :cond_5
    :goto_2
    return-void

    .line 1752
    :cond_6
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private determineTargetPage(IFII)I
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .prologue
    .line 2160
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFlingDistance:I

    if-le v4, v5, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMinimumVelocity:I

    if-le v4, v5, :cond_2

    .line 2161
    if-lez p3, :cond_1

    move v2, p1

    .line 2167
    .local v2, "targetPage":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2168
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2169
    .local v0, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2172
    .local v1, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v4, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v5, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2175
    .end local v0    # "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v1    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    return v2

    .line 2161
    .end local v2    # "targetPage":I
    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    .line 2163
    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDistanceThreshold:F

    .line 2164
    .local v3, "truncator":F
    int-to-float v4, p1

    add-float/2addr v4, p2

    add-float/2addr v4, v3

    float-to-int v2, v4

    .restart local v2    # "targetPage":I
    goto :goto_0
.end method

.method private enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v0

    .line 1763
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1764
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 1766
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1763
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1764
    .end local v2    # "layerType":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1768
    :cond_1
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2369
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 2370
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 2372
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2376
    :cond_0
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2546
    if-nez p1, :cond_0

    .line 2547
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "outRect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2549
    .restart local p1    # "outRect":Landroid/graphics/Rect;
    :cond_0
    if-nez p2, :cond_2

    .line 2550
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2568
    :cond_1
    return-object p1

    .line 2553
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2554
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2555
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2556
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2558
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2559
    .local v1, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    move-object v0, v1

    .line 2560
    check-cast v0, Landroid/view/ViewGroup;

    .line 2561
    .local v0, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2562
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2563
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2564
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2566
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2567
    goto :goto_0
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 2117
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v12

    .line 2118
    .local v12, "width":I
    if-lez v12, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v11, v13, v14

    .line 2119
    .local v11, "scrollOffset":F
    :goto_0
    if-lez v12, :cond_0

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v12

    div-float v8, v13, v14

    .line 2120
    .local v8, "marginOffset":F
    :cond_0
    const/4 v5, -0x1

    .line 2121
    .local v5, "lastPos":I
    const/4 v4, 0x0

    .line 2122
    .local v4, "lastOffset":F
    const/4 v6, 0x0

    .line 2123
    .local v6, "lastWidth":F
    const/4 v0, 0x1

    .line 2125
    .local v0, "first":Z
    const/4 v3, 0x0

    .line 2126
    .local v3, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_4

    .line 2127
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2129
    .local v2, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-nez v0, :cond_1

    iget v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_1

    .line 2131
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempItem:Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2132
    add-float v13, v4, v6

    add-float/2addr v13, v8

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2133
    add-int/lit8 v13, v5, 0x1

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2134
    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v14, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 2135
    add-int/lit8 v1, v1, -0x1

    .line 2137
    :cond_1
    iget v9, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2139
    .local v9, "offset":F
    move v7, v9

    .line 2140
    .local v7, "leftBound":F
    iget v13, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v9

    add-float v10, v13, v8

    .line 2141
    .local v10, "rightBound":F
    if-nez v0, :cond_2

    cmpl-float v13, v11, v7

    if-ltz v13, :cond_4

    .line 2142
    :cond_2
    cmpg-float v13, v11, v10

    if-ltz v13, :cond_3

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v1, v13, :cond_6

    :cond_3
    move-object v3, v2

    .line 2155
    .end local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v3    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v7    # "leftBound":F
    .end local v9    # "offset":F
    .end local v10    # "rightBound":F
    :cond_4
    return-object v3

    .end local v0    # "first":Z
    .end local v1    # "i":I
    .end local v4    # "lastOffset":F
    .end local v5    # "lastPos":I
    .end local v6    # "lastWidth":F
    .end local v8    # "marginOffset":F
    .end local v11    # "scrollOffset":F
    :cond_5
    move v11, v8

    .line 2118
    goto :goto_0

    .line 2148
    .restart local v0    # "first":Z
    .restart local v1    # "i":I
    .restart local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v3    # "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v4    # "lastOffset":F
    .restart local v5    # "lastPos":I
    .restart local v6    # "lastWidth":F
    .restart local v7    # "leftBound":F
    .restart local v8    # "marginOffset":F
    .restart local v9    # "offset":F
    .restart local v10    # "rightBound":F
    .restart local v11    # "scrollOffset":F
    :cond_6
    const/4 v0, 0x0

    .line 2149
    iget v5, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2150
    move v4, v9

    .line 2151
    iget v6, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 2152
    move-object v3, v2

    .line 2126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .prologue
    const/4 v2, 0x0

    .line 1758
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 2355
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2356
    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 2359
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 2360
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2361
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2362
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 2363
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2366
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 2359
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pageScrolled(I)Z
    .locals 10
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 1623
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 1624
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1625
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->onPageScrolled(IFI)V

    .line 1626
    iget-boolean v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    if-nez v8, :cond_2

    .line 1627
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1632
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    .line 1633
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v5

    .line 1634
    .local v5, "width":I
    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    add-int v6, v5, v8

    .line 1635
    .local v6, "widthWithMargin":I
    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v8, v8

    int-to-float v9, v5

    div-float v2, v8, v9

    .line 1636
    .local v2, "marginOffset":F
    iget v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 1637
    .local v0, "currentPage":I
    int-to-float v8, p1

    int-to-float v9, v5

    div-float/2addr v8, v9

    iget v9, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    div-float v4, v8, v9

    .line 1639
    .local v4, "pageOffset":F
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v3, v8

    .line 1640
    .local v3, "offsetPixels":I
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1641
    invoke-virtual {p0, v0, v4, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->onPageScrolled(IFI)V

    .line 1642
    iget-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    if-nez v7, :cond_1

    .line 1643
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "onPageScrolled did not call superclass implementation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1646
    :cond_1
    const/4 v7, 0x1

    .end local v0    # "currentPage":I
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_2
    return v7
.end method

.method private performDrag(F)Z
    .locals 13
    .param p1, "x"    # F

    .prologue
    .line 2068
    const/4 v5, 0x0

    .line 2070
    .local v5, "needsInvalidate":Z
    iget v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    sub-float v0, v11, p1

    .line 2071
    .local v0, "deltaX":F
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2073
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v11

    int-to-float v6, v11

    .line 2074
    .local v6, "oldScrollX":F
    add-float v9, v6, v0

    .line 2075
    .local v9, "scrollX":F
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v10

    .line 2077
    .local v10, "width":I
    int-to-float v11, v10

    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float v4, v11, v12

    .line 2078
    .local v4, "leftBound":F
    int-to-float v11, v10

    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float v8, v11, v12

    .line 2079
    .local v8, "rightBound":F
    const/4 v3, 0x1

    .line 2080
    .local v3, "leftAbsolute":Z
    const/4 v7, 0x1

    .line 2082
    .local v7, "rightAbsolute":Z
    iget-object v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2083
    .local v1, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2084
    .local v2, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v11, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eqz v11, :cond_0

    .line 2085
    const/4 v3, 0x0

    .line 2086
    iget v11, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v12, v10

    mul-float v4, v11, v12

    .line 2088
    :cond_0
    iget v11, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v11, v12, :cond_1

    .line 2089
    const/4 v7, 0x0

    .line 2090
    iget v11, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v12, v10

    mul-float v8, v11, v12

    .line 2093
    :cond_1
    cmpg-float v11, v9, v4

    if-gez v11, :cond_4

    .line 2094
    if-eqz v3, :cond_2

    .line 2095
    sub-float v11, v4, v9

    .line 2097
    :cond_2
    move v9, v4

    .line 2105
    :cond_3
    :goto_0
    iget v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    float-to-int v12, v9

    int-to-float v12, v12

    sub-float v12, v9, v12

    add-float/2addr v11, v12

    iput v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2106
    float-to-int v11, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v12

    invoke-virtual {p0, v11, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 2107
    float-to-int v11, v9

    invoke-direct {p0, v11}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    .line 2109
    return v5

    .line 2098
    :cond_4
    cmpl-float v11, v9, v8

    if-lez v11, :cond_3

    .line 2099
    if-eqz v7, :cond_5

    .line 2100
    sub-float v11, v9, v8

    .line 2102
    :cond_5
    move v9, v8

    goto :goto_0
.end method

.method private pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 2884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 2885
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 2886
    .local v1, "y":F
    const-string v3, "LeSlidePager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pointInRect x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    if-eqz p2, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    if-ne v3, v4, :cond_0

    .line 2888
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 2890
    :cond_0
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 14
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    .line 1460
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1461
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v12, v0, p3

    .line 1462
    .local v12, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v7, v0, p4

    .line 1464
    .local v7, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v13

    .line 1465
    .local v13, "xpos":I
    int-to-float v0, v13

    int-to-float v2, v7

    div-float v8, v0, v2

    .line 1466
    .local v8, "pageOffset":F
    int-to-float v0, v12

    mul-float/2addr v0, v8

    float-to-int v1, v0

    .line 1468
    .local v1, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1469
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    sub-int v5, v0, v2

    .line 1472
    .local v5, "newDuration":I
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v11

    .line 1473
    .local v11, "targetInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    iget v3, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1486
    .end local v1    # "newOffsetPixels":I
    .end local v5    # "newDuration":I
    .end local v7    # "oldWidthWithMargin":I
    .end local v8    # "pageOffset":F
    .end local v11    # "targetInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v12    # "widthWithMargin":I
    .end local v13    # "xpos":I
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v6

    .line 1478
    .local v6, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1479
    .local v9, "scrollOffset":F
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v10, v0

    .line 1481
    .local v10, "scrollPos":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    if-eq v10, v0, :cond_0

    .line 1482
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 1483
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    goto :goto_0

    .line 1478
    .end local v9    # "scrollOffset":F
    .end local v10    # "scrollPos":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private removeNonDecorViews()V
    .locals 4

    .prologue
    .line 436
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 437
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 439
    .local v2, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v3, v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 440
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeViewAt(I)V

    .line 441
    add-int/lit8 v1, v1, -0x1

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_1
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2062
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2063
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2065
    :cond_0
    return-void
.end method

.method private scrollToItem(IZIZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v0

    .line 540
    .local v0, "curInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v1, 0x0

    .line 541
    .local v1, "destX":I
    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v2

    .line 543
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    iget v5, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 546
    .end local v2    # "width":I
    :cond_0
    if-eqz p2, :cond_3

    .line 547
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 550
    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_2

    .line 551
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 554
    :cond_2
    invoke-virtual {p0, v1, v7, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->smoothScrollTo(III)V

    .line 567
    :goto_0
    return-void

    .line 557
    :cond_3
    if-eqz p4, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_4

    .line 558
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 560
    :cond_4
    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 561
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_5
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 564
    invoke-virtual {p0, v1, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 565
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 369
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    .line 374
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v0, :cond_2

    .line 376
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->enableLayers(Z)V

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0

    .line 376
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2379
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2380
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollingCacheEnabled:Z

    .line 2391
    :cond_0
    return-void
.end method

.method private sortChildDrawingOrder()V
    .locals 5

    .prologue
    .line 1098
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    if-eqz v3, :cond_2

    .line 1099
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1104
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 1105
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1106
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1107
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1102
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1109
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v4, Lcom/letv/leui/widget/slide/LeSlidePager;->sPositionComparator:Lcom/letv/leui/widget/slide/LeSlidePager$ViewPositionComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2592
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2594
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDescendantFocusability()I

    move-result v1

    .line 2596
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 2597
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 2598
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2599
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 2600
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v4

    .line 2601
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2602
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2597
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2612
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 2618
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2629
    :cond_3
    :goto_1
    return-void

    .line 2621
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2625
    :cond_5
    if-eqz p1, :cond_3

    .line 2626
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 818
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;-><init>()V

    .line 819
    .local v0, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iput p1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 820
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    .line 821
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 822
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :goto_0
    return-object v0

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2639
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2640
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2641
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2642
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v2

    .line 2643
    .local v2, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2644
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2639
    .end local v2    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2648
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1284
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1285
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    .line 1287
    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1288
    .local v0, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/letv/leui/widget/slide/LeSlidePager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    .line 1289
    iget-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    if-eqz v1, :cond_2

    .line 1290
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-eqz v1, :cond_1

    .line 1291
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1293
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    .line 1294
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/slide/LeSlidePager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1306
    :goto_0
    return-void

    .line 1296
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 13
    .param p1, "direction"    # I

    .prologue
    const/16 v12, 0x42

    const/16 v11, 0x11

    .line 2480
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2481
    .local v1, "currentFocused":Landroid/view/View;
    if-ne v1, p0, :cond_3

    .line 2482
    const/4 v1, 0x0

    .line 2506
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 2508
    .local v2, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2510
    .local v4, "nextFocused":Landroid/view/View;
    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_a

    .line 2511
    if-ne p1, v11, :cond_8

    .line 2514
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2515
    .local v5, "nextLeft":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2516
    .local v0, "currLeft":I
    if-eqz v1, :cond_7

    if-lt v5, v0, :cond_7

    .line 2517
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageLeft()Z

    move-result v2

    .line 2539
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2540
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->playSoundEffect(I)V

    .line 2542
    :cond_2
    return v2

    .line 2483
    .end local v2    # "handled":Z
    .end local v4    # "nextFocused":Landroid/view/View;
    :cond_3
    if-eqz v1, :cond_0

    .line 2484
    const/4 v3, 0x0

    .line 2485
    .local v3, "isChild":Z
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .local v6, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_4

    .line 2487
    if-ne v6, p0, :cond_5

    .line 2488
    const/4 v3, 0x1

    .line 2492
    :cond_4
    if-nez v3, :cond_0

    .line 2494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2495
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    :goto_3
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_6

    .line 2498
    const-string v8, " => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2497
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_3

    .line 2486
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_2

    .line 2500
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    const-string v8, "LeSlidePager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2519
    .end local v3    # "isChild":Z
    .end local v6    # "parent":Landroid/view/ViewParent;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "currLeft":I
    .restart local v2    # "handled":Z
    .restart local v4    # "nextFocused":Landroid/view/View;
    .restart local v5    # "nextLeft":I
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_1

    .line 2521
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_8
    if-ne p1, v12, :cond_1

    .line 2524
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .line 2525
    .restart local v5    # "nextLeft":I
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v8

    iget v0, v8, Landroid/graphics/Rect;->left:I

    .line 2526
    .restart local v0    # "currLeft":I
    if-eqz v1, :cond_9

    if-gt v5, v0, :cond_9

    .line 2527
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageRight()Z

    move-result v2

    goto/16 :goto_1

    .line 2529
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto/16 :goto_1

    .line 2532
    .end local v0    # "currLeft":I
    .end local v5    # "nextLeft":I
    :cond_a
    if-eq p1, v11, :cond_b

    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    .line 2534
    :cond_b
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageLeft()Z

    move-result v2

    goto/16 :goto_1

    .line 2535
    :cond_c
    if-eq p1, v12, :cond_d

    const/4 v8, 0x2

    if-ne p1, v8, :cond_1

    .line 2537
    :cond_d
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageRight()Z

    move-result v2

    goto/16 :goto_1
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2244
    iget-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 2260
    :goto_0
    return v4

    .line 2247
    :cond_0
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    .line 2248
    invoke-direct {p0, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 2249
    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    .line 2250
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 2251
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2255
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 2256
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2257
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2258
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2259
    iput-wide v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragBeginTime:J

    move v4, v9

    .line 2260
    goto :goto_0

    .line 2253
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 2421
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 2422
    check-cast v7, Landroid/view/ViewGroup;

    .line 2423
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 2424
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 2425
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2427
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 2430
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2431
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2435
    const/4 v0, 0x1

    .line 2440
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 2427
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2440
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2394
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-nez v4, :cond_1

    .line 2405
    :cond_0
    :goto_0
    return v3

    .line 2398
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v1

    .line 2399
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    .line 2400
    .local v0, "scrollX":I
    if-gez p1, :cond_3

    .line 2401
    int-to-float v4, v1

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v0, v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 2402
    :cond_3
    if-lez p1, :cond_0

    .line 2403
    int-to-float v4, v1

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v0, v4, :cond_4

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2718
    instance-of v0, p1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    .line 1599
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1600
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v0

    .line 1601
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v1

    .line 1602
    .local v1, "oldY":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1603
    .local v2, "x":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1605
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1606
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1607
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1608
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1609
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 1614
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    .line 1620
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    .line 1619
    :cond_2
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 833
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v0

    .line 834
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 835
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_1

    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v12, v0, :cond_1

    move v7, v10

    .line 837
    .local v7, "needPopulate":Z
    :goto_0
    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 839
    .local v8, "newCurrItem":I
    const/4 v5, 0x0

    .line 840
    .local v5, "isUpdating":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 841
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 842
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v13, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v9

    .line 844
    .local v9, "newPos":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_2

    .line 840
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v5    # "isUpdating":Z
    .end local v7    # "needPopulate":Z
    .end local v8    # "newCurrItem":I
    .end local v9    # "newPos":I
    :cond_1
    move v7, v11

    .line 835
    goto :goto_0

    .line 848
    .restart local v3    # "i":I
    .restart local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v5    # "isUpdating":Z
    .restart local v7    # "needPopulate":Z
    .restart local v8    # "newCurrItem":I
    .restart local v9    # "newPos":I
    :cond_2
    const/4 v12, -0x2

    if-ne v9, v12, :cond_4

    .line 849
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 850
    add-int/lit8 v3, v3, -0x1

    .line 852
    if-nez v5, :cond_3

    .line 853
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 854
    const/4 v5, 0x1

    .line 857
    :cond_3
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v13, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v14, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v12, p0, v13, v14}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 858
    const/4 v7, 0x1

    .line 860
    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget v13, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v12, v13, :cond_0

    .line 862
    iget v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 863
    const/4 v7, 0x1

    goto :goto_2

    .line 868
    :cond_4
    iget v12, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eq v12, v9, :cond_0

    .line 869
    iget v12, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v12, v13, :cond_5

    .line 871
    move v8, v9

    .line 874
    :cond_5
    iput v9, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 875
    const/4 v7, 0x1

    goto :goto_2

    .line 879
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v9    # "newPos":I
    :cond_6
    if-eqz v5, :cond_7

    .line 880
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v12, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 883
    :cond_7
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    sget-object v13, Lcom/letv/leui/widget/slide/LeSlidePager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 885
    if-eqz v7, :cond_a

    .line 887
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v2

    .line 888
    .local v2, "childCount":I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_9

    .line 889
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 890
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 891
    .local v6, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v12, v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v12, :cond_8

    .line 892
    const/4 v12, 0x0

    iput v12, v6, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 888
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 896
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_9
    invoke-virtual {p0, v8, v11, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 897
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    .line 899
    .end local v2    # "childCount":I
    :cond_a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2446
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2686
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_0

    .line 2687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    .line 2703
    :goto_0
    return v4

    .line 2691
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 2692
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2693
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2694
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2695
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v3

    .line 2696
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2698
    const/4 v4, 0x1

    goto :goto_0

    .line 2692
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2703
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 753
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 754
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 755
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 741
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 742
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 743
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 746
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2270
    iget-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    if-nez v9, :cond_0

    .line 2271
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2274
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2275
    .local v7, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2276
    iget v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v2, v9

    .line 2277
    .local v2, "initialVelocity":I
    iput-boolean v11, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 2278
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v8

    .line 2279
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v5

    .line 2280
    .local v5, "scrollX":I
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    .line 2281
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2282
    .local v0, "currentPage":I
    int-to-float v9, v5

    int-to-float v10, v8

    div-float/2addr v9, v10

    iget v10, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    div-float v4, v9, v10

    .line 2283
    .local v4, "pageOffset":F
    iget v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    iget v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    sub-float/2addr v9, v10

    float-to-int v6, v9

    .line 2284
    .local v6, "totalDelta":I
    invoke-direct {p0, v0, v4, v2, v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->determineTargetPage(IFII)I

    move-result v3

    .line 2286
    .local v3, "nextPage":I
    invoke-virtual {p0, v3, v11, v11, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 2287
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    .line 2289
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    .line 2290
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2458
    const/4 v0, 0x0

    .line 2459
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2460
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2476
    :cond_0
    :goto_0
    return v0

    .line 2462
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .line 2463
    goto :goto_0

    .line 2465
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    .line 2466
    goto :goto_0

    .line 2468
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2469
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2470
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2471
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2460
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 2300
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 2301
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2304
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2306
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v2

    int-to-float v14, v2

    .line 2307
    .local v14, "oldScrollX":F
    sub-float v16, v14, p1

    .line 2308
    .local v16, "scrollX":F
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v17

    .line 2310
    .local v17, "width":I
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstOffset:F

    mul-float v13, v2, v3

    .line 2311
    .local v13, "leftBound":F
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastOffset:F

    mul-float v15, v2, v3

    .line 2313
    .local v15, "rightBound":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2314
    .local v11, "firstItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2315
    .local v12, "lastItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v2, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-eqz v2, :cond_1

    .line 2316
    iget v2, v11, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v13, v2, v3

    .line 2318
    :cond_1
    iget v2, v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2319
    iget v2, v12, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float v15, v2, v3

    .line 2322
    :cond_2
    cmpg-float v2, v16, v13

    if-gez v2, :cond_4

    .line 2323
    move/from16 v16, v13

    .line 2328
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v16, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2329
    move/from16 v0, v16

    float-to-int v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 2330
    move/from16 v0, v16

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->pageScrolled(I)Z

    .line 2333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2334
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 2336
    .local v10, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2337
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 2338
    return-void

    .line 2324
    .end local v4    # "time":J
    .end local v10    # "ev":Landroid/view/MotionEvent;
    :cond_4
    cmpl-float v2, v16, v15

    if-lez v2, :cond_3

    .line 2325
    move/from16 v16, v15

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2708
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2723
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2713
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 629
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, p1, -0x1

    sub-int v0, v2, p2

    .line 630
    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    iget v1, v2, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->childIndex:I

    .line 631
    .local v1, "result":I
    return v1

    .end local v0    # "index":I
    .end local v1    # "result":I
    :cond_0
    move v0, p2

    .line 629
    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 2922
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1329
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1330
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1331
    :cond_0
    const/4 v1, 0x0

    .line 1335
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 1333
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1335
    :cond_2
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1319
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1320
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v3, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1324
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_1
    return-object v1

    .line 1318
    .restart local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1340
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 1341
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v2, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1345
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_1
    return-object v1

    .line 1339
    .restart local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1345
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    .line 332
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlidePager;->setWillNotDraw(Z)V

    .line 333
    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setDescendantFocusability(I)V

    .line 334
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setFocusable(Z)V

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 336
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/letv/leui/widget/slide/LeSlidePager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    .line 337
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 338
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 340
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    .line 341
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMinimumVelocity:I

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    .line 344
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFlingDistance:I

    .line 345
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCloseEnough:I

    .line 346
    mul-float v3, v5, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDefaultGutterSize:I

    .line 347
    mul-float v3, v5, v2

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mShadowsHeight:F

    .line 349
    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEdgeSize:I

    .line 351
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$MyAccessibilityDelegate;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 353
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 355
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->setImportantForAccessibility(I)V

    .line 359
    :cond_0
    new-instance v3, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/slide/LeSlidePager$DepthPageTransformer;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V

    invoke-virtual {p0, v6, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setPageTransformer(ZLcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;)V

    .line 360
    return-void
.end method

.method public isDisableStateSaving()Z
    .locals 1

    .prologue
    .line 2906
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    return v0
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 2350
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 2978
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1350
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 1352
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 365
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 366
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2184
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2187
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v13, :cond_2

    .line 2188
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v10

    .line 2189
    .local v10, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v11

    .line 2191
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    int-to-float v14, v11

    div-float v7, v13, v14

    .line 2192
    .local v7, "marginOffset":F
    const/4 v5, 0x0

    .line 2193
    .local v5, "itemIndex":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 2194
    .local v3, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v8, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    .line 2195
    .local v8, "offset":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2196
    .local v4, "itemCount":I
    iget v2, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2197
    .local v2, "firstPos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    iget v6, v13, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2198
    .local v6, "lastPos":I
    move v9, v2

    .local v9, "pos":I
    :goto_0
    if-ge v9, v6, :cond_2

    .line 2199
    :goto_1
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-le v9, v13, :cond_0

    if-ge v5, v4, :cond_0

    .line 2200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    goto :goto_1

    .line 2204
    :cond_0
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    if-ne v9, v13, :cond_3

    .line 2205
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v14, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2206
    .local v1, "drawAt":F
    iget v13, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    iget v14, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v14

    add-float v8, v13, v7

    .line 2213
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v1

    int-to-float v14, v10

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    .line 2214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v1

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mBottomPageBounds:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2219
    :cond_1
    add-int v13, v10, v11

    int-to-float v13, v13

    cmpl-float v13, v1, v13

    if-lez v13, :cond_4

    .line 2224
    .end local v1    # "drawAt":F
    .end local v2    # "firstPos":I
    .end local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v4    # "itemCount":I
    .end local v5    # "itemIndex":I
    .end local v6    # "lastPos":I
    .end local v7    # "marginOffset":F
    .end local v8    # "offset":F
    .end local v9    # "pos":I
    .end local v10    # "scrollX":I
    .end local v11    # "width":I
    :cond_2
    return-void

    .line 2208
    .restart local v2    # "firstPos":I
    .restart local v3    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemIndex":I
    .restart local v6    # "lastPos":I
    .restart local v7    # "marginOffset":F
    .restart local v8    # "offset":F
    .restart local v9    # "pos":I
    .restart local v10    # "scrollX":I
    .restart local v11    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v13, v9}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2209
    .local v12, "widthFactor":F
    add-float v13, v8, v12

    int-to-float v14, v11

    mul-float v1, v13, v14

    .line 2210
    .restart local v1    # "drawAt":F
    add-float v13, v12, v7

    add-float/2addr v8, v13

    goto :goto_2

    .line 2198
    .end local v12    # "widthFactor":F
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1779
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1780
    const/4 v0, 0x0

    .line 1927
    :goto_0
    return v0

    .line 1784
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 1787
    .local v6, "action":I
    const/4 v0, 0x3

    if-eq v6, v0, :cond_1

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 1790
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1792
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1793
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1794
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1797
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1802
    :cond_3
    if-eqz v6, :cond_5

    .line 1803
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    .line 1805
    const/4 v0, 0x1

    goto :goto_0

    .line 1807
    :cond_4
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_5

    .line 1809
    const/4 v0, 0x0

    goto :goto_0

    .line 1813
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 1918
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_7

    .line 1919
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1921
    :cond_7
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1927
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1824
    :sswitch_0
    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1825
    .local v7, "activePointerId":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 1830
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 1832
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_8

    .line 1833
    const-string v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent ACTION_MOVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1837
    :cond_8
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 1838
    .local v10, "x":F
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 1839
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1840
    .local v11, "xDiff":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 1841
    .local v12, "y":F
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 1845
    .local v13, "yDiff":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    invoke-direct {p0, v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mEdgeSize:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    .line 1848
    :cond_a
    iput v10, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1849
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1850
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1851
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1857
    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_c

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    int-to-float v0, v0

    cmpg-float v0, v13, v0

    if-gez v0, :cond_c

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pointInRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1861
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1862
    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_d

    .line 1864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1865
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1866
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 1867
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_e

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1869
    iput v12, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1870
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1873
    :cond_d
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 1875
    invoke-direct {p0, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1876
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1867
    :cond_e
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1887
    .end local v7    # "activePointerId":I
    .end local v8    # "dx":F
    .end local v9    # "pointerIndex":I
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUnableToDrag:Z

    .line 1892
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1893
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCloseEnough:I

    if-le v0, v1, :cond_f

    .line 1896
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1898
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1901
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1903
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 1904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1914
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1813
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v9

    .line 1491
    .local v9, "count":I
    sub-int v24, p4, p2

    .line 1492
    .local v24, "width":I
    sub-int v11, p5, p3

    .line 1493
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v19

    .line 1494
    .local v19, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingTop()I

    move-result v21

    .line 1495
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v20

    .line 1496
    .local v20, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingBottom()I

    move-result v18

    .line 1497
    .local v18, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v22

    .line 1499
    .local v22, "scrollX":I
    const/4 v10, 0x0

    .line 1503
    .local v10, "decorCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_1

    .line 1504
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1505
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1506
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1507
    .local v17, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    const/4 v6, 0x0

    .line 1508
    .local v6, "childLeft":I
    const/4 v7, 0x0

    .line 1509
    .local v7, "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 1510
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v13, v26, 0x7

    .line 1511
    .local v13, "hgrav":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v23, v26, 0x70

    .line 1512
    .local v23, "vgrav":I
    packed-switch v13, :pswitch_data_0

    .line 1514
    :pswitch_0
    move/from16 v6, v19

    .line 1529
    :goto_1
    sparse-switch v23, :sswitch_data_0

    .line 1531
    move/from16 v7, v21

    .line 1546
    :goto_2
    add-int v6, v6, v22

    .line 1547
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1550
    add-int/lit8 v10, v10, 0x1

    .line 1503
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1517
    .restart local v6    # "childLeft":I
    .restart local v7    # "childTop":I
    .restart local v13    # "hgrav":I
    .restart local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v23    # "vgrav":I
    :pswitch_1
    move/from16 v6, v19

    .line 1518
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v19, v19, v26

    .line 1519
    goto :goto_1

    .line 1521
    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    sub-int v26, v24, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1523
    goto :goto_1

    .line 1525
    :pswitch_3
    sub-int v26, v24, v20

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v6, v26, v27

    .line 1526
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v20, v20, v26

    goto :goto_1

    .line 1534
    :sswitch_0
    move/from16 v7, v21

    .line 1535
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v21, v21, v26

    .line 1536
    goto :goto_2

    .line 1538
    :sswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    sub-int v26, v11, v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1540
    goto :goto_2

    .line 1542
    :sswitch_2
    sub-int v26, v11, v18

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 1543
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    add-int v18, v18, v26

    goto :goto_2

    .line 1555
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v13    # "hgrav":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v23    # "vgrav":I
    :cond_1
    sub-int v26, v24, v19

    sub-int v8, v26, v20

    .line 1557
    .local v8, "childWidth":I
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_4

    .line 1558
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1559
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    .line 1560
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1562
    .restart local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v26, v0

    if-nez v26, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v15

    .local v15, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v15, :cond_3

    .line 1563
    int-to-float v0, v8

    move/from16 v26, v0

    iget v0, v15, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1564
    .local v16, "loff":I
    add-int v6, v19, v16

    .line 1565
    .restart local v6    # "childLeft":I
    move/from16 v7, v21

    .line 1566
    .restart local v7    # "childTop":I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1569
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->needsMeasure:Z

    .line 1570
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    .line 1573
    .local v25, "widthSpec":I
    sub-int v26, v11, v21

    sub-int v26, v26, v18

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1576
    .local v12, "heightSpec":I
    move/from16 v0, v25

    invoke-virtual {v5, v0, v12}, Landroid/view/View;->measure(II)V

    .line 1581
    .end local v12    # "heightSpec":I
    .end local v25    # "widthSpec":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    add-int v26, v26, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v27

    add-int v27, v27, v7

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1557
    .end local v6    # "childLeft":I
    .end local v7    # "childTop":I
    .end local v15    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v16    # "loff":I
    .end local v17    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 1587
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mTopPageBounds:I

    .line 1588
    sub-int v26, v11, v18

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mBottomPageBounds:I

    .line 1589
    move-object/from16 v0, p0

    iput v10, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDecorChildCount:I

    .line 1591
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    .line 1594
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 1595
    return-void

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1529
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1361
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDefaultSize(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getDefaultSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setMeasuredDimension(II)V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredWidth()I

    move-result v15

    .line 1365
    .local v15, "measuredWidth":I
    div-int/lit8 v14, v15, 0xa

    .line 1366
    .local v14, "maxGutterSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDefaultGutterSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mGutterSize:I

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v21

    sub-int v21, v15, v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v22

    sub-int v5, v21, v22

    .line 1370
    .local v5, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getMeasuredHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 1377
    .local v4, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v16

    .line 1378
    .local v16, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_a

    .line 1379
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1380
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 1381
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1382
    .local v13, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    if-eqz v13, :cond_5

    iget-boolean v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 1383
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v11, v21, 0x7

    .line 1384
    .local v11, "hgrav":I
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v17, v21, 0x70

    .line 1385
    .local v17, "vgrav":I
    const/high16 v18, -0x80000000

    .line 1386
    .local v18, "widthMode":I
    const/high16 v8, -0x80000000

    .line 1387
    .local v8, "heightMode":I
    const/16 v21, 0x30

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x50

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1388
    .local v7, "consumeVertical":Z
    :goto_1
    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v11, v0, :cond_1

    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    :cond_1
    const/4 v6, 0x1

    .line 1390
    .local v6, "consumeHorizontal":Z
    :goto_2
    if-eqz v7, :cond_8

    .line 1391
    const/high16 v18, 0x40000000    # 2.0f

    .line 1396
    :cond_2
    :goto_3
    move/from16 v19, v5

    .line 1397
    .local v19, "widthSize":I
    move v9, v4

    .line 1398
    .local v9, "heightSize":I
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1399
    const/high16 v18, 0x40000000    # 2.0f

    .line 1400
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1401
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->width:I

    move/from16 v19, v0

    .line 1404
    :cond_3
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1405
    const/high16 v8, 0x40000000    # 2.0f

    .line 1406
    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1407
    iget v9, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->height:I

    .line 1410
    :cond_4
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1411
    .local v20, "widthSpec":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1412
    .local v10, "heightSpec":I
    move/from16 v0, v20

    invoke-virtual {v3, v0, v10}, Landroid/view/View;->measure(II)V

    .line 1414
    if-eqz v7, :cond_9

    .line 1415
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v4, v4, v21

    .line 1378
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_5
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1387
    .restart local v8    # "heightMode":I
    .restart local v11    # "hgrav":I
    .restart local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v17    # "vgrav":I
    .restart local v18    # "widthMode":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 1388
    .restart local v7    # "consumeVertical":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 1392
    .restart local v6    # "consumeHorizontal":Z
    :cond_8
    if-eqz v6, :cond_2

    .line 1393
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_3

    .line 1416
    .restart local v9    # "heightSize":I
    .restart local v10    # "heightSpec":I
    .restart local v19    # "widthSize":I
    .restart local v20    # "widthSpec":I
    :cond_9
    if-eqz v6, :cond_5

    .line 1417
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    sub-int v5, v5, v21

    goto :goto_4

    .line 1423
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "consumeHorizontal":Z
    .end local v7    # "consumeVertical":Z
    .end local v8    # "heightMode":I
    .end local v9    # "heightSize":I
    .end local v10    # "heightSpec":I
    .end local v11    # "hgrav":I
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v17    # "vgrav":I
    .end local v18    # "widthMode":I
    .end local v19    # "widthSize":I
    .end local v20    # "widthSpec":I
    :cond_a
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildWidthMeasureSpec:I

    .line 1424
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildHeightMeasureSpec:I

    .line 1427
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1429
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v16

    .line 1433
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_d

    .line 1434
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1435
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 1439
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1440
    .restart local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1441
    :cond_b
    int-to-float v0, v5

    move/from16 v21, v0

    iget v0, v13, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 1443
    .restart local v20    # "widthSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mChildHeightMeasureSpec:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1433
    .end local v13    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v20    # "widthSpec":I
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1447
    .end local v3    # "child":Landroid/view/View;
    :cond_d
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    .line 1663
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDecorChildCount:I

    if-lez v15, :cond_2

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v12

    .line 1665
    .local v12, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v10

    .line 1666
    .local v10, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v11

    .line 1667
    .local v11, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v14

    .line 1668
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v4

    .line 1669
    .local v4, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 1670
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1671
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1672
    .local v9, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-nez v15, :cond_1

    .line 1669
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1674
    :cond_1
    iget v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->gravity:I

    and-int/lit8 v7, v15, 0x7

    .line 1675
    .local v7, "hgrav":I
    const/4 v5, 0x0

    .line 1676
    .local v5, "childLeft":I
    packed-switch v7, :pswitch_data_0

    .line 1678
    :pswitch_0
    move v5, v10

    .line 1693
    :goto_2
    add-int/2addr v5, v12

    .line 1695
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v6, v5, v15

    .line 1696
    .local v6, "childOffset":I
    if-eqz v6, :cond_0

    .line 1697
    invoke-virtual {v3, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1681
    .end local v6    # "childOffset":I
    :pswitch_1
    move v5, v10

    .line 1682
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v10, v15

    .line 1683
    goto :goto_2

    .line 1685
    :pswitch_2
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v15, v14, v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1687
    goto :goto_2

    .line 1689
    :pswitch_3
    sub-int v15, v14, v11

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    sub-int v5, v15, v16

    .line 1690
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v11, v15

    goto :goto_2

    .line 1702
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v5    # "childLeft":I
    .end local v7    # "hgrav":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v10    # "paddingLeft":I
    .end local v11    # "paddingRight":I
    .end local v12    # "scrollX":I
    .end local v14    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v15, :cond_3

    .line 1703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1705
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v15, :cond_4

    .line 1706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v15, v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1709
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v15, :cond_6

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v12

    .line 1711
    .restart local v12    # "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v4

    .line 1712
    .restart local v4    # "childCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v4, :cond_6

    .line 1713
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1714
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1716
    .restart local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    iget-boolean v15, v9, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_5

    .line 1712
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1718
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int/2addr v15, v12

    int-to-float v15, v15

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 1719
    .local v13, "transformPos":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    invoke-interface {v15, v3, v13}, Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;->transformPage(Landroid/view/View;F)V

    goto :goto_4

    .line 1723
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v8    # "i":I
    .end local v9    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .end local v12    # "scrollX":I
    .end local v13    # "transformPos":F
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCalledSuper:Z

    .line 1724
    return-void

    .line 1676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2659
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    .line 2660
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 2661
    const/4 v6, 0x0

    .line 2662
    .local v6, "index":I
    const/4 v5, 0x1

    .line 2663
    .local v5, "increment":I
    move v2, v1

    .line 2669
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 2670
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2671
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 2672
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v4

    .line 2673
    .local v4, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2674
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2675
    const/4 v7, 0x1

    .line 2680
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_2
    return v7

    .line 2665
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 2666
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 2667
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 2669
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 2680
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1264
    instance-of v1, p1, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    if-nez v1, :cond_0

    .line 1265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1280
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1269
    check-cast v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    .line 1270
    .local v0, "ss":Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1272
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1274
    iget v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1276
    :cond_1
    iget v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    iput v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 1277
    iget-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1278
    iget-object v1, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1253
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1254
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1255
    .local v0, "ss":Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iput v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    .line 1256
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v2}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1259
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1451
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1454
    if-eq p1, p3, :cond_0

    .line 1455
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->recomputeScrollPosition(IIII)V

    .line 1457
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1932
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFakeDragging:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1936
    const/16 v24, 0x1

    .line 2057
    :goto_0
    return v24

    .line 1939
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v24

    if-eqz v24, :cond_1

    .line 1942
    const/16 v24, 0x0

    goto :goto_0

    .line 1945
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 1947
    :cond_2
    const/16 v24, 0x0

    goto :goto_0

    .line 1950
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScrollState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1951
    const/16 v24, 0x1

    goto :goto_0

    .line 1953
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 1954
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1956
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1958
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1959
    .local v5, "action":I
    const/4 v11, 0x0

    .line 1961
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2054
    :cond_6
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_7

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    .line 2057
    :cond_7
    const/16 v24, 0x1

    goto :goto_0

    .line 1963
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1964
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 1968
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1969
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionY:F

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1970
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    goto :goto_1

    .line 1974
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 1975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 1976
    .local v15, "pointerIndex":I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v15, v0, :cond_8

    .line 1977
    const/4 v15, 0x0

    .line 1978
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 1980
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 1981
    .local v20, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 1982
    .local v21, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    .line 1983
    .local v22, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    move/from16 v24, v0

    sub-float v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 1986
    .local v23, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v21, v24

    if-lez v24, :cond_9

    .line 1988
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    .line 1989
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 1992
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionY:F

    .line 1993
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 1994
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    .line 1998
    .local v14, "parent":Landroid/view/ViewParent;
    if-eqz v14, :cond_9

    .line 1999
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2005
    .end local v14    # "parent":Landroid/view/ViewParent;
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2007
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2008
    .local v6, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2009
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->performDrag(F)Z

    move-result v24

    or-int v11, v11, v24

    .line 2010
    goto/16 :goto_1

    .line 1990
    .end local v6    # "activePointerIndex":I
    .restart local v15    # "pointerIndex":I
    .restart local v21    # "xDiff":F
    .restart local v22    # "y":F
    .restart local v23    # "yDiff":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    goto :goto_2

    .line 2013
    .end local v15    # "pointerIndex":I
    .end local v20    # "x":F
    .end local v21    # "xDiff":F
    .end local v22    # "y":F
    .end local v23    # "yDiff":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2015
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v24, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaximumVelocity:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2016
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v10, v0

    .line 2017
    .local v10, "initialVelocity":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 2018
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v19

    .line 2019
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v16

    .line 2020
    .local v16, "scrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForCurrentScrollPosition()Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v8

    .line 2021
    .local v8, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget v7, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    .line 2022
    .local v7, "currentPage":I
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    iget v0, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->offset:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    iget v0, v8, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v25, v0

    div-float v13, v24, v25

    .line 2023
    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 2025
    .restart local v6    # "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2026
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInitialMotionX:F

    move/from16 v24, v0

    sub-float v24, v20, v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2027
    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v13, v10, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->determineTargetPage(IFII)I

    move-result v12

    .line 2029
    .local v12, "nextPage":I
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 2031
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2032
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    goto/16 :goto_1

    .line 2036
    .end local v6    # "activePointerIndex":I
    .end local v7    # "currentPage":I
    .end local v8    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v10    # "initialVelocity":I
    .end local v12    # "nextPage":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v17    # "totalDelta":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v19    # "width":I
    .end local v20    # "x":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsBeingDragged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2037
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    .line 2038
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    .line 2039
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->endDrag()V

    goto/16 :goto_1

    .line 2043
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 2044
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    .line 2045
    .restart local v20    # "x":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    .line 2046
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2050
    .end local v9    # "index":I
    .end local v20    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mActivePointerId:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2572
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2573
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2580
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v2}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2581
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pop()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->pop(Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public pop(Z)Landroid/app/Fragment;
    .locals 4
    .param p1, "smoothScroll"    # Z

    .prologue
    .line 2967
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->checkJumpToFinalState()V

    .line 2968
    const/4 v0, 0x0

    .line 2969
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 2970
    .local v1, "item":I
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 2971
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f":Landroid/app/Fragment;
    check-cast v0, Landroid/app/Fragment;

    .line 2973
    .restart local v0    # "f":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2974
    return-object v0
.end method

.method populate()V
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate(I)V

    .line 903
    return-void
.end method

.method populate(I)V
    .locals 30
    .param p1, "newCurrentItem"    # I

    .prologue
    .line 906
    const/16 v21, 0x0

    .line 907
    .local v21, "oldCurInfo":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v15, 0x2

    .line 908
    .local v15, "focusDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-eq v0, v1, :cond_0

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    const/16 v15, 0x42

    .line 910
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForPosition(I)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v21

    .line 911
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 914
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    .line 1095
    :cond_1
    :goto_1
    return-void

    .line 909
    :cond_2
    const/16 v15, 0x11

    goto :goto_0

    .line 923
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    goto :goto_1

    .line 932
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    move/from16 v22, v0

    .line 939
    .local v22, "pageLimit":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 940
    .local v26, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v4

    .line 944
    .local v4, "N":I
    add-int/lit8 v27, v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 947
    .local v12, "endPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v4, v0, :cond_5

    .line 950
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 954
    .local v24, "resName":Ljava/lang/String;
    :goto_2
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "The application\'s LePagerAdapter changed the adapter\'s contents without calling LePagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager id: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Pager class: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Problematic adapter: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 951
    .end local v24    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 952
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "resName":Ljava/lang/String;
    goto :goto_2

    .line 963
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v24    # "resName":Ljava/lang/String;
    :cond_5
    const/4 v8, -0x1

    .line 964
    .local v8, "curIndex":I
    const/4 v9, 0x0

    .line 965
    .local v9, "curItem":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 967
    .local v17, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 968
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    move-object/from16 v9, v17

    .line 973
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_6
    if-nez v9, :cond_7

    if-lez v4, :cond_7

    .line 974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v9

    .line 980
    :cond_7
    if-eqz v9, :cond_b

    .line 981
    const/4 v13, 0x0

    .line 982
    .local v13, "extraWidthLeft":F
    add-int/lit8 v18, v8, -0x1

    .line 983
    .local v18, "itemIndex":I
    if-ltz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    .line 984
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v7

    .line 988
    .local v7, "clientWidth":I
    if-gtz v7, :cond_f

    const/16 v19, 0x0

    .line 990
    .local v19, "leftWidthNeeded":F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, -0x1

    .local v23, "pos":I
    :goto_6
    if-ltz v23, :cond_9

    .line 991
    cmpl-float v27, v13, v19

    if-ltz v27, :cond_13

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUsingInnerAdapter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 992
    :cond_8
    if-nez v17, :cond_10

    .line 1019
    :cond_9
    iget v14, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    .line 1020
    .local v14, "extraWidthRight":F
    add-int/lit8 v18, v8, 0x1

    .line 1021
    const/high16 v27, 0x40000000    # 2.0f

    cmpg-float v27, v14, v27

    if-gez v27, :cond_a

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    .line 1023
    :goto_7
    if-gtz v7, :cond_18

    const/16 v25, 0x0

    .line 1025
    .local v25, "rightWidthNeeded":F
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v23, v27, 0x1

    :goto_9
    move/from16 v0, v23

    if-ge v0, v4, :cond_a

    .line 1026
    cmpl-float v27, v14, v25

    if-ltz v27, :cond_1b

    move/from16 v0, v23

    if-le v0, v12, :cond_1b

    .line 1027
    if-nez v17, :cond_19

    .line 1048
    .end local v25    # "rightWidthNeeded":F
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v8, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->calculatePageOffsets(Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;ILcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;)V

    .line 1058
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v29, v0

    if-eqz v9, :cond_1d

    iget-object v0, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v27, v0

    :goto_a
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v6

    .line 1065
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b
    move/from16 v0, v16

    if-ge v0, v6, :cond_1e

    .line 1066
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1067
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;

    .line 1068
    .local v20, "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->childIndex:I

    .line 1069
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->isDecor:Z

    move/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, v20

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_c

    .line 1071
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1072
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    if-eqz v17, :cond_c

    .line 1073
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->widthFactor:F

    .line 1074
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;->position:I

    .line 1065
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 965
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v16    # "i":I
    .end local v20    # "lp":Lcom/letv/leui/widget/slide/LeSlidePager$LayoutParams;
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 983
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .restart local v13    # "extraWidthLeft":F
    .restart local v18    # "itemIndex":I
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 988
    .restart local v7    # "clientWidth":I
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_f
    const/high16 v27, 0x40000000    # 2.0f

    iget v0, v9, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingLeft()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v7

    move/from16 v29, v0

    div-float v28, v28, v29

    add-float v19, v27, v28

    goto/16 :goto_5

    .line 995
    .restart local v19    # "leftWidthNeeded":F
    .restart local v23    # "pos":I
    :cond_10
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_11

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1002
    add-int/lit8 v18, v18, -0x1

    .line 1003
    add-int/lit8 v8, v8, -0x1

    .line 1004
    if-ltz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    .line 990
    :cond_11
    :goto_c
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 1004
    :cond_12
    const/16 v17, 0x0

    goto :goto_c

    .line 1006
    :cond_13
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1007
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1008
    add-int/lit8 v18, v18, -0x1

    .line 1009
    if-ltz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    :goto_d
    goto :goto_c

    :cond_14
    const/16 v17, 0x0

    goto :goto_d

    .line 1011
    :cond_15
    add-int/lit8 v27, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeSlidePager;->addNewItem(II)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1012
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->widthFactor:F

    move/from16 v27, v0

    add-float v13, v13, v27

    .line 1013
    add-int/lit8 v8, v8, 0x1

    .line 1014
    if-ltz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    :goto_e
    goto :goto_c

    :cond_16
    const/16 v17, 0x0

    goto :goto_e

    .line 1022
    .restart local v14    # "extraWidthRight":F
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1023
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getPaddingRight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v7

    move/from16 v28, v0

    div-float v27, v27, v28

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v25, v27, v28

    goto/16 :goto_8

    .line 1030
    .restart local v25    # "rightWidthNeeded":F
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUsingInnerAdapter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 1041
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-object/from16 v17, v27

    .line 1025
    :cond_1b
    :goto_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 1041
    :cond_1c
    const/16 v17, 0x0

    goto :goto_f

    .line 1058
    .end local v7    # "clientWidth":I
    .end local v13    # "extraWidthLeft":F
    .end local v14    # "extraWidthRight":F
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    .end local v18    # "itemIndex":I
    .end local v19    # "leftWidthNeeded":F
    .end local v23    # "pos":I
    .end local v25    # "rightWidthNeeded":F
    :cond_1d
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 1078
    .restart local v6    # "childCount":I
    .restart local v16    # "i":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->sortChildDrawingOrder()V

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->hasFocus()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->findFocus()Landroid/view/View;

    move-result-object v10

    .line 1082
    .local v10, "currentFocused":Landroid/view/View;
    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForAnyChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1083
    .restart local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :goto_10
    if-eqz v17, :cond_1f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1084
    :cond_1f
    const/16 v16, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 1085
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1086
    .restart local v5    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/slide/LeSlidePager;->infoForChild(Landroid/view/View;)Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    move-result-object v17

    .line 1087
    if-eqz v17, :cond_20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 1088
    invoke-virtual {v5, v15}, Landroid/view/View;->requestFocus(I)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1084
    :cond_20
    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    .line 1082
    .end local v5    # "child":Landroid/view/View;
    .end local v17    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_21
    const/16 v17, 0x0

    goto :goto_10
.end method

.method public push(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2931
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->push(Landroid/app/Fragment;Z)V

    .line 2932
    return-void

    .line 2931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public push(Landroid/app/Fragment;Z)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 2943
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->checkJumpToFinalState()V

    .line 2944
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2945
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 2946
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2947
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItem(IZ)V

    .line 2949
    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1311
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeViewInLayout(Landroid/view/View;)V

    .line 1315
    :goto_0
    return-void

    .line 1313
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3006
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->notifyDataSetChanged()V

    .line 3007
    return-void
.end method

.method public setAdapter(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V
    .locals 10
    .param p1, "adapter"    # Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 389
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v4, :cond_1

    .line 390
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 391
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    .line 394
    .local v1, "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v5, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->position:I

    iget-object v6, v1, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "ii":Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4, p0}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 397
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFragmentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 399
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->removeNonDecorViews()V

    .line 400
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 401
    invoke-virtual {p0, v7, v7}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollTo(II)V

    .line 404
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .line 405
    .local v2, "oldAdapter":Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    .line 406
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 408
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    if-nez v4, :cond_2

    .line 410
    new-instance v4, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-direct {v4, p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;Lcom/letv/leui/widget/slide/LeSlidePager$1;)V

    iput-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    .line 412
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mObserver:Lcom/letv/leui/widget/slide/LeSlidePager$PagerObserver;

    invoke-virtual {v4, v5}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 413
    iput-boolean v7, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 414
    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 415
    .local v3, "wasFirstLayout":Z
    iput-boolean v9, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    .line 416
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mExpectedAdapterCount:I

    .line 417
    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    if-ltz v4, :cond_5

    .line 418
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v5, v6}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 419
    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    invoke-virtual {p0, v4, v7, v9}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 420
    const/4 v4, -0x1

    iput v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredCurItem:I

    .line 421
    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 422
    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 430
    .end local v3    # "wasFirstLayout":Z
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    if-eqz v4, :cond_4

    if-eq v2, p1, :cond_4

    .line 431
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    invoke-interface {v4, v2, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;->onAdapterChanged(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V

    .line 433
    :cond_4
    return-void

    .line 423
    .restart local v3    # "wasFirstLayout":Z
    :cond_5
    if-nez v3, :cond_6

    .line 424
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setChildrenDrawingOrderEnabled(Z)V

    .line 625
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 472
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 473
    return-void

    :cond_0
    move v0, v1

    .line 472
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPopulatePending:Z

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZ)V

    .line 484
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setCurrentItemInternal(IZZI)V

    .line 492
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 495
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 496
    :cond_0
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 535
    :goto_0
    return-void

    .line 499
    :cond_1
    if-nez p3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ne v3, p1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 500
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 504
    :cond_2
    if-gez p1, :cond_5

    .line 505
    const/4 p1, 0x0

    .line 509
    :cond_3
    :goto_1
    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 510
    .local v2, "pageLimit":I
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-gt p1, v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-ge p1, v3, :cond_6

    .line 514
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 515
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;

    iput-boolean v0, v3, Lcom/letv/leui/widget/slide/LeSlidePager$ItemInfo;->scrolling:Z

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 506
    .end local v1    # "i":I
    .end local v2    # "pageLimit":I
    :cond_5
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 507
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    goto :goto_1

    .line 518
    .restart local v2    # "pageLimit":I
    :cond_6
    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    if-eq v3, p1, :cond_9

    .line 520
    .local v0, "dispatchSelected":Z
    :goto_3
    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mFirstLayout:Z

    if-eqz v3, :cond_a

    .line 523
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    .line 524
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_7

    .line 525
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 527
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    if-eqz v3, :cond_8

    .line 528
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;->onPageSelected(I)V

    .line 530
    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_9
    move v0, v4

    .line 518
    goto :goto_3

    .line 532
    .restart local v0    # "dispatchSelected":Z
    :cond_a
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate(I)V

    .line 533
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->scrollToItem(IZIZ)V

    goto :goto_0
.end method

.method public setDisableStateSaving(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 2902
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDisableStateSaving:Z

    .line 2903
    return-void
.end method

.method public setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "mgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 3016
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mIsUsingInnerAdapter:Z

    .line 3017
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMgr:Landroid/app/FragmentManager;

    .line 3018
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/slide/LeSlidePager$ScreenSlidePagerAdapter;-><init>(Lcom/letv/leui/widget/slide/LeSlidePager;Landroid/app/FragmentManager;)V

    .line 3019
    .local v0, "mPagerAdapter":Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setAdapter(Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;)V

    .line 3020
    return-void
.end method

.method setInternalPageChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;)Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 642
    .local v0, "oldListener":Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mInternalPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 643
    return-object v0
.end method

.method public setMaxSettleDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 2910
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    .line 2911
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 675
    if-ge p1, v3, :cond_0

    .line 676
    const-string v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 p1, 0x1

    .line 680
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 681
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOffscreenPageLimit:I

    .line 682
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 684
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapterChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnAdapterChangeListener;

    .line 457
    return-void
.end method

.method public setOnPageChangeListener(Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mOnPageChangeListener:Lcom/letv/leui/widget/slide/LeSlidePager$OnPageChangeListener;

    .line 577
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 695
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    .line 696
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    .line 698
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getWidth()I

    move-result v1

    .line 699
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->recomputeScrollPosition(IIII)V

    .line 701
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->requestLayout()V

    .line 702
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 732
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 720
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->refreshDrawableState()V

    .line 721
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setWillNotDraw(Z)V

    .line 722
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->invalidate()V

    .line 723
    return-void

    .line 721
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer(ZLcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;)V
    .locals 6
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 592
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 593
    if-eqz p2, :cond_2

    move v0, v2

    .line 594
    .local v0, "hasTransformer":Z
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    if-eq v0, v4, :cond_4

    move v1, v2

    .line 595
    .local v1, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageTransformer:Lcom/letv/leui/widget/slide/LeSlidePager$PageTransformer;

    .line 596
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 597
    if-eqz v0, :cond_5

    .line 598
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :cond_0
    iput v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    .line 602
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 604
    .end local v0    # "hasTransformer":Z
    .end local v1    # "needsPopulate":Z
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 593
    goto :goto_0

    .restart local v0    # "hasTransformer":Z
    :cond_3
    move v4, v3

    .line 594
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    .line 600
    .restart local v1    # "needsPopulate":Z
    :cond_5
    iput v3, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mDrawingOrder:I

    goto :goto_3
.end method

.method public setRectSlopScaleInTab(IIIIFI)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "coef"    # F
    .param p6, "specTab"    # I

    .prologue
    .line 2872
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    .line 2873
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 2874
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 2875
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 2876
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2877
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mTouchSlopAdjust:I

    .line 2878
    iput p6, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    .line 2879
    const-string v0, "LeSlidePager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRectSlopScaleInTab mSpecRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", coef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mSpecTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->smoothScrollTo(III)V

    .line 766
    return-void
.end method

.method smoothScrollTo(III)V
    .locals 15
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 778
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 814
    :goto_0
    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollX()I

    move-result v2

    .line 782
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getScrollY()I

    move-result v3

    .line 783
    .local v3, "sy":I
    sub-int v4, p1, v2

    .line 784
    .local v4, "dx":I
    sub-int v5, p2, v3

    .line 785
    .local v5, "dy":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 786
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->completeScroll(Z)V

    .line 787
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 788
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    goto :goto_0

    .line 792
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollingCacheEnabled(Z)V

    .line 793
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->setScrollState(I)V

    .line 795
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->getClientWidth()I

    move-result v12

    .line 796
    .local v12, "width":I
    div-int/lit8 v9, v12, 0x2

    .line 797
    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    int-to-float v14, v12

    div-float/2addr v13, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 798
    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v13, v9

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/slide/LeSlidePager;->distanceInfluenceForSnapDuration(F)F

    move-result v14

    mul-float/2addr v13, v14

    add-float v7, v1, v13

    .line 801
    .local v7, "distance":F
    const/4 v6, 0x0

    .line 802
    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 803
    if-lez p3, :cond_2

    .line 804
    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v13, v0

    div-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 810
    :goto_1
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMaxSettleDuration:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 812
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 813
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 806
    :cond_2
    int-to-float v1, v12

    iget-object v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mAdapter:Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;

    iget v14, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mCurItem:I

    invoke-virtual {v13, v14}, Lcom/letv/leui/widget/slide/LeSlidePagerAdapter;->getPageWidth(I)F

    move-result v13

    mul-float v11, v1, v13

    .line 807
    .local v11, "pageWidth":F
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget v13, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mPageMargin:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    div-float v10, v1, v13

    .line 808
    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v1, v13

    float-to-int v6, v1

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
