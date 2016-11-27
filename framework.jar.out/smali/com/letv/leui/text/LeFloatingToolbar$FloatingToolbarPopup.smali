.class final Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FloatingToolbarPopup"
.end annotation


# instance fields
.field private leftArrow:Landroid/view/View;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mDismissed:Z

.field private mHidden:Z

.field private mLeftArrowEnterAnimation:Landroid/animation/AnimatorSet;

.field private mLeftArrowExitAnimation:Landroid/animation/AnimatorSet;

.field private mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mRightArrowEnterAnimation:Landroid/animation/AnimatorSet;

.field private mRightArrowExitAnimation:Landroid/animation/AnimatorSet;

.field private mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;

.field private mShouldMeasured:Z

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mViewPortOnScreen:Landroid/graphics/Rect;

.field private rightArrow:Landroid/view/View;

.field final synthetic this$0:Lcom/letv/leui/text/LeFloatingToolbar;


# direct methods
.method public constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    iput-boolean v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    .local v0, "bodyView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Lcom/letv/leui/widget/LeHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;

    return-object v0
.end method

.method private createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .local v0, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-direct {v2, p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .local v2, "scrollView":Lcom/letv/leui/widget/LeHorizontalScrollView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    iget-object v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    iget-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v3, p0, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;Lcom/letv/leui/widget/LeHorizontalScrollView;)V

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iput-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mScrollView:Lcom/letv/leui/widget/LeHorizontalScrollView;

    return-object v2
.end method

.method private createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 12
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const v11, 0x1020093

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "c":Landroid/content/Context;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .local v3, "popupContentHolder":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10102c8

    invoke-direct {v4, v5, v9, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v4, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const v5, 0x1080665

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setId(I)V

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x10900b3

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x10900b4

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x7

    invoke-virtual {v2, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createArrowEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    invoke-static {v5}, Lcom/letv/leui/text/LeFloatingToolbar;->access$300(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowEnterAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    new-instance v6, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v6, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createArrowExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    invoke-static {v5, v8, v6}, Lcom/letv/leui/text/LeFloatingToolbar;->access$500(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowExitAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createArrowEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    invoke-static {v5}, Lcom/letv/leui/text/LeFloatingToolbar;->access$300(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowEnterAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    new-instance v6, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createArrowExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    invoke-static {v5, v8, v6}, Lcom/letv/leui/text/LeFloatingToolbar;->access$500(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowExitAnimation:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    new-instance v6, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v6, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    new-instance v6, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;

    invoke-direct {v6, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v4
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    const/4 v14, 0x1

    const/high16 v15, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v3, v14

    .local v3, "padding":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->measure(II)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    mul-int/lit8 v16, v3, 0x2

    sub-int v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "width":I
    if-lez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v14, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    .end local v9    # "width":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int v12, v14, v15

    .local v12, "x":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int v1, v14, v15

    .local v1, "availableHeightAboveContent":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v14, v15

    .local v2, "availableHeightBelowContent":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .local v8, "toobarHeight":I
    if-lt v1, v8, :cond_2

    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v14, v8

    .local v13, "y":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v15, 0x0

    aget v4, v14, v15

    .local v4, "rootViewLeftOnScreen":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v15, 0x1

    aget v6, v14, v15

    .local v6, "rootViewTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v14, v15}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v15, 0x0

    aget v5, v14, v15

    .local v5, "rootViewLeftOnWindow":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v15, 0x1

    aget v7, v14, v15

    .local v7, "rootViewTopOnWindow":I
    sub-int v10, v4, v5

    .local v10, "windowLeftOnScreen":I
    sub-int v11, v6, v7

    .local v11, "windowTopOnScreen":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v15, v12, v10

    sub-int v16, v13, v11

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Point;->set(II)V

    return-void

    .end local v4    # "rootViewLeftOnScreen":I
    .end local v5    # "rootViewLeftOnWindow":I
    .end local v6    # "rootViewTopOnScreen":I
    .end local v7    # "rootViewTopOnWindow":I
    .end local v10    # "windowLeftOnScreen":I
    .end local v11    # "windowTopOnScreen":I
    .end local v13    # "y":I
    :cond_2
    if-lt v2, v8, :cond_3

    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v13    # "y":I
    goto :goto_0

    .end local v13    # "y":I
    :cond_3
    move-object/from16 v0, p1

    iget v14, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v14, v8

    .restart local v13    # "y":I
    goto :goto_0
.end method

.method private refreshViewPort()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->access$800(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private viewPortHasChanged()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkArrowShowing(Lcom/letv/leui/widget/LeHorizontalScrollView;I)V
    .locals 8
    .param p1, "scrollView"    # Lcom/letv/leui/widget/LeHorizontalScrollView;
    .param p2, "scrollX"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    if-eqz v2, :cond_0

    if-gtz p2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_3

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .local v1, "scrollRange":I
    invoke-virtual {p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1, v5}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/letv/leui/widget/LeHorizontalScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .end local v0    # "child":Landroid/view/View;
    :cond_1
    if-ge p2, v1, :cond_4

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowEnterAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowEnterAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .end local v1    # "scrollRange":I
    :cond_2
    :goto_1
    return-void

    :cond_3
    if-lez p2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowEnterAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->leftArrow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mLeftArrowEnterAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .restart local v1    # "scrollRange":I
    :cond_4
    if-lt p2, v1, :cond_2

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_2

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mRightArrowExitAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    iput-boolean v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    new-instance v1, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;

    invoke-direct {v1, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-direct {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    goto :goto_0
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method
