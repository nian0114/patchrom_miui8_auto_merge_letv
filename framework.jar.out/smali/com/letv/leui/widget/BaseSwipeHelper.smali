.class public Lcom/letv/leui/widget/BaseSwipeHelper;
.super Ljava/lang/Object;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BaseSwipeHelper$Callback;,
        Lcom/letv/leui/widget/BaseSwipeHelper$BaseCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIM_TIME:I = 0x118

.field public static final EVENT_SWIPING_FIXED:I = 0x0

.field public static final EVENT_SWIPING_LEFT:I = 0x1

.field public static final EVENT_SWIPING_RIGHT:I = 0x2

.field public static final SWIPE_ACTION_DISMISS:I = 0x1

.field public static final SWIPE_ACTION_NONE:I = 0x3

.field public static final SWIPE_ACTION_REVEAL:I = 0x0

.field public static final SWIPE_ACTION_SWITCH:I = 0x2

.field public static final SWIPE_MODE_BOTH:I = 0x1

.field public static final SWIPE_MODE_DEFAULT:I = -0x1

.field public static final SWIPE_MODE_LEFT:I = 0x3

.field public static final SWIPE_MODE_NONE:I = 0x0

.field public static final SWIPE_MODE_RIGHT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SWPIE_HELPER"

.field private static final VELOCITY_FACTOR:F = 1.5f

.field public static final VIEW_SWIPED_FIXED:I = 0x0

.field public static final VIEW_SWIPED_LEFT:I = 0x1

.field public static final VIEW_SWIPED_RIGHT:I = 0x2

.field protected static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationTime:J

.field protected mBackView:Landroid/view/View;

.field private mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

.field private mEventDownX:F

.field private mEventPreEventX:F

.field private mEventStartX:F

.field private mEventSwipingDirection:I

.field protected mFrontView:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsOverOffsetEnabled:Z

.field private mIsSwipeEnable:Z

.field protected mIsSwitch:Z

.field protected mLeftOffset:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field protected mOpened:Z

.field protected mOpenedRight:Z

.field private mPagingSlop:I

.field protected mPaused:Z

.field protected mRightOffset:F

.field private mStartBackViewX:F

.field private mStartFrontViewX:F

.field private mStartToLeftLock:Z

.field private mStartToRightLock:Z

.field protected mSwipeActionLeft:I

.field protected mSwipeActionRight:I

.field protected mSwipeCurrentAction:I

.field protected mSwipeLeftSwitchLine:F

.field private mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

.field protected mSwipeMode:I

.field protected mSwipeRightSwitchLine:F

.field protected mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwipedDirection:I

.field protected mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/letv/leui/widget/BaseSwipeHelper$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "callback"    # Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "callback"    # Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    const/4 v5, 0x2

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .local v2, "tempLeftOffset":F
    const/4 v5, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .local v3, "tempRightOffset":F
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v4, "width":I
    int-to-float v5, v4

    sub-float/2addr v5, v2

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    int-to-float v5, v4

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    const/4 v5, 0x5

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    const/4 v5, 0x6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    const/16 v5, 0x8

    const/16 v6, 0x118

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    const/16 v5, 0xe

    invoke-virtual {p2, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "tempLeftOffset":F
    .end local v3    # "tempRightOffset":F
    .end local v4    # "width":I
    :cond_0
    iput-object p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMinFlingVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMaxFlingVelocity:I

    return-void
.end method

.method private move(F)V
    .locals 10
    .param p1, "deltaX"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onMove(F)V

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v9, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v7, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v2, :pswitch_data_1

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v2, v5, :cond_7

    :cond_4
    cmpl-float v2, p1, v6

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_6

    const/4 p1, 0x0

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_6
    cmpg-float v2, p1, v6

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    cmpg-float v2, p1, v6

    if-gez v2, :cond_8

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float v0, v2, v3

    .local v0, "leftThreshold":F
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_a

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_a

    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_a
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v7, :cond_9

    cmpl-float v2, p1, v6

    if-lez v2, :cond_9

    const/4 p1, 0x0

    goto :goto_3

    .end local v0    # "leftThreshold":F
    :pswitch_2
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float v1, v2, v3

    .local v1, "rightThreshold":F
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v7, :cond_c

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_c

    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_b

    cmpg-float v2, p1, v6

    if-gez v2, :cond_b

    const/4 p1, 0x0

    goto :goto_4

    .end local v1    # "rightThreshold":F
    :pswitch_3
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_d

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_d

    :cond_d
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v2, v5, :cond_13

    :cond_e
    cmpl-float v2, p1, v6

    if-lez v2, :cond_12

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_12

    const/4 p1, 0x0

    :cond_f
    :goto_5
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v7, :cond_11

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_15

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_10

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    :cond_10
    :goto_6
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_16

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_16

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_11

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    :cond_11
    :goto_7
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_12
    cmpg-float v2, p1, v6

    if-gez v2, :cond_f

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_f

    const/4 p1, 0x0

    goto :goto_5

    :cond_13
    cmpg-float v2, p1, v6

    if-gez v2, :cond_14

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_5

    :cond_14
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_5

    :cond_15
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_10

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_10

    iput-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_6

    :cond_16
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_11

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_11

    iput-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_7

    :pswitch_4
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_19

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_17

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    :cond_17
    :goto_8
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v7, :cond_18

    cmpl-float v2, p1, v6

    if-lez v2, :cond_18

    const/4 p1, 0x0

    :cond_18
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_19
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_17

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_17

    iput-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_8

    :pswitch_5
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1c

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_1a

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    :cond_1a
    :goto_9
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_1b

    cmpg-float v2, p1, v6

    if-gez v2, :cond_1b

    const/4 p1, 0x0

    :cond_1b
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    :cond_1c
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1a

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_1a

    iput-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private resetEventValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    return-void
.end method


# virtual methods
.method public closeAnimate()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method public closeNoAnimate()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected closeOpenedItem(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absTX":F
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v2, :cond_0

    int-to-float v2, p1

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .end local v0    # "absTX":F
    :goto_0
    return v1

    .restart local v0    # "absTX":F
    :cond_0
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-nez v2, :cond_1

    int-to-float v2, p1

    iget-object v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    goto :goto_0

    .end local v0    # "absTX":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected generateAnimate(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V

    :cond_1
    return-void
.end method

.method protected generateDismissAnimate(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    :cond_1
    const/4 v1, 0x0

    .local v1, "moveTo":I
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v2, :cond_5

    if-nez p2, :cond_2

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .local v0, "alpha":I
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/letv/leui/widget/BaseSwipeHelper$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$2;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0

    .end local v0    # "alpha":I
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_2

    if-eqz p3, :cond_6

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    :goto_2
    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_2
.end method

.method protected generateRevealAnimate(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    :cond_1
    const/4 v0, 0x0

    .local v0, "moveTo":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v1, :cond_4

    if-nez p2, :cond_2

    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/BaseSwipeHelper$3;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$3;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_2

    if-eqz p3, :cond_5

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_2
.end method

.method protected generateSwitchAnimate(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isSwitched"    # Z

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/BaseSwipeHelper$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$4;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0
.end method

.method protected getBackView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getBackView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFrontView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getFrontView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    return v0
.end method

.method public getSwipeListener()Lcom/letv/leui/widget/SwipeListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    return-object v0
.end method

.method public getSwipeSwitchListener()Lcom/letv/leui/widget/SwipeSwitchListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    return v0
.end method

.method protected isSwipeTouchEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onChangeSwipeMode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListener;->onChangeSwipeMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected onClosed(Z)V
    .locals 1
    .param p1, "fromRight"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onClosed(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    const/4 v3, 0x0

    .local v3, "intercept":Z
    if-nez v0, :cond_0

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {p0, v7, v8, v9}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewClickable(ZII)Z

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v6, v3

    :cond_2
    :goto_1
    return v6

    :pswitch_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getFrontView()Landroid/view/View;

    move-result-object v2

    .local v2, "fView":Landroid/view/View;
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->setFrontView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    .local v1, "bView":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackView(Landroid/view/View;)V

    :cond_4
    const/4 v8, 0x3

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iget v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    iget v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {p0, v8, v9, v7}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    iget-object v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setFocusable(Z)V

    iget-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v7, :cond_5

    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {p0, v7, v8, v6}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    iget-object v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setFocusable(Z)V

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "bView":Landroid/view/View;
    .end local v2    # "fView":Landroid/view/View;
    :pswitch_1
    iget v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v6, :cond_7

    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMove(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onMove(F)V

    :cond_0
    return-void
.end method

.method protected onOpened(Z)V
    .locals 1
    .param p1, "toRight"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onOpened(Z)V

    :cond_0
    return-void
.end method

.method protected onStartClose(Z)V
    .locals 1
    .param p1, "right"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onStartClose(Z)V

    :cond_0
    return-void
.end method

.method protected onStartOpen(IZ)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "right"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/SwipeListener;->onStartOpen(IZ)V

    :cond_0
    return-void
.end method

.method protected onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "swap"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return-void
.end method

.method protected onSwipeRevealed(ZZLjava/lang/Object;)V
    .locals 3
    .param p1, "swap"    # Z
    .param p2, "swapRight"    # Z
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    .local v0, "aux":Z
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onOpened(Z)V

    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    :goto_1
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onClosed(Z)V

    goto :goto_1
.end method

.method protected onSwipeSwitched(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "isSwitched"    # Z
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitched(Z)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return-void
.end method

.method protected onSwipeSwitching(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitching(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .local v20, "x":I
    const/4 v8, 0x0

    .local v8, "deltaX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    :cond_1
    const/4 v9, 0x0

    .local v9, "eventFrontViewX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v9

    :cond_2
    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_4

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    :goto_1
    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_2
    const/16 v21, 0x0

    goto :goto_0

    :cond_4
    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gez v21, :cond_5

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_1

    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_7

    :cond_6
    const/16 v21, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    const/4 v12, 0x0

    .local v12, "isToCloseOpenedItem":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_a

    const/4 v12, 0x1

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    if-eqz v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9

    const/4 v12, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .local v18, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .local v19, "velocityY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_c

    const/16 v18, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_d

    const/16 v18, 0x0

    :cond_d
    const/4 v14, 0x0

    .local v14, "swap":Z
    const/4 v15, 0x0

    .local v15, "swapRight":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMinFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v21, v18

    if-gtz v21, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMaxFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v18, v21

    if-gtz v21, :cond_11

    const/high16 v21, 0x3fc00000    # 1.5f

    mul-float v21, v21, v19

    cmpg-float v21, v21, v18

    if-gez v21, :cond_11

    const/16 v17, 0x1

    .local v17, "velocityEnable":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14, v15}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateAnimate(Landroid/view/View;ZZ)V

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    goto/16 :goto_2

    .end local v17    # "velocityEnable":Z
    :cond_11
    const/16 v17, 0x0

    goto :goto_4

    .restart local v17    # "velocityEnable":Z
    :pswitch_2
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_12

    const/4 v15, 0x1

    :goto_6
    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v15, 0x0

    goto :goto_6

    :cond_13
    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/4 v15, 0x1

    :goto_7
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_16
    const/4 v15, 0x0

    goto :goto_7

    :cond_17
    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_5

    :pswitch_3
    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_19

    const/4 v15, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    if-eqz v15, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_1a

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_19
    const/4 v15, 0x0

    goto :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    if-nez v15, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_1b

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    if-nez v15, :cond_1c

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-nez v21, :cond_1d

    if-eqz v15, :cond_1d

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_21

    if-eqz v15, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpl-float v21, v9, v21

    if-lez v21, :cond_20

    const/4 v14, 0x1

    :goto_a
    goto/16 :goto_5

    :cond_1f
    const/4 v15, 0x0

    goto :goto_9

    :cond_20
    const/4 v14, 0x0

    goto :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_23

    if-nez v15, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpg-float v21, v9, v21

    if-gez v21, :cond_22

    const/4 v14, 0x1

    :goto_b
    goto/16 :goto_5

    :cond_22
    const/4 v14, 0x0

    goto :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpl-float v21, v9, v21

    if-lez v21, :cond_24

    const/4 v14, 0x0

    :goto_c
    goto/16 :goto_5

    :cond_24
    const/4 v14, 0x1

    goto :goto_c

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpg-float v21, v9, v21

    if-gez v21, :cond_26

    const/4 v14, 0x0

    :goto_d
    goto/16 :goto_5

    :cond_26
    const/4 v14, 0x1

    goto :goto_d

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    const/4 v15, 0x1

    :goto_e
    const/4 v11, 0x0

    .local v11, "isSwitched":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-ltz v21, :cond_28

    const/4 v11, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V

    goto/16 :goto_5

    .end local v11    # "isSwitched":Z
    :cond_27
    const/4 v15, 0x0

    goto :goto_e

    .restart local v11    # "isSwitched":Z
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_29

    const/4 v11, 0x1

    goto :goto_f

    :cond_29
    const/4 v11, 0x0

    goto :goto_f

    .end local v11    # "isSwitched":Z
    .end local v12    # "isToCloseOpenedItem":Z
    .end local v14    # "swap":Z
    .end local v15    # "swapRight":Z
    .end local v17    # "velocityEnable":Z
    .end local v18    # "velocityX":F
    .end local v19    # "velocityY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .restart local v18    # "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .restart local v19    # "velocityY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .local v13, "moveRawX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpl-float v21, v21, v13

    if-lez v21, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    :cond_2a
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v21, v0

    sub-float v8, v13, v21

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .local v7, "deltaMode":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v16, v0

    .local v16, "swipeMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onChangeSwipeMode()I

    move-result v6

    .local v6, "changeSwipeMode":I
    if-ltz v6, :cond_2b

    move/from16 v16, v6

    :cond_2b
    if-nez v16, :cond_32

    const/4 v7, 0x0

    :cond_2c
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    if-nez v21, :cond_2d

    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v21, v8, v21

    if-gez v21, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v8, v21, v22

    :cond_2d
    :goto_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v7, v21

    if-lez v21, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e

    const/high16 v21, 0x3fc00000    # 1.5f

    mul-float v21, v21, v19

    cmpg-float v21, v21, v18

    if-gez v21, :cond_2e

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_38

    const/16 v21, 0x1

    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onStartClose(Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_39

    const/16 v21, 0x0

    :goto_14
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3a

    const/16 v21, 0x1

    :goto_15
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    :goto_16
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    shl-int/lit8 v21, v21, 0x8

    or-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setAction(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/BaseSwipeHelper;->superOnTouchEvent(Landroid/view/MotionEvent;)Z

    .end local v5    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    move/from16 v21, v0

    :goto_17
    add-float v8, v8, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/letv/leui/widget/BaseSwipeHelper;->move(F)V

    const/16 v21, 0x1

    goto/16 :goto_0

    .end local v6    # "changeSwipeMode":I
    .end local v7    # "deltaMode":F
    .end local v16    # "swipeMode":I
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpg-float v21, v21, v13

    if-gez v21, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    :cond_30
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_10

    :cond_31
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_10

    .restart local v6    # "changeSwipeMode":I
    .restart local v7    # "deltaMode":F
    .restart local v16    # "swipeMode":I
    :cond_32
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_34

    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_33

    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-ltz v21, :cond_2c

    :cond_33
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2c

    goto/16 :goto_11

    :cond_34
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_35

    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_35

    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_35
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-gez v21, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_2c

    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_36
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpl-float v21, v8, v21

    if-lez v21, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    goto/16 :goto_12

    :cond_37
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v21, v8, v21

    if-ltz v21, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2d

    goto/16 :goto_12

    :cond_38
    const/16 v21, 0x0

    goto/16 :goto_13

    :cond_39
    const/16 v21, 0x1

    goto/16 :goto_14

    :cond_3a
    const/16 v21, 0x0

    goto/16 :goto_15

    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    :cond_3c
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_3e

    const/16 v21, 0x1

    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onStartOpen(IZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f

    const/4 v10, 0x1

    .local v10, "isOpenRight":Z
    :goto_1a
    if-eqz v10, :cond_40

    const/16 v21, 0x0

    :goto_1b
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v10, :cond_41

    const/16 v21, 0x1

    :goto_1c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    goto/16 :goto_16

    .end local v10    # "isOpenRight":Z
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_18

    :cond_3e
    const/16 v21, 0x0

    goto :goto_19

    :cond_3f
    const/4 v10, 0x0

    goto :goto_1a

    .restart local v10    # "isOpenRight":Z
    :cond_40
    const/16 v21, 0x1

    goto :goto_1b

    :cond_41
    const/16 v21, 0x0

    goto :goto_1c

    .end local v10    # "isOpenRight":Z
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    move/from16 v21, v0

    goto/16 :goto_17

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public openAnimate()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method protected resetCell(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method protected setBackView(Landroid/view/View;)V
    .locals 0
    .param p1, "backView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    return-void
.end method

.method protected setBackViewChildFocusable(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focus"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "backChildView":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setBackViewClickable(ZII)Z
    .locals 5
    .param p1, "forceUnClickable"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "backChildView":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_3

    .end local v0    # "backChildView":Landroid/view/View;
    :cond_3
    iget-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_0
.end method

.method protected setFrontView(Landroid/view/View;)V
    .locals 0
    .param p1, "frontView"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 0
    .param p1, "offsetLeft"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    return-void
.end method

.method public setOffsetRight(F)V
    .locals 0
    .param p1, "offsetRight"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    return-void
.end method

.method public setOverOffsetEnabled(Z)V
    .locals 0
    .param p1, "overOffsetEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0
    .param p1, "swipeActionLeft"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0
    .param p1, "swipeActionRight"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    return-void
.end method

.method public setSwipeLeftSwitchLine(F)V
    .locals 0
    .param p1, "swipeLeftSwitchLine"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    return-void
.end method

.method public setSwipeListener(Lcom/letv/leui/widget/SwipeListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0
    .param p1, "swipeMode"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    return-void
.end method

.method public setSwipeRightSwitchLine(F)V
    .locals 0
    .param p1, "swipeRightSwitchLine"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    return-void
.end method

.method public setSwipeSwitchListener(Lcom/letv/leui/widget/SwipeSwitchListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeSwitchListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    return-void
.end method

.method protected superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->superOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
