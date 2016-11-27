.class public abstract Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/IPullToRefresh;
.implements Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/letv/leui/widget/pulltorefresh/IPullToRefresh",
        "<TT;>;",
        "Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;"
    }
.end annotation


# static fields
.field public static final ANIMATION_ENTER_OFFSET:F = 0.3f

.field public static final ANIMATION_NEW_ENTER_OFFSET:F = 0.2f

.field static final DEBUG:Z = false

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x258

.field public static final START_NEW_REFRESHING_OFFSET:F = 0.1f

.field public static final START_REFRESHING_OFFSET:F = 0.3f

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field public mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRefreshableViewLayout:I

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    instance-of v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "refreshableView":Landroid/view/View;, "TT;"
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .restart local p2    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullStartToRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullEndToRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getScale(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const v1, 0x3f333333    # 0.7f

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    .end local p1    # "x":F
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "x":F
    :cond_1
    const v0, 0x3fa66666    # 1.3f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x400aaaaa

    sub-float v1, p1, v1

    mul-float p1, v0, v1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0xe

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    sget-object v3, Lcom/android/internal/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v3, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V

    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    invoke-virtual {v3, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    :cond_4
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    :cond_5
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x0

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .local v2, "lastMotionValue":F
    :goto_0
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v4, v5, v6

    .local v4, "scale":F
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    int-to-float v5, v1

    mul-float/2addr v5, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v10, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .end local v4    # "scale":F
    :cond_0
    :goto_3
    return-void

    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .restart local v1    # "itemDimension":I
    goto :goto_1

    .restart local v4    # "scale":F
    :pswitch_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    int-to-float v5, v1

    mul-float/2addr v5, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v10, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method private final smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    :cond_0
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    :cond_1
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void

    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v0

    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    return-object v0
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "isHeader"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v6

    .local v6, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    return-object v6
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;-><init>()V

    .local v0, "proxy":Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    return-void
.end method

.method public forceReset()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->resetImageHeader()V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    return-void
.end method

.method public final getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x258

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method public getmFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method public getmHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .local v1, "action":I
    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    :cond_1
    iput-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v8, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v8, :cond_3

    move v6, v7

    goto :goto_0

    :cond_3
    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .local v4, "x":F
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_1

    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .local v2, "diff":F
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .local v3, "oppositeDiff":F
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, "absDiff":F
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    :cond_6
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_7

    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    iput-boolean v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .restart local v2    # "diff":F
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .restart local v3    # "oppositeDiff":F
    goto :goto_2

    .restart local v0    # "absDiff":F
    :cond_7
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    iput-boolean v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_1

    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    iput-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v1, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v1, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    :cond_1
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    instance-of v1, v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->forceRefreshingImpl()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_3

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    .local v0, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .end local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    goto :goto_0

    .restart local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_1

    .end local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Mode:[I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToLonger(I)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    const-string v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .local v1, "viewState":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "ptr_state"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_mode"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->pullEvent()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v2, :cond_5

    :cond_4
    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v3, v1, [Z

    aput-boolean v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v0, [Z

    invoke-virtual {p0, v2, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    move v0, v1

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

.method public refreshFooterCompleteInternal()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    :cond_0
    return-void
.end method

.method public refreshHeaderCompleteInternal()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    :cond_0
    return-void
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .local v1, "pBottom":I
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    neg-int v2, v0

    :goto_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    neg-int v3, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    neg-int v4, v0

    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    neg-int v1, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$Orientation:[I

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    if-lez p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    return-void
.end method

.method public final setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return-void
.end method

.method final varargs setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$4;->$SwitchMap$com$letv$leui$widget$pulltorefresh$PullToRefreshBase$State:[I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected final smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-void

    :cond_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method
