.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PtrFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static FLAG_AUTO_REFRESH_AT_ONCE:B = 0x0t

.field private static FLAG_AUTO_REFRESH_BUT_LATER:B = 0x0t

.field private static FLAG_ENABLE_NEXT_PTR_AT_ONCE:B = 0x0t

.field private static FLAG_PIN_CONTENT:B = 0x0t

.field private static ID:I = 0x0

.field private static MASK_AUTO_REFRESH:B = 0x0t

.field public static final PTR_STATUS_COMPLETE:B = 0x4t

.field public static final PTR_STATUS_INIT:B = 0x1t

.field public static final PTR_STATUS_LOADING:B = 0x3t

.field public static final PTR_STATUS_PREPARE:B = 0x2t


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mContainerId:I

.field protected mContent:Landroid/view/View;

.field private mDisableWhenHorizontalMove:Z

.field private mDurationToClose:I

.field private mDurationToCloseHeader:I

.field private mFlag:I

.field private mHasSendCancelEvent:Z

.field private mHeaderHeight:I

.field private mHeaderId:I

.field private mHeaderView:Landroid/view/View;

.field private mKeepHeaderWhenRefresh:Z

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mLoadingMinTime:I

.field private mLoadingStartTime:J

.field private mPagingTouchSlop:I

.field private mPreventForHorizontal:Z

.field private mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

.field private mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

.field private mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

.field private mPullToRefresh:Z

.field private mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

.field private mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

.field private mStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    sput v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    sput-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    const/4 v0, 0x2

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    const/4 v0, 0x4

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    const/16 v0, 0x8

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    const/4 v0, 0x3

    sput-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ptr-frame-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    iput-boolean v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    invoke-static {}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->create()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iput-byte v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    iput v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    const/16 v3, 0x1f4

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    iput-boolean v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-direct {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    sget-object v3, Lcom/android/internal/R$styleable;->LePtrFrameLayout:[I

    invoke-virtual {p1, p2, v3, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "arr":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getResistance()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setResistance(F)V

    const/4 v3, 0x4

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    const/4 v3, 0x5

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v2

    .local v2, "ratio":F
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v3, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v2    # "ratio":F
    :cond_0
    new-instance v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, "conf":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefreshComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->movePos(F)V

    return-void
.end method

.method private clearFlag()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    return-void
.end method

.method private layoutChildren()V
    .locals 11

    .prologue
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    .local v3, "offsetX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v4

    .local v4, "paddingLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v5

    .local v5, "paddingTop":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v8

    .local v1, "left":I
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    add-int v7, v8, v3

    .local v7, "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v1, v8

    .local v6, "right":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .local v0, "bottom":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v8, v1, v9, v6, v10}, Landroid/view/View;->layout(IIII)V

    sget-boolean v8, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v8, :cond_0

    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .restart local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v1, v4, v8

    .restart local v1    # "left":I
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    add-int v7, v8, v3

    .restart local v7    # "top":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v1, v8

    .restart local v6    # "right":I
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .restart local v0    # "bottom":I
    sget-boolean v8, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v8, :cond_2

    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v8, v1, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_3
    return-void
.end method

.method private measureContentView(Landroid/view/View;II)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private movePos(F)V
    .locals 5
    .param p1, "deltaY"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v3, "has reached the top"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v2

    float-to-int v3, p1

    add-int v1, v2, v3

    .local v1, "to":I
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->willOverTop(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v3, "over top"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setCurrentPos(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "change":I
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->updatePos(I)V

    goto :goto_0
.end method

.method private notifyUIRefreshComplete(Z)V
    .locals 2
    .param p1, "ignoreHook"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyUIRefreshComplete mRefreshCompleteHook run."

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->takeOver()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshComplete"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tryToScrollTo notifyUIRefreshComplete"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onUIRefreshComplete()V

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopAfterComplete()V

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    goto :goto_0
.end method

.method private onRelease(Z)V
    .locals 3
    .param p1, "stayForLoading"    # Z

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopWhileLoading()V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTopAbortRefresh()V

    goto :goto_0
.end method

.method private performAutoRefreshButLater()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v0, v1

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performRefresh()V
    .locals 3

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshBegin"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->onRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performRefresh status ----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private performRefreshComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    # getter for: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z
    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->access$200(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    # getter for: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z
    invoke-static {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->access$200(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->notifyUIRefreshComplete(Z)V

    goto :goto_0
.end method

.method private sendCancelEvent()V
    .locals 10

    .prologue
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "send cancel event"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x3

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private sendDownEvent()V
    .locals 10

    .prologue
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "send down event"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    .local v9, "last":Landroid/view/MotionEvent;
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private tryScrollBackToTop()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tryToScrollTo  tryScrollBackToTop1"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "tryToScrollTo  tryScrollBackToTop2"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    const/4 v1, 0x0

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    :cond_0
    return-void
.end method

.method private tryScrollBackToTopAbortRefresh()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    return-void
.end method

.method private tryScrollBackToTopAfterComplete()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    return-void
.end method

.method private tryScrollBackToTopWhileLoading()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryScrollBackToTop()V

    return-void
.end method

.method private tryToNotifyReset()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "tryToNotifyReset1"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "tryToNotifyReset2"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "tryToNotifyReset3"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PtrUIHandler: onUIReset"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->clearFlag()V

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryToPerformRefresh()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPtrIndicator.isOverOffsetToKeepHeaderWhileLoading() --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutoRefresh() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPtrIndicator.isOverOffsetToRefresh() ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToRefresh()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToKeepHeaderWhileLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isOverOffsetToRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefresh()V

    goto :goto_0
.end method

.method private updatePos(I)V
    .locals 9
    .param p1, "change"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isUnderTouch()Z

    move-result v0

    .local v0, "isUnderTouch":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendCancelEvent()V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustLeftStartPosition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-eq v1, v5, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->goDownCrossFinishPosition()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v8, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isEnabledNextPtrAtOnce()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iput-byte v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustBackToStartPosition()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToNotifyReset()Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendDownEvent()V

    :cond_5
    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-ne v1, v6, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->crossRefreshLineFromTopToBottom()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    :cond_6
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performAutoRefreshButLater()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasJustReachedHeaderHeightFromTopToBottom()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->tryToPerformRefresh()Z

    :cond_7
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isPinContent()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->invalidate()V

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iget-byte v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    :cond_a
    iget-byte v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onPositionChange(ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addPtrUIHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->addHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V

    return-void
.end method

.method public autoRefresh()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->autoRefresh(ZI)V

    return-void
.end method

.method public autoRefresh(Z)V
    .locals 1
    .param p1, "atOnce"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->autoRefresh(ZI)V

    return-void
.end method

.method public autoRefresh(ZI)V
    .locals 5
    .param p1, "atOnce"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x1

    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    if-eqz p1, :cond_3

    sget-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_AT_ONCE:B

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "PtrUIHandler: onUIRefreshPrepare, mFlag %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->tryToScrollTo(II)V

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefresh()V

    goto :goto_0

    :cond_3
    sget-byte v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_AUTO_REFRESH_BUT_LATER:B

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public disableWhenHorizontalMove(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchTouchEvent [MotionEvent] status --"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v9, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_0
    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    :pswitch_0
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onRelease()V

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v10, "call onRelease when user release"

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasMovedAfterPressedDown()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->sendCancelEvent()V

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHasSendCancelEvent:Z

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onPressDown(FF)V

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mScrollChecker:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->abortIfWorking()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    const/4 v9, 0x1

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLastMoveEvent:Landroid/view/MotionEvent;

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->onMove(FF)V

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetX()F

    move-result v7

    .local v7, "offsetX":F
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetY()F

    move-result v8

    .local v8, "offsetY":F
    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDisableWhenHorizontalMove:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-nez v9, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPagingTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isInStartPosition()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    :cond_6
    iget-boolean v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPreventForHorizontal:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9

    const/4 v5, 0x1

    .local v5, "moveDown":Z
    :goto_1
    if-nez v5, :cond_a

    const/4 v6, 0x1

    .local v6, "moveUp":Z
    :goto_2
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v2

    .local v2, "canMoveUp":Z
    sget-boolean v9, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    iget-object v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v9, p0, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->checkCanDoRefresh(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    .local v1, "canMoveDown":Z
    :goto_3
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v10, "ACTION_MOVE: offsetY:%s, mCurrentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v13}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "canMoveDown":Z
    :cond_8
    if-eqz v5, :cond_c

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    iget-object v10, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-interface {v9, p0, v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;->checkCanDoRefresh(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    .end local v2    # "canMoveUp":Z
    .end local v5    # "moveDown":Z
    .end local v6    # "moveUp":Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "moveDown":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    .restart local v2    # "canMoveUp":Z
    .restart local v6    # "moveUp":Z
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    .local v3, "currentPosY":I
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v9}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getLastPosY()I

    move-result v4

    .local v4, "lastPosY":I
    iget-object v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_MOVE ---- currentPosY ----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ---- lastPosY ----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-byte v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v10, 0x3

    if-ne v9, v10, :cond_d

    if-eqz v5, :cond_d

    iget v9, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    if-lt v4, v9, :cond_d

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    :cond_d
    if-eqz v6, :cond_e

    if-nez v2, :cond_f

    :cond_e
    if-eqz v5, :cond_2

    :cond_f
    const-string v9, "offsetY"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offsetY----"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->movePos(F)V

    const/4 v9, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultHeader()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    instance-of v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    check-cast v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDurationToClose()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    int-to-float v0, v0

    return v0
.end method

.method public getDurationToCloseHeader()J
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getOffsetToKeepHeaderWhileLoading()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToKeepHeaderWhileLoading()I

    move-result v0

    return v0
.end method

.method public getOffsetToRefresh()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getOffsetToRefresh()I

    move-result v0

    return v0
.end method

.method public getRatioOfHeaderToHeightRefresh()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getRatioOfHeaderToHeightRefresh()F

    move-result v0

    return v0
.end method

.method public getResistance()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getResistance()F

    move-result v0

    return v0
.end method

.method public getStatus()B
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    return v0
.end method

.method public isAutoRefresh()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->MASK_AUTO_REFRESH:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledNextPtrAtOnce()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeepHeaderWhenRefresh()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    return v0
.end method

.method public isPinContent()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPullToRefresh()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mStatus:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    if-le v2, v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "PtrFrameLayout only can host 2 elements"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-ne v2, v4, :cond_b

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderId:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v4, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContainerId:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child1":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "child2":Landroid/view/View;
    instance-of v4, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v4, :cond_5

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    :cond_4
    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void

    .restart local v0    # "child1":Landroid/view/View;
    .restart local v1    # "child2":Landroid/view/View;
    :cond_5
    instance-of v4, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v4, :cond_6

    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_7

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-ne v4, v0, :cond_8

    .end local v1    # "child2":Landroid/view/View;
    :goto_1
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "child2":Landroid/view/View;
    :cond_8
    move-object v1, v0

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-ne v4, v0, :cond_a

    .end local v1    # "child2":Landroid/view/View;
    :goto_2
    iput-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "child2":Landroid/view/View;
    :cond_a
    move-object v1, v0

    goto :goto_2

    .end local v0    # "child1":Landroid/view/View;
    .end local v1    # "child2":Landroid/view/View;
    :cond_b
    if-ne v2, v5, :cond_c

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    goto :goto_0

    :cond_c
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v3, "errorView":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    const v4, -0x9a00

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "flag"    # Z
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I
    .param p5, "l"    # I

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->layoutChildren()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderHeight:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setHeaderHeight(I)V

    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mContent:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->measureContentView(Landroid/view/View;II)V

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_2

    :cond_2
    return-void
.end method

.method protected onPositionChange(ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 0
    .param p1, "isInTouching"    # Z
    .param p2, "status"    # B
    .param p3, "mPtrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    return-void
.end method

.method protected onPtrScrollAbort()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call onRelease after scroll abort"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    :cond_1
    return-void
.end method

.method protected onPtrScrollFinish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->hasLeftStartPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v1, "call onRelease after scroll finish"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onRelease(Z)V

    :cond_1
    return-void
.end method

.method public final refreshComplete()V
    .locals 8

    .prologue
    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "refreshComplete"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    invoke-virtual {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->reset()V

    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    int-to-long v2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingStartTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .local v0, "delay":I
    if-gtz v0, :cond_4

    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "performRefreshComplete at once"

    invoke-static {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->performRefreshComplete()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$2;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string v2, "performRefreshComplete after delay: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removePtrUIHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 1
    .param p1, "ptrUIHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->removeHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrUIHandlerHolder:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    return-void
.end method

.method public setDurationToClose(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToClose:I

    return-void
.end method

.method public setDurationToCloseHeader(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mDurationToCloseHeader:I

    return-void
.end method

.method public setEnabledNextPtrAtOnce(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_ENABLE_NEXT_PTR_AT_ONCE:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;

    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setInterceptEventWhileWorking(Z)V
    .locals 0
    .param p1, "yes"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setKeepHeaderWhenRefresh(Z)V
    .locals 0
    .param p1, "keepOrNot"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mKeepHeaderWhenRefresh:Z

    return-void
.end method

.method public setLoadingMinTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mLoadingMinTime:I

    return-void
.end method

.method public setOffsetToKeepHeaderWhileLoading(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setOffsetToKeepHeaderWhileLoading(I)V

    return-void
.end method

.method public setOffsetToRefresh(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setOffsetToRefresh(I)V

    return-void
.end method

.method public setPinContent(Z)V
    .locals 2
    .param p1, "pinContent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    sget-byte v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->FLAG_PIN_CONTENT:B

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mFlag:I

    goto :goto_0
.end method

.method public setPtrHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;)V
    .locals 0
    .param p1, "ptrHandler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrHandler;

    return-void
.end method

.method public setPtrIndicator(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 1
    .param p1, "slider"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->convertFrom(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    return-void
.end method

.method public setPullToRefresh(Z)V
    .locals 0
    .param p1, "pullToRefresh"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPullToRefresh:Z

    return-void
.end method

.method public setRatioOfHeaderHeightToRefresh(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setRatioOfHeaderHeightToRefresh(F)V

    return-void
.end method

.method public setRefreshCompleteHook(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;)V
    .locals 1
    .param p1, "hook"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mRefreshCompleteHook:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$1;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->setResumeAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResistance(F)V
    .locals 1
    .param p1, "resistance"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->mPtrIndicator:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->setResistance(F)V

    return-void
.end method
