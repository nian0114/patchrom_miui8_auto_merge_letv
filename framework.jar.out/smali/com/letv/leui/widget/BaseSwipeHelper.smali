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

.field private mFirstLeftViewInBackId:I

.field private mFirstRightViewInbackId:I

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

.field private mSecondLeftViewInbackId:I

.field private mSecondRightViewInbackId:I

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

.field private mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwipedDirection:I

.field protected mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 72
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 73
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 74
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 78
    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 80
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 81
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 82
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 83
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 96
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 105
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 110
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 119
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 121
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 139
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

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 72
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 73
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 74
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 78
    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 80
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 81
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 82
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 83
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 96
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 105
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 110
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 119
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 121
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V

    .line 143
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "callback"    # Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .prologue
    .line 146
    const/4 v11, 0x0

    .line 147
    .local v11, "screenWidth":I
    if-eqz p2, :cond_0

    .line 148
    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 149
    const/4 v3, 0x1

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 150
    const/4 v3, 0x2

    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 155
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    .line 156
    .local v14, "tempLeftOffset":F
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 158
    .local v15, "tempRightOffset":F
    new-instance v13, Landroid/util/DisplayMetrics;

    invoke-direct {v13}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    .local v13, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 160
    iget v11, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 161
    int-to-float v3, v11

    sub-float/2addr v3, v14

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 162
    int-to-float v3, v11

    sub-float/2addr v3, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 165
    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 166
    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 167
    const/16 v3, 0x8

    const/16 v4, 0x118

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-long v4, v3

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 168
    const/16 v3, 0xe

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 171
    const/16 v3, 0x1c

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstLeftViewInBackId:I

    .line 172
    const/16 v3, 0x1d

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSecondLeftViewInbackId:I

    .line 173
    const/16 v3, 0x1e

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstRightViewInbackId:I

    .line 174
    const/16 v3, 0x1f

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSecondRightViewInbackId:I

    .line 178
    .end local v13    # "dm":Landroid/util/DisplayMetrics;
    .end local v14    # "tempLeftOffset":F
    .end local v15    # "tempRightOffset":F
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .line 180
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 181
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    .line 182
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMinFlingVelocity:I

    .line 183
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMaxFlingVelocity:I

    .line 186
    new-instance v3, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstLeftViewInBackId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSecondLeftViewInbackId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstRightViewInbackId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSecondRightViewInbackId:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    move-object/from16 v10, p1

    move-object/from16 v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;-><init>(IIIIJLandroid/content/Context;ILcom/letv/leui/widget/BaseSwipeHelper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

    .line 188
    return-void
.end method

.method private move(F)V
    .locals 11
    .param p1, "deltaX"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 741
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onMove(F)V

    .line 744
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v0, v4, :cond_0

    .line 745
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 746
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 750
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v0, :cond_2

    .line 751
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v0, :pswitch_data_0

    .line 794
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 795
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/letv/leui/widget/ITwoLayerEffect;->moveInTwoLayerActionReveal(Landroid/view/View;FFF)V

    .line 800
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v0, v9, :cond_5

    .line 802
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstLeftViewInBackId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 803
    .local v7, "mFirstLeftView":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 804
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 805
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 809
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v0, :pswitch_data_1

    .line 894
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 895
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFirstLeftViewInBackId:I

    iget v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/letv/leui/widget/ITwoLayerEffect;->moveInTwoLayerActionSwitch(ILandroid/view/View;IFF)V

    .line 898
    .end local v7    # "mFirstLeftView":Landroid/view/View;
    :cond_5
    return-void

    .line 753
    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    .line 756
    :cond_6
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v0, v1, :cond_1

    .line 757
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v0, v4, :cond_9

    .line 758
    :cond_7
    cmpl-float v0, p1, v5

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v0, :cond_8

    .line 759
    const/4 p1, 0x0

    goto :goto_0

    .line 760
    :cond_8
    cmpg-float v0, p1, v5

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v0, :cond_1

    .line 761
    const/4 p1, 0x0

    goto :goto_0

    .line 764
    :cond_9
    cmpg-float v0, p1, v5

    if-gez v0, :cond_a

    .line 765
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto/16 :goto_0

    .line 767
    :cond_a
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto/16 :goto_0

    .line 773
    :pswitch_1
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float v6, v0, v1

    .line 774
    .local v6, "leftThreshold":F
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v4, :cond_b

    cmpg-float v0, p1, v6

    if-lez v0, :cond_1

    .line 777
    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v9, :cond_1

    cmpl-float v0, p1, v5

    if-lez v0, :cond_1

    .line 778
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 782
    .end local v6    # "leftThreshold":F
    :pswitch_2
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float v8, v0, v1

    .line 783
    .local v8, "rightThreshold":F
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v9, :cond_c

    cmpl-float v0, p1, v8

    if-gez v0, :cond_1

    .line 786
    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v4, :cond_1

    cmpg-float v0, p1, v5

    if-gez v0, :cond_1

    .line 787
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 811
    .end local v8    # "rightThreshold":F
    .restart local v7    # "mFirstLeftView":Landroid/view/View;
    :pswitch_3
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    .line 814
    :cond_d
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v0, v1, :cond_f

    .line 815
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v0, v4, :cond_e

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v0, v4, :cond_12

    .line 816
    :cond_e
    cmpl-float v0, p1, v5

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v0, :cond_11

    .line 817
    const/4 p1, 0x0

    .line 830
    :cond_f
    :goto_2
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v0, v9, :cond_4

    .line 831
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_14

    .line 832
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v0, :cond_10

    .line 833
    iput-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 834
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 843
    :cond_10
    :goto_3
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_15

    .line 844
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v0, :cond_4

    .line 845
    iput-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 846
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto/16 :goto_1

    .line 818
    :cond_11
    cmpg-float v0, p1, v5

    if-gez v0, :cond_f

    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v0, :cond_f

    .line 819
    const/4 p1, 0x0

    goto :goto_2

    .line 822
    :cond_12
    cmpg-float v0, p1, v5

    if-gez v0, :cond_13

    .line 823
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    .line 825
    :cond_13
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    .line 836
    :cond_14
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 837
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v0, :cond_10

    .line 838
    iput-boolean v10, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 839
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_3

    .line 848
    :cond_15
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 849
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v0, :cond_4

    .line 850
    iput-boolean v10, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 851
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto/16 :goto_1

    .line 857
    :pswitch_4
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    .line 858
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v0, :cond_16

    .line 859
    iput-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 860
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 869
    :cond_16
    :goto_4
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v9, :cond_4

    cmpl-float v0, p1, v5

    if-lez v0, :cond_4

    .line 870
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 862
    :cond_17
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_16

    .line 863
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v0, :cond_16

    .line 864
    iput-boolean v10, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 865
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_4

    .line 874
    :pswitch_5
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_19

    .line 875
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v0, :cond_18

    .line 876
    iput-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 877
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 886
    :cond_18
    :goto_5
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v0, v4, :cond_4

    cmpg-float v0, p1, v5

    if-gez v0, :cond_4

    .line 887
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 879
    :cond_19
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    .line 880
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v0, :cond_18

    .line 881
    iput-boolean v10, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 882
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_5

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 809
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

    .line 723
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    .line 724
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 725
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 726
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 727
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 728
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    .line 729
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 730
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    .line 731
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 732
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 733
    return-void
.end method


# virtual methods
.method public closeAnimate()V
    .locals 3

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 208
    :cond_0
    return-void
.end method

.method public closeNoAnimate()V
    .locals 3

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZLjava/lang/Object;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected closeOpenedItem(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v1, 0x1

    .line 1246
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v2, :cond_1

    .line 1247
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1249
    .local v0, "absTX":F
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v2, :cond_0

    int-to-float v2, p1

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 1258
    .end local v0    # "absTX":F
    :goto_0
    return v1

    .line 1253
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

    .line 1254
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    goto :goto_0

    .line 1258
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
    .line 1045
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 1048
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V

    .line 1051
    :cond_1
    return-void
.end method

.method protected generateDismissAnimate(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 1061
    if-nez p1, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1069
    :cond_1
    const/4 v1, 0x0

    .line 1070
    .local v1, "moveTo":I
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v2, :cond_5

    .line 1071
    if-nez p2, :cond_2

    .line 1072
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 1080
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1081
    .local v0, "alpha":I
    if-eqz p2, :cond_3

    .line 1082
    const/4 v0, 0x0

    .line 1085
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

    .line 1096
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0

    .line 1072
    .end local v0    # "alpha":I
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_1

    .line 1075
    :cond_5
    if-eqz p2, :cond_2

    .line 1076
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
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 1107
    if-nez p1, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1115
    :cond_1
    const/4 v1, 0x0

    .line 1116
    .local v1, "moveTo":I
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_4

    .line 1117
    if-nez p2, :cond_2

    .line 1118
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v0, v2

    float-to-int v1, v0

    .line 1127
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/letv/leui/widget/ITwoLayerEffect;->generateRevealAnimateInTwoLayer(ILandroid/view/View;Landroid/view/View;ZZZ)V

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0

    .line 1118
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v0, v2

    float-to-int v1, v0

    goto :goto_1

    .line 1121
    :cond_4
    if-eqz p2, :cond_2

    .line 1122
    if-eqz p3, :cond_5

    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v0, v2

    float-to-int v1, v0

    :goto_2
    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v0, v2

    float-to-int v1, v0

    goto :goto_2
.end method

.method protected generateSwitchAnimate(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isSwitched"    # Z

    .prologue
    .line 1140
    if-nez p1, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mTwoLayerEffcect:Lcom/letv/leui/widget/ITwoLayerEffect;

    iget-object v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/letv/leui/widget/ITwoLayerEffect;->generateSwitchAnimateInTwoLayer(Landroid/view/View;Landroid/view/View;Z)V

    .line 1151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    goto :goto_0
.end method

.method protected getBackView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getBackView()Landroid/view/View;

    move-result-object v0

    .line 1272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFrontView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getFrontView()Landroid/view/View;

    move-result-object v0

    .line 1265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    return v0
.end method

.method public getSwipeListener()Lcom/letv/leui/widget/SwipeListener;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    return-object v0
.end method

.method public getSwipeSwitchListener()Lcom/letv/leui/widget/SwipeSwitchListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    return v0
.end method

.method protected isSwipeTouchEnabled()Z
    .locals 1

    .prologue
    .line 1185
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
    .line 981
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListener;->onChangeSwipeMode()I

    move-result v0

    .line 984
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
    .line 958
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onClosed(Z)V

    .line 961
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 362
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 363
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 364
    .local v5, "y":F
    const/4 v3, 0x0

    .line 366
    .local v3, "intercept":Z
    if-nez v0, :cond_0

    .line 368
    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {p0, v7, v8, v9}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewClickable(ZII)Z

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 372
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    move v6, v3

    .line 437
    :cond_2
    :goto_1
    return v6

    .line 374
    :pswitch_0
    iget-boolean v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getFrontView()Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, "fView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 380
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->setFrontView(Landroid/view/View;)V

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "bView":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 385
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackView(Landroid/view/View;)V

    .line 388
    :cond_4
    const/4 v8, 0x3

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    .line 390
    iget v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 391
    iget v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 392
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 393
    if-eqz v2, :cond_5

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 402
    :cond_5
    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {p0, v8, v9, v7}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    .line 403
    iget-object v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 404
    iget-object v8, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 406
    :cond_6
    iget-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v7, :cond_7

    .line 407
    float-to-int v7, v4

    float-to-int v8, v5

    invoke-virtual {p0, v7, v8, v6}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    .line 408
    iget-object v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 409
    iget-object v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 413
    :cond_7
    const/4 v3, 0x0

    .line 414
    goto :goto_0

    .line 418
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

    if-ltz v6, :cond_8

    .line 419
    const/4 v3, 0x1

    goto :goto_0

    .line 421
    :cond_8
    const/4 v3, 0x0

    .line 423
    goto :goto_0

    .line 426
    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    .line 428
    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v6, :cond_9

    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v7

    .line 429
    goto :goto_1

    .line 431
    :cond_9
    const/4 v3, 0x0

    .line 432
    goto/16 :goto_0

    .line 372
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
    .line 969
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onMove(F)V

    .line 972
    :cond_0
    return-void
.end method

.method protected onOpened(Z)V
    .locals 1
    .param p1, "toRight"    # Z

    .prologue
    .line 947
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onOpened(Z)V

    .line 950
    :cond_0
    return-void
.end method

.method protected onStartClose(Z)V
    .locals 1
    .param p1, "right"    # Z

    .prologue
    .line 918
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onStartClose(Z)V

    .line 921
    :cond_0
    return-void
.end method

.method protected onStartOpen(IZ)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "right"    # Z

    .prologue
    .line 907
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/SwipeListener;->onStartOpen(IZ)V

    .line 910
    :cond_0
    return-void
.end method

.method protected onSwipeDismissed(ZLandroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "swap"    # Z
    .param p2, "view"    # Landroid/view/View;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 991
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 993
    return-void
.end method

.method protected onSwipeRevealed(ZZLjava/lang/Object;)V
    .locals 3
    .param p1, "swap"    # Z
    .param p2, "swapRight"    # Z
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 999
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    .line 1000
    .local v0, "aux":Z
    if-eqz p1, :cond_0

    .line 1001
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1002
    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    .line 1005
    :cond_0
    if-eqz v0, :cond_2

    .line 1006
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onOpened(Z)V

    .line 1007
    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    .line 1011
    :goto_1
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    .line 1012
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 1013
    return-void

    :cond_1
    move v0, v1

    .line 1001
    goto :goto_0

    .line 1009
    :cond_2
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onClosed(Z)V

    goto :goto_1
.end method

.method protected onSwipeSwitched(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "isSwitched"    # Z
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitched(Z)V

    .line 1031
    :cond_0
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell(Ljava/lang/Object;)V

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 1033
    return-void
.end method

.method protected onSwipeSwitching(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitching(Z)V

    .line 1022
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
    .line 442
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 443
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 444
    .local v20, "x":I
    const/4 v8, 0x0

    .line 448
    .local v8, "deltaX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    .line 449
    const/16 v21, 0x0

    .line 715
    :goto_0
    return v21

    .line 452
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

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 456
    :cond_1
    const/4 v9, 0x0

    .line 457
    .local v9, "eventFrontViewX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v9

    .line 460
    :cond_2
    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_4

    .line 461
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 468
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 715
    :cond_3
    :goto_2
    const/16 v21, 0x0

    goto :goto_0

    .line 462
    :cond_4
    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gez v21, :cond_5

    .line 463
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_1

    .line 465
    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_1

    .line 470
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 471
    :cond_6
    const/16 v21, 0x1

    goto :goto_0

    .line 474
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

    .line 475
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 478
    :cond_8
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 481
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

    .line 486
    const/4 v12, 0x0

    .line 488
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

    .line 489
    const/4 v12, 0x1

    .line 494
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    if-eqz v12, :cond_b

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 496
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 490
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

    .line 491
    const/4 v12, 0x1

    goto :goto_3

    .line 499
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 508
    .local v18, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 510
    .local v19, "velocityY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 511
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

    .line 512
    const/16 v18, 0x0

    .line 514
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

    .line 515
    const/16 v18, 0x0

    .line 519
    :cond_d
    const/4 v14, 0x0

    .line 520
    .local v14, "swap":Z
    const/4 v15, 0x0

    .line 521
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

    .line 523
    .local v17, "velocityEnable":Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 591
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14, v15}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateAnimate(Landroid/view/View;ZZ)V

    .line 597
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

    .line 598
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

    .line 601
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 602
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    goto/16 :goto_2

    .line 521
    .end local v17    # "velocityEnable":Z
    :cond_11
    const/16 v17, 0x0

    goto :goto_4

    .line 525
    .restart local v17    # "velocityEnable":Z
    :pswitch_2
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_15

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_12

    const/4 v15, 0x1

    .line 527
    :goto_6
    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 528
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 526
    :cond_12
    const/4 v15, 0x0

    goto :goto_6

    .line 529
    :cond_13
    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 530
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 532
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 534
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

    .line 535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/4 v15, 0x1

    .line 537
    :goto_7
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 538
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 535
    :cond_16
    const/4 v15, 0x0

    goto :goto_7

    .line 539
    :cond_17
    if-nez v15, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 540
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 542
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 547
    :pswitch_3
    if-eqz v17, :cond_1e

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_19

    const/4 v15, 0x1

    .line 550
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

    .line 551
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 548
    :cond_19
    const/4 v15, 0x0

    goto :goto_8

    .line 552
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

    .line 553
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 554
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

    .line 555
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 556
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

    .line 557
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 559
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 562
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    const/4 v15, 0x1

    .line 564
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

    .line 565
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

    .line 562
    :cond_1f
    const/4 v15, 0x0

    goto :goto_9

    .line 565
    :cond_20
    const/4 v14, 0x0

    goto :goto_a

    .line 566
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

    .line 567
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

    .line 568
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_25

    .line 569
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

    .line 570
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 571
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

    .line 576
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_27

    const/4 v15, 0x1

    .line 577
    :goto_e
    const/4 v11, 0x0

    .line 578
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

    .line 579
    const/4 v11, 0x1

    .line 585
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V

    goto/16 :goto_5

    .line 576
    .end local v11    # "isSwitched":Z
    :cond_27
    const/4 v15, 0x0

    goto :goto_e

    .line 580
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

    .line 581
    const/4 v11, 0x1

    goto :goto_f

    .line 583
    :cond_29
    const/4 v11, 0x0

    goto :goto_f

    .line 606
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

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 613
    .restart local v18    # "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 615
    .restart local v19    # "velocityY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 617
    .local v13, "moveRawX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpl-float v21, v21, v13

    if-lez v21, :cond_2f

    .line 618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a

    .line 619
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 620
    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 625
    :cond_2a
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 626
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 641
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v21, v0

    sub-float v8, v13, v21

    .line 642
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 644
    .local v7, "deltaMode":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v16, v0

    .line 645
    .local v16, "swipeMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onChangeSwipeMode()I

    move-result v6

    .line 646
    .local v6, "changeSwipeMode":I
    if-ltz v6, :cond_2b

    .line 647
    move/from16 v16, v6

    .line 651
    :cond_2b
    if-nez v16, :cond_32

    .line 652
    const/4 v7, 0x0

    .line 670
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

    .line 671
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

    .line 672
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

    .line 680
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

    .line 681
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    .line 682
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 683
    const/4 v8, 0x0

    .line 685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b

    .line 686
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

    .line 687
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 688
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_39

    const/16 v21, 0x0

    :goto_14
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 689
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3a

    const/16 v21, 0x1

    :goto_15
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    .line 702
    :goto_16
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 703
    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    shl-int/lit8 v21, v21, 0x8

    or-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 705
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/BaseSwipeHelper;->superOnTouchEvent(Landroid/view/MotionEvent;)Z

    .line 708
    .end local v5    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 709
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

    .line 710
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/letv/leui/widget/BaseSwipeHelper;->move(F)V

    .line 711
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 627
    .end local v6    # "changeSwipeMode":I
    .end local v7    # "deltaMode":F
    .end local v16    # "swipeMode":I
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpg-float v21, v21, v13

    if-gez v21, :cond_31

    .line 628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30

    .line 629
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 630
    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_30

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 635
    :cond_30
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 636
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_10

    .line 638
    :cond_31
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_10

    .line 653
    .restart local v6    # "changeSwipeMode":I
    .restart local v7    # "deltaMode":F
    .restart local v16    # "swipeMode":I
    :cond_32
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_2c

    .line 654
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_34

    .line 655
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_33

    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-ltz v21, :cond_2c

    .line 657
    :cond_33
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_2c

    goto/16 :goto_11

    .line 661
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

    .line 662
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 663
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

    .line 664
    const/4 v7, 0x0

    goto/16 :goto_11

    .line 673
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

    .line 674
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

    .line 675
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

    .line 686
    :cond_38
    const/16 v21, 0x0

    goto/16 :goto_13

    .line 688
    :cond_39
    const/16 v21, 0x1

    goto/16 :goto_14

    .line 689
    :cond_3a
    const/16 v21, 0x0

    goto/16 :goto_15

    .line 691
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3d

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 696
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

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f

    const/4 v10, 0x1

    .line 698
    .local v10, "isOpenRight":Z
    :goto_1a
    if-eqz v10, :cond_40

    const/16 v21, 0x0

    :goto_1b
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 699
    if-eqz v10, :cond_41

    const/16 v21, 0x1

    :goto_1c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    goto/16 :goto_16

    .line 693
    .end local v10    # "isOpenRight":Z
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3c

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_18

    .line 696
    :cond_3e
    const/16 v21, 0x0

    goto :goto_19

    .line 697
    :cond_3f
    const/4 v10, 0x0

    goto :goto_1a

    .line 698
    .restart local v10    # "isOpenRight":Z
    :cond_40
    const/16 v21, 0x1

    goto :goto_1b

    .line 699
    :cond_41
    const/16 v21, 0x0

    goto :goto_1c

    .line 709
    .end local v10    # "isOpenRight":Z
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    move/from16 v21, v0

    goto/16 :goto_17

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 523
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
    .line 194
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 197
    :cond_0
    return-void
.end method

.method protected resetCell(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    :cond_0
    return-void
.end method

.method protected setBackView(Landroid/view/View;)V
    .locals 0
    .param p1, "backView"    # Landroid/view/View;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    .line 1177
    return-void
.end method

.method protected setBackViewChildFocusable(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focus"    # Z

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1226
    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    .line 1235
    :cond_0
    return-void

    .line 1230
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1231
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1232
    .local v0, "backChildView":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 1230
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

    .line 1208
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1210
    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1220
    :goto_0
    return v4

    .line 1214
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1215
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1216
    .local v0, "backChildView":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1217
    if-eqz p1, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1214
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1216
    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_2

    .line 1217
    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_3

    .line 1220
    .end local v0    # "backChildView":Landroid/view/View;
    :cond_3
    iget-boolean v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_0
.end method

.method protected setFrontView(Landroid/view/View;)V
    .locals 0
    .param p1, "frontView"    # Landroid/view/View;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    .line 1168
    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 0
    .param p1, "offsetLeft"    # F

    .prologue
    .line 322
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 323
    return-void
.end method

.method public setOffsetRight(F)V
    .locals 0
    .param p1, "offsetRight"    # F

    .prologue
    .line 313
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 314
    return-void
.end method

.method public setOverOffsetEnabled(Z)V
    .locals 0
    .param p1, "overOffsetEnabled"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 345
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    .line 305
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0
    .param p1, "swipeActionLeft"    # I

    .prologue
    .line 277
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 278
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0
    .param p1, "swipeActionRight"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 296
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 354
    return-void
.end method

.method public setSwipeLeftSwitchLine(F)V
    .locals 0
    .param p1, "swipeLeftSwitchLine"    # F

    .prologue
    .line 340
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 341
    return-void
.end method

.method public setSwipeListener(Lcom/letv/leui/widget/SwipeListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    .line 228
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0
    .param p1, "swipeMode"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 260
    return-void
.end method

.method public setSwipeRightSwitchLine(F)V
    .locals 0
    .param p1, "swipeRightSwitchLine"    # F

    .prologue
    .line 331
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 332
    return-void
.end method

.method public setSwipeSwitchListener(Lcom/letv/leui/widget/SwipeSwitchListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeSwitchListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    .line 244
    return-void
.end method

.method protected superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->superOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
