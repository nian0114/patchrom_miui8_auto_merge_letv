.class public Lcom/letv/leui/widget/CustomViewAbove;
.super Landroid/view/ViewGroup;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/CustomViewAbove$SimpleOnPageChangeListener;,
        Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final TAG:Ljava/lang/String; = "CustomViewAbove"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

.field private mContent:Landroid/view/View;

.field private mCurItem:I

.field private mEnabled:Z

.field private mFlingDistance:I

.field private mIgnoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialMotionX:F

.field private mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

.field private mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

.field private mQuickReturn:Z

.field private mScrollX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field protected mTouchMode:I

.field private mTouchSlop:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

.field private mViewOffsetLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/CustomViewAbove$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/CustomViewAbove$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/CustomViewAbove;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    iput v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    iput v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->initCustomViewAbove()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/CustomViewAbove;)Lcom/letv/leui/widget/CustomViewBehind;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/CustomViewAbove;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    return-object v0
.end method

.method private completeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    .local v0, "needPopulate":Z
    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v1

    .local v1, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v2

    .local v2, "oldY":I
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .local v3, "x":I
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .local v4, "y":I
    if-ne v1, v3, :cond_0

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    .end local v1    # "oldX":I
    .end local v2    # "oldY":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    return-void

    .restart local v1    # "oldX":I
    .restart local v2    # "oldY":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_3
    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v5}, Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    const/4 v1, -0x1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .local v0, "activePointerIndex":I
    if-ne v0, v1, :cond_0

    iput v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    :cond_0
    return v0
.end method

.method private getWindowBackgroud()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010054

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private isInIgnoredView(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInternalContentView(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, "pointerId":I
    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultBackgroud(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "background"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    move v3, v1

    :goto_0
    if-eqz p1, :cond_2

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method

.method private startDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    return-void
.end method

.method private thisTouchAllowed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    .local v0, "x":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    int-to-float v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/letv/leui/widget/CustomViewBehind;->menuOpenTouchAllowed(Landroid/view/View;IF)Z

    move-result v1

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/letv/leui/widget/CustomViewBehind;->marginTouchAllowed(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->isInIgnoredView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->isInternalContentView(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public IsBeingDragged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    return v0
.end method

.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->findFocus()Landroid/view/View;

    move-result-object v0

    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    if-ne p1, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->playSoundEffect(I)V

    :cond_2
    return v1

    :cond_3
    if-ne p1, v5, :cond_1

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    :cond_5
    if-eq p1, v4, :cond_6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageLeft()Z

    move-result v1

    goto :goto_0

    :cond_7
    if-eq p1, v5, :cond_8

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public computeScroll()V
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v0

    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    .local v1, "oldY":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .local v2, "x":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->invalidate()V

    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    goto :goto_0
.end method

.method determineTargetPage(FII)I
    .locals 3
    .param p1, "pageOffset"    # F
    .param p2, "velocity"    # I
    .param p3, "deltaX"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    .local v0, "targetPage":I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mFlingDistance:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMinimumVelocity:I

    if-le v1, v2, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/letv/leui/widget/CustomViewBehind;->drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/letv/leui/widget/CustomViewBehind;->drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getAboveOffsetLeft()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    return v0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getChildWidth(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    return v0
.end method

.method public getDestScrollX(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getMenuLeft(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLeftBound()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->getAbsLeftBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRightBound()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->getAbsRightBound(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    return v0
.end method

.method initCustomViewAbove()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setWillNotDraw(Z)V

    const/high16 v3, 0x40000

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setDescendantFocusability(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/letv/leui/widget/CustomViewAbove;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mMaximumVelocity:I

    new-instance v3, Lcom/letv/leui/widget/CustomViewAbove$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/CustomViewAbove$2;-><init>(Lcom/letv/leui/widget/CustomViewAbove;)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setInternalPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mFlingDistance:I

    return-void
.end method

.method public isMenuOpen()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v8}, Lcom/letv/leui/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .local v0, "action":I
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_2

    if-eqz v0, :cond_3

    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    if-eqz v8, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    :cond_4
    :goto_1
    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_6
    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    if-eqz v8, :cond_b

    :cond_7
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    .local v1, "activePointerId":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .local v3, "pointerIndex":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .local v4, "x":F
    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    sub-float v2, v4, v8

    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .local v5, "xDiff":F
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .local v6, "y":F
    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, "yDiff":F
    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_8

    cmpl-float v8, v5, v7

    if-lez v8, :cond_8

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->startDrag()V

    iput v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto :goto_1

    .end local v1    # "activePointerId":I
    .end local v2    # "dx":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-lt v8, v10, :cond_9

    const v8, 0xff00

    :goto_2
    and-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    iput v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    iget v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v9, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget v10, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iget v12, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    add-float/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    goto/16 :goto_1

    :cond_9
    const v8, 0xff00

    goto :goto_2

    :cond_a
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIsUnableToDrag:Z

    goto/16 :goto_1

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .local v1, "width":I
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "height":I
    iget-object v2, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v4, 0x0

    invoke-static {v4, p1}, Lcom/letv/leui/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v3

    .local v3, "width":I
    invoke-static {v4, p2}, Lcom/letv/leui/widget/CustomViewAbove;->getDefaultSize(II)I

    move-result v2

    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setMeasuredDimension(II)V

    invoke-static {p1, v4, v3}, Lcom/letv/leui/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "contentWidth":I
    invoke-static {p2, v4, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    iget v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    const/16 v23, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->thisTouchAllowed(Landroid/view/MotionEvent;)Z

    move-result v23

    if-nez v23, :cond_2

    const/16 v23, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/letv/leui/widget/CustomViewBehind;->IsBeingDragged()Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    const/16 v23, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .local v4, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v4, 0xff

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    const/16 v23, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .local v14, "pointerIndex":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v14, v0, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .local v19, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v7, v19, v23

    .local v7, "dx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .local v20, "xDiff":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v21

    .local v21, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionY:F

    move/from16 v23, v0

    sub-float v23, v21, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .local v22, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-gtz v23, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchSlop:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v20, v23

    if-lez v23, :cond_9

    :cond_6
    cmpl-float v23, v20, v22

    if-lez v23, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/letv/leui/widget/CustomViewAbove;->slideAllowed(F)Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->startDrag()V

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v19    # "x":F
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .local v5, "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .restart local v19    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    sub-float v6, v23, v19

    .local v6, "deltaX":F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v23

    move/from16 v0, v23

    int-to-float v12, v0

    .local v12, "oldScrollX":F
    add-float v16, v12, v6

    .local v16, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getLeftBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v10, v0

    .local v10, "leftBound":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getRightBound()I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    .local v15, "rightBound":F
    cmpg-float v23, v16, v10

    if-gez v23, :cond_a

    move/from16 v16, v10

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v23, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v16, v24

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->pageScrolled(I)V

    goto/16 :goto_1

    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .restart local v7    # "dx":F
    .restart local v14    # "pointerIndex":I
    .restart local v20    # "xDiff":F
    .restart local v21    # "y":F
    .restart local v22    # "yDiff":F
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_0

    .end local v7    # "dx":F
    .end local v14    # "pointerIndex":I
    .end local v20    # "xDiff":F
    .end local v21    # "y":F
    .end local v22    # "yDiff":F
    .restart local v5    # "activePointerIndex":I
    .restart local v6    # "deltaX":F
    .restart local v10    # "leftBound":F
    .restart local v12    # "oldScrollX":F
    .restart local v15    # "rightBound":F
    .restart local v16    # "scrollX":F
    :cond_a
    cmpl-float v23, v16, v15

    if-lez v23, :cond_8

    move/from16 v16, v15

    goto :goto_2

    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v15    # "rightBound":F
    .end local v16    # "scrollX":F
    .end local v19    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mMaximumVelocity:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v9, v0

    .local v9, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v16

    .local v16, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v23

    sub-int v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v13, v23, v24

    .local v13, "pageOffset":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .restart local v5    # "activePointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .restart local v19    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mInitialMotionX:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .local v17, "totalDelta":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v9, v1}, Lcom/letv/leui/widget/CustomViewAbove;->determineTargetPage(FII)I

    move-result v11

    .local v11, "nextPage":I
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v11, v1, v2, v9}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    .end local v11    # "nextPage":I
    .end local v17    # "totalDelta":I
    .end local v19    # "x":F
    :goto_3
    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    goto :goto_3

    .end local v5    # "activePointerIndex":I
    .end local v9    # "initialVelocity":I
    .end local v13    # "pageOffset":F
    .end local v16    # "scrollX":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mQuickReturn:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v23 .. v26}, Lcom/letv/leui/widget/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(I)V

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mIsBeingDragged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    move/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/CustomViewAbove;->endDrag()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    .local v8, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    .restart local v19    # "x":F
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    goto/16 :goto_1

    .end local v8    # "index":I
    .end local v19    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/CustomViewAbove;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->getPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .restart local v14    # "pointerIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/CustomViewAbove;->mActivePointerId:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/CustomViewAbove;->mLastMotionX:F

    goto/16 :goto_1

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

    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-ge v1, v0, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageScrolled(I)V
    .locals 6
    .param p1, "xpos"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getWidth()I

    move-result v3

    .local v3, "widthWithMargin":I
    div-int v2, p1, v3

    .local v2, "position":I
    rem-int v1, p1, v3

    .local v1, "offsetPixels":I
    int-to-float v4, v1

    int-to-float v5, v3

    div-float v0, v4, v5

    .local v0, "offset":F
    invoke-virtual {p0, v2, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->onPageScrolled(IFI)V

    return-void
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mIgnoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrollX:F

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/letv/leui/widget/CustomViewBehind;->scrollBehindTo(Landroid/view/View;II)V

    return-void
.end method

.method public setAboveOffsetLeft(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/CustomViewBehind;->setVisibleAlways(Z)V

    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewOffsetLeft:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/CustomViewAbove;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/letv/leui/widget/CustomViewAbove;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mContent:Landroid/view/View;

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getWindowBackgroud()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setDefaultBackgroud(Landroid/view/View;I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZZ)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-ne v3, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/CustomViewBehind;->getMenuPage(I)I

    move-result p1

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    if-eq v3, p1, :cond_3

    const/4 v1, 0x1

    .local v1, "dispatchSelected":Z
    :goto_1
    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    iget v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mCurItem:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/CustomViewAbove;->getDestScrollX(I)I

    move-result v0

    .local v0, "destX":I
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;->onPageSelected(I)V

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, v2, p4}, Lcom/letv/leui/widget/CustomViewAbove;->smoothScrollTo(III)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_3
    move v1, v2

    goto :goto_1

    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    invoke-virtual {p0, v0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCustomViewBehind(Lcom/letv/leui/widget/CustomViewBehind;)V
    .locals 0
    .param p1, "cvb"    # Lcom/letv/leui/widget/CustomViewBehind;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    return-void
.end method

.method setInternalPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .local v0, "oldListener":Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mInternalPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    return-object v0
.end method

.method public setOnClosedListener(Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    return-void
.end method

.method public setOnOpenedListener(Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOnPageChangeListener:Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;

    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mEnabled:Z

    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mTouchMode:I

    return-void
.end method

.method public slideAllowed(F)Z
    .locals 2
    .param p1, "dx"    # F

    .prologue
    const/4 v0, 0x0

    .local v0, "allowed":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->menuOpenSlideAllowed(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/CustomViewBehind;->menuClosedSlideAllowed(F)Z

    move-result v0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/CustomViewAbove;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollX()I

    move-result v2

    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getScrollY()I

    move-result v3

    .local v3, "sy":I
    sub-int v4, p1, v2

    .local v4, "dx":I
    sub-int v5, p2, v3

    .local v5, "dy":I
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove;->completeScroll()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->isMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mOpenedListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;->onOpened()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mClosedListener:Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;->onClosed()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setScrollingCacheEnabled(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScrolling:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->getBehindWidth()I

    move-result v11

    .local v11, "width":I
    div-int/lit8 v9, v11, 0x2

    .local v9, "halfWidth":I
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    invoke-static {v1, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .local v8, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v12, v9

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/CustomViewAbove;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v1, v12

    .local v7, "distance":F
    const/4 v6, 0x0

    .local v6, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_4

    const/high16 v1, 0x447a0000    # 1000.0f

    move/from16 v0, p3

    int-to-float v12, v0

    div-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    :goto_1
    const/16 v1, 0x258

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p0, Lcom/letv/leui/widget/CustomViewAbove;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/CustomViewAbove;->invalidate()V

    goto :goto_0

    :cond_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v12, v11

    div-float v10, v1, v12

    .local v10, "pageDelta":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v10

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v1, v12

    float-to-int v6, v1

    const/16 v6, 0x258

    goto :goto_1
.end method
