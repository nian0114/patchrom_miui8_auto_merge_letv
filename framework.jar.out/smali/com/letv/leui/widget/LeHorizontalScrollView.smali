.class public Lcom/letv/leui/widget/LeHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "LeHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mCurrentOverScrollDistance:I

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLeOverScrollEnable:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNeedRestoreOverScroll:Z

.field private mOverFling:Z

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    iput v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initScrollView()V

    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setFillViewport(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v1    # "childWidth":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .local v9, "viewRight":I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v7, 0x1

    .local v7, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    move-object v1, v5

    move v3, v7

    .end local v7    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v6, 0x1

    .local v6, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_2

    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v7, :cond_7

    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_2

    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_0
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setFocusable(Z)V

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMaximumVelocity:I

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v3, v3}, Landroid/widget/OverScroller;->setEnableLeOverScroll(ZZ)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v4, 0x1

    .local v4, "handled":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v0

    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    const/4 v3, 0x1

    .local v3, "goLeft":Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v4

    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v2, p2, v0

    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    goto :goto_1

    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v1

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .local v0, "scrollDelta":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    :cond_0
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .local v0, "delta":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    return v1

    .end local v1    # "scroll":Z
    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v1    # "scroll":Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setDescendantFocusability(I)V

    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v6

    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .local v1, "daRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    sub-int v6, v1, v5

    goto :goto_1

    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .local v0, "contentWidth":I
    if-nez v1, :cond_0

    .end local v0    # "contentWidth":I
    :goto_0
    return v0

    .restart local v0    # "contentWidth":I
    :cond_0
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .local v3, "scrollRange":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "overscrollRight":I
    if-gez v4, :cond_2

    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_1

    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v3, "oldX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .local v4, "oldY":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v13

    .local v13, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .local v14, "y":I
    if-ne v3, v13, :cond_0

    if-eq v4, v14, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v5

    .local v5, "range":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getOverScrollMode()I

    move-result v12

    .local v12, "overscrollMode":I
    if-eqz v12, :cond_1

    if-ne v12, v11, :cond_4

    if-lez v5, :cond_4

    .local v11, "canOverscroll":Z
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_5

    sub-int v1, v13, v3

    sub-int v2, v14, v4

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v10

    .local v10, "atEdge":Z
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    if-eqz v10, :cond_2

    if-nez v11, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .end local v5    # "range":I
    .end local v10    # "atEdge":Z
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_3
    :goto_2
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v12    # "overscrollMode":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_4
    move v11, v6

    goto :goto_0

    .restart local v11    # "canOverscroll":Z
    :cond_5
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    if-eqz v11, :cond_2

    if-gez v13, :cond_6

    if-ltz v3, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_6
    if-le v13, v5, :cond_2

    if-gt v3, v5, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "range":I
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_7
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v5, v7

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    .local v6, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v3

    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .local v4, "screenRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_2

    add-int/2addr v3, v1

    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_3

    sub-int/2addr v4, v1

    :cond_3
    const/4 v5, 0x0

    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .local v2, "right":I
    sub-int v0, v2, v4

    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_1

    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    :goto_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v2, "scrollX":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .local v0, "height":I
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v0

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 17
    .param p1, "velocityX"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    if-lez p1, :cond_3

    const/4 v13, 0x1

    .local v13, "movingRight":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_0

    move-object/from16 v14, p0

    :cond_0
    if-eq v14, v12, :cond_1

    if-eqz v13, :cond_4

    const/16 v1, 0x42

    :goto_1
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_2
    return-void

    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_4
    const/16 v1, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .local v3, "width":I
    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .local v0, "length":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .local v0, "length":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .local v2, "span":I
    if-ge v2, v0, :cond_1

    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLeOverScrollEnable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_0
    iget-boolean v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .local v1, "hscroll":F
    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .local v0, "delta":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v4

    .local v4, "range":I
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .local v2, "newScrollX":I
    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_1
    :goto_2
    if-eq v2, v3, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_1

    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_3
    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v0

    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-lez v1, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_1

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_2

    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .local v11, "x":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .local v12, "xDiff":I
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    iput v11, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_3
    iput v11, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4

    move v3, v0

    :cond_4
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_1

    .end local v11    # "x":I
    :pswitch_3
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "restoreOffset":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->shouldRestoreOverScroll()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    :cond_0
    const/4 v14, 0x0

    .local v14, "childWidth":I
    const/4 v12, 0x0

    .local v12, "childMargins":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .local v13, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, v13, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v12, v2, v4

    .end local v13    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLaidOut()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v5

    sub-int v4, v14, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .local v17, "scrollRange":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget-boolean v4, v4, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget v2, v2, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v0, v17

    if-le v2, v0, :cond_8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .end local v17    # "scrollRange":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollTo(II)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v15, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move/from16 v16, v0

    .local v16, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v7

    .local v7, "range":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v4, v15, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    .end local v7    # "range":I
    .end local v15    # "oldX":I
    .end local v16    # "oldY":I
    :cond_5
    return-void

    .restart local v17    # "scrollRange":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    iget v2, v2, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    sub-int v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-gez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, "widthMode":I
    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 17
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v11

    .local v11, "end":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-gez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v5, v11

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    .end local v11    # "end":I
    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-gez v2, :cond_6

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->awakenScrollBars()Z

    return-void

    .restart local v11    # "end":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverflingDistance:I

    add-int/2addr v4, v11

    invoke-virtual {v2, v3, v11, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    goto :goto_0

    .end local v11    # "end":I
    :cond_3
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v12, "oldX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    .local v13, "oldY":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidateParentIfNeeded()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v12, v13}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onScrollChanged(IIII)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_1

    .end local v12    # "oldX":I
    .end local v13    # "oldY":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-lez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v16

    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingLeft()I

    move-result v14

    .local v14, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingRight()I

    move-result v15

    .local v15, "paddingRight":I
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    .local v10, "childWidth":I
    sub-int v2, v16, v14

    sub-int/2addr v2, v15

    if-le v10, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    neg-int v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v3, v16, v15

    if-ge v2, v3, :cond_7

    sub-int v2, v16, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    neg-int v3, v3

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_2

    :cond_7
    sub-int v2, v16, v14

    sub-int/2addr v2, v15

    if-gt v10, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/16 p1, 0x42

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return v1

    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    .local v0, "ss":Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSavedState:Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, "ss":Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isLayoutRtl()Z

    move-result v2

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v20

    .local v20, "action":I
    move/from16 v0, v20

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    .local v30, "parent":Landroid/view/ViewParent;
    if-eqz v30, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .end local v30    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .local v21, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    const-string v2, "HorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v33, v0

    .local v33, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    sub-int v24, v2, v33

    .local v24, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v30

    .restart local v30    # "parent":Landroid/view/ViewParent;
    if-eqz v30, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-lez v24, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    sub-int v24, v24, v2

    .end local v30    # "parent":Landroid/view/ViewParent;
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastMotionX:I

    const/16 v25, 0x0

    .local v25, "incrementalDeltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_9

    move/from16 v25, v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    if-eqz v2, :cond_9

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    mul-int v2, v2, v24

    if-lez v2, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v23, v2, v3

    .local v23, "coeff":F
    const/4 v2, 0x0

    cmpg-float v2, v23, v2

    if-gez v2, :cond_8

    const/16 v23, 0x0

    :cond_8
    move/from16 v0, v25

    int-to-float v2, v0

    mul-float v2, v2, v23

    float-to-int v0, v2

    move/from16 v25, v0

    if-lez v24, :cond_f

    if-nez v25, :cond_9

    const/16 v25, 0x1

    .end local v23    # "coeff":F
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move/from16 v27, v0

    .local v27, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    move/from16 v28, v0

    .local v28, "oldY":I
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v7

    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getOverScrollMode()I

    move-result v29

    .local v29, "overscrollMode":I
    if-eqz v29, :cond_a

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_12

    if-lez v7, :cond_12

    :cond_a
    const/16 v22, 0x1

    .local v22, "canOverscroll":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_13

    move/from16 v3, v25

    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/letv/leui/widget/LeHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    if-eqz v22, :cond_0

    add-int v31, v27, v24

    .local v31, "pulledToX":I
    if-gez v31, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    .end local v7    # "range":I
    .end local v22    # "canOverscroll":Z
    .end local v25    # "incrementalDeltaX":I
    .end local v27    # "oldX":I
    .end local v28    # "oldY":I
    .end local v29    # "overscrollMode":I
    .end local v31    # "pulledToX":I
    .restart local v30    # "parent":Landroid/view/ViewParent;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTouchSlop:I

    add-int v24, v24, v2

    goto/16 :goto_3

    .end local v30    # "parent":Landroid/view/ViewParent;
    .restart local v23    # "coeff":F
    .restart local v25    # "incrementalDeltaX":I
    :cond_f
    if-nez v25, :cond_10

    const/16 v25, -0x1

    :cond_10
    goto/16 :goto_4

    .end local v23    # "coeff":F
    :cond_11
    div-int/lit8 v25, v25, 0x2

    goto/16 :goto_4

    .restart local v7    # "range":I
    .restart local v27    # "oldX":I
    .restart local v28    # "oldY":I
    .restart local v29    # "overscrollMode":I
    :cond_12
    const/16 v22, 0x0

    goto/16 :goto_5

    .restart local v22    # "canOverscroll":Z
    :cond_13
    move/from16 v3, v24

    goto/16 :goto_6

    .restart local v31    # "pulledToX":I
    :cond_14
    move/from16 v0, v31

    if-le v0, v7, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move/from16 v0, v24

    int-to-float v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .end local v7    # "range":I
    .end local v21    # "activePointerIndex":I
    .end local v22    # "canOverscroll":Z
    .end local v24    # "deltaX":I
    .end local v25    # "incrementalDeltaX":I
    .end local v27    # "oldX":I
    .end local v28    # "oldY":I
    .end local v29    # "overscrollMode":I
    .end local v31    # "pulledToX":I
    .end local v33    # "x":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .local v32, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v26, v0

    .local v26, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_18

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-nez v2, :cond_16

    move/from16 v0, v26

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fling(I)V

    :cond_15
    :goto_8
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v12

    .local v12, "end":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    goto :goto_8

    .end local v12    # "end":I
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v12

    .restart local v12    # "end":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->invalidate()V

    goto :goto_8

    .end local v12    # "end":I
    :cond_18
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_19

    move/from16 v0, v26

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->fling(I)V

    goto :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_8

    .end local v26    # "initialVelocity":I
    .end local v32    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    :cond_1a
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

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

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeHorizontalScrollView$1;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .local v1, "right":Z
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    .local v3, "width":I
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_1
    move v1, v4

    goto :goto_0

    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .local v1, "viewportWidth":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "targetScrollX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v4, v5

    .restart local v1    # "viewportWidth":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "targetScrollX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-eq v0, v4, :cond_4

    invoke-virtual {p0, v0, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLeOverScrollEnable(Z)V
    .locals 0
    .param p1, "leOverScrollEnable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLeOverScrollEnable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mNeedRestoreOverScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mOverFling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .local v5, "width":I
    invoke-virtual {p0, v10}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .local v2, "maxX":I
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->postInvalidateOnAnimation()V

    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeHorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
