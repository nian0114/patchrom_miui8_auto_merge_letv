.class public Lcom/letv/leui/widget/LePullToSearchListView;
.super Lcom/letv/leui/widget/LeListView;
.source "LePullToSearchListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;
    }
.end annotation


# static fields
.field private static final DURATION_DEFALT:I = 0x96


# instance fields
.field private RATIO:I

.field private animator:Landroid/animation/ValueAnimator;

.field private headerContentHeight:I

.field private headerView:Landroid/view/ViewGroup;

.field private isShowHeader:Z

.field private listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

.field private releaseToShow:Z

.field private scrollState:I

.field private showTrigger:F

.field private startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    iput-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    iput-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LePullToSearchListView;)Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePullToSearchListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LePullToSearchListView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LePullToSearchListView;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LePullToSearchListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LePullToSearchListView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    return-void
.end method

.method private doAnimation(IIZ)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "isShowHeader"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-array v0, v1, [I

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LePullToSearchListView$1;

    invoke-direct {v1, p0, p3}, Lcom/letv/leui/widget/LePullToSearchListView$1;-><init>(Lcom/letv/leui/widget/LePullToSearchListView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/LePullToSearchListView$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LePullToSearchListView$2;-><init>(Lcom/letv/leui/widget/LePullToSearchListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LePullToSearchListView;->setOverScrollMode(I)V

    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LePullToSearchListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private resetTopPadding(I)V
    .locals 2
    .param p1, "padding"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getHeaderView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRATIO()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    return v0
.end method

.method public getShowTrigger()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    return v0
.end method

.method public isReleaseToShow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    return v0
.end method

.method public isShowHeader()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iput-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    :cond_0
    :goto_0
    iput p2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->showSearchBar()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x96

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-ne v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    invoke-virtual {p0, v5, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPositionFromTop(III)V

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_5
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    if-ne v1, v3, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    iget-boolean v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V

    goto :goto_0

    :cond_7
    iput v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->scrollState:I

    invoke-virtual {p0, v5, v4, v2}, Lcom/letv/leui/widget/LePullToSearchListView;->smoothScrollToPositionFromTop(III)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    if-le v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    iget-boolean v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->ReleaseToShowStateChange(Z)V

    goto/16 :goto_0

    :cond_8
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v2, v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    goto/16 :goto_0

    :cond_a
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    if-le v0, v1, :cond_b

    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    div-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePullToSearchListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    iput-boolean v5, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto/16 :goto_0

    :cond_c
    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->releaseToShow:Z

    goto/16 :goto_0

    :cond_d
    iget v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V

    iput-boolean v4, p0, Lcom/letv/leui/widget/LePullToSearchListView;->isShowHeader:Z

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;->hideSearchBar()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LePullToSearchListView;->measureView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    iget v0, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerContentHeight:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/letv/leui/widget/LePullToSearchListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->headerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListener(Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->listener:Lcom/letv/leui/widget/LePullToSearchListView$PullToSearchListener;

    return-void
.end method

.method public setRATIO(I)V
    .locals 0
    .param p1, "RATIO"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->RATIO:I

    return-void
.end method

.method public setShowTrigger(F)V
    .locals 0
    .param p1, "showTrigger"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LePullToSearchListView;->showTrigger:F

    return-void
.end method
