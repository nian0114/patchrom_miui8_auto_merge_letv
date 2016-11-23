.class public Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
.super Landroid/widget/FrameLayout;
.source "LeHorizontalScrollStripTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;,
        Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final density:F

.field private volatile isAddTab:Z

.field private isShowLeftRightShadow:Z

.field private mBDivideColor:Landroid/content/res/ColorStateList;

.field private mBDivideHeight:I

.field private mBStripColor:Landroid/content/res/ColorStateList;

.field private mBStripHeight:I

.field private mFontSize:I

.field private mHorizontalScrollHeight:I

.field private mHorizontalScrollWidth:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDivide:Z

.field private mMaxTextWidth:I

.field private mOverSroller:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;

.field private final mScrollView:Landroid/widget/HorizontalScrollView;

.field private mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

.field private mStripColors:Landroid/content/res/ColorStateList;

.field private mTDivideColor:Landroid/content/res/ColorStateList;

.field private mTDivideHeight:I

.field private mTabHeight:I

.field private final mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

.field private mTabSwitchDelayTime:I

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTabWidth:I

.field private mTextHorizontalPadding:I

.field private mTitleOffset:F

.field private mTitleOffsetFactor:F

.field private final metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mIsDivide:Z

    .line 73
    iput-boolean v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isShowLeftRightShadow:Z

    .line 74
    const v0, 0x402ccccd    # 2.7f

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffsetFactor:F

    .line 75
    const/16 v0, 0xc8

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabSwitchDelayTime:I

    .line 86
    const-string v0, "LeHorizontalScrollStripTab"

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->TAG:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->metrics:Landroid/util/DisplayMetrics;

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->density:F

    .line 101
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    .line 103
    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 106
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->initScrollView(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 110
    new-instance v0, Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    .line 111
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v0, v4, v3}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addView(Landroid/view/View;II)V

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->initWidget(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isShowLeftRightShadow:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->initShadow(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->controlShadowVisiable(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->scrollToTab(IF)V

    return-void
.end method

.method private changeTabWidth(I)V
    .locals 5
    .param p1, "tempWidthSize"    # I

    .prologue
    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v3, v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 400
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 401
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 404
    if-nez p1, :cond_1

    .line 406
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 411
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 417
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    if-le v3, v4, :cond_3

    .line 418
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isShowLeftRightShadow:Z

    if-eqz v3, :cond_3

    .line 419
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    :cond_3
    return-void
.end method

.method private controlShadowVisiable(I)V
    .locals 5
    .param p1, "scrollX"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 605
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 608
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isShowLeftRightShadow:Z

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_2

    .line 611
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 615
    .local v0, "lastTabWidth":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-ge v1, p1, :cond_1

    .line 617
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 628
    .end local v0    # "lastTabWidth":I
    :cond_0
    :goto_0
    return-void

    .line 619
    .restart local v0    # "lastTabWidth":I
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 622
    .end local v0    # "lastTabWidth":I
    :cond_2
    if-nez p1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initScrollView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mOverSroller:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;

    .line 124
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mOverSroller:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;

    const/16 v1, 0x190

    iput v1, v0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;->scrollDuration:I

    .line 125
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    const-string v1, "mScroller"

    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mOverSroller:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$CustomScroller;

    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method private initShadow(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v4, 0x8

    .line 130
    new-instance v2, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-direct {v2, p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    .line 132
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getShadowWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getShadowWidth()I

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "rightParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 141
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getRightShadow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;->getLeftShadow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 148
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v3, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$1;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;)V

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 159
    :cond_0
    return-void
.end method

.method private initWidget(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 167
    .local v6, "resources":Landroid/content/res/Resources;
    const v8, 0x10501f0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    .line 168
    const v8, 0x1050252

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    .line 169
    const v8, 0x10501ef

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    .line 170
    const v8, 0x1050253

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    .line 172
    const v8, 0x1050254

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTextHorizontalPadding:I

    .line 174
    const v8, 0x10900ae

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewLayoutId:I

    .line 175
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffsetFactor:F

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffset:F

    .line 176
    const v8, 0x10501f1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    .line 178
    const v8, 0x1060168

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideColor:Landroid/content/res/ColorStateList;

    .line 180
    const v8, 0x1060167

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripColor:Landroid/content/res/ColorStateList;

    .line 182
    const v8, 0x10601e4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    .line 184
    const v8, 0x10501f2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripHeight:I

    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, "isShowTDivider":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "isShowBDivider":Z
    const v8, 0x1060168

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideColor:Landroid/content/res/ColorStateList;

    .line 191
    const v8, 0x10501f1

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideHeight:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 196
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    sget-object v8, Lcom/android/internal/R$styleable;->LeHorizontalScrollStripTab:[I

    const/4 v9, 0x0

    invoke-virtual {v7, p2, v8, p3, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 199
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 201
    .local v5, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 202
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 203
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :pswitch_0
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    goto :goto_1

    .line 208
    :pswitch_1
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    goto :goto_1

    .line 211
    :pswitch_2
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    .line 212
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    int-to-float v8, v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffset:F

    goto :goto_1

    .line 215
    :pswitch_3
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    goto :goto_1

    .line 218
    :pswitch_4
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTextHorizontalPadding:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTextHorizontalPadding:I

    goto :goto_1

    .line 222
    :pswitch_5
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mIsDivide:Z

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mIsDivide:Z

    goto :goto_1

    .line 225
    :pswitch_6
    const/4 v3, 0x1

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 229
    :pswitch_7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 232
    :pswitch_8
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 235
    :pswitch_9
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    goto :goto_1

    .line 238
    :pswitch_a
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripHeight:I

    goto :goto_1

    .line 242
    :pswitch_b
    iget v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideHeight:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideHeight:I

    goto :goto_1

    .line 245
    :pswitch_c
    const/4 v4, 0x1

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 252
    .end local v1    # "attr":I
    .end local v2    # "i":I
    .end local v5    # "n":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripHeight(I)V

    .line 255
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBStripColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    .line 259
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripHeight(I)V

    .line 260
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripLenExtensionPx(I)V

    .line 279
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripLenChangeable(Z)V

    .line 282
    return-void

    .line 261
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 262
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripHeight(I)V

    .line 263
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripHeight(I)V

    .line 265
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 266
    :cond_3
    if-eqz v4, :cond_4

    .line 267
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripHeight(I)V

    .line 268
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTDivideColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 269
    :cond_4
    if-eqz v3, :cond_1

    .line 270
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v9, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideHeight:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripHeight(I)V

    .line 271
    iget-object v8, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    iget-object v10, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mBDivideColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setBottomStripDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private scrollToTab(IF)V
    .locals 5
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 483
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildCount()I

    move-result v1

    .line 484
    .local v1, "tabStripChildCount":I
    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p2

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffset:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "tabWidget"    # Landroid/view/ViewGroup;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->addView(Landroid/view/View;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isAddTab:Z

    .line 330
    return-void
.end method

.method public addTab(Ljava/lang/String;)V
    .locals 10
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 334
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    if-nez v4, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    .line 336
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 339
    .local v1, "tab_widget":Landroid/view/ViewGroup;
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewLayoutId:I

    const v5, 0x10900ae

    if-ne v4, v5, :cond_1

    .line 340
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    move-object v2, v3

    .line 342
    check-cast v2, Landroid/widget/TextView;

    .line 343
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 345
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 349
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 350
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 351
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTextHorizontalPadding:I

    iget v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTextHorizontalPadding:I

    invoke-virtual {v2, v4, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 353
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 354
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 355
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addTab(Landroid/view/ViewGroup;)V

    .line 383
    :goto_0
    return-void

    .line 359
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewTextViewId:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 361
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/widget/TextView;

    if-nez v4, :cond_3

    .line 362
    :cond_2
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "if call setCustomTabView,textViewId must exit and right"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, v3

    .line 365
    check-cast v2, Landroid/widget/TextView;

    .line 366
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 368
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 370
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 372
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 373
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 374
    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    iget-object v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 376
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 377
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addTab(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public addTab(Ljava/lang/String;II)V
    .locals 6
    .param p1, "tabName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I
    .param p3, "textId"    # I

    .prologue
    const/4 v5, 0x0

    .line 309
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    if-nez v3, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    .local v0, "tab_widget":Landroid/view/ViewGroup;
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 313
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 314
    :cond_1
    new-instance v3, Ljava/security/InvalidParameterException;

    const-string v4, "if call addTab,layoutId and textViewId must right"

    invoke-direct {v3, v4}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, v2

    .line 316
    check-cast v1, Landroid/widget/TextView;

    .line 317
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 320
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mMaxTextWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 321
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 322
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addTab(Landroid/view/ViewGroup;)V

    .line 325
    return-void
.end method

.method public addTabs([Ljava/lang/String;)V
    .locals 2
    .param p1, "tabs"    # [Ljava/lang/String;

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 306
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 303
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->addTab(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getShadow()Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mShadow:Lcom/letv/leui/widget/LeHorizontalScrollStripTab$Shadow;

    return-object v0
.end method

.method public getStripTabWidget()Lcom/letv/leui/widget/LeScrollStripTabWidget;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 426
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 429
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isAddTab:Z

    if-nez v3, :cond_0

    .line 480
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->getMeasuredWidth()I

    move-result v2

    .line 434
    .local v2, "width":I
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    if-ge v2, v3, :cond_1

    .line 435
    iput v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    .line 438
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollHeight:I

    iget v4, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    if-eq v3, v4, :cond_2

    .line 439
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollHeight:I

    iput v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabHeight:I

    .line 442
    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mIsDivide:Z

    if-eqz v3, :cond_3

    .line 444
    iget-object v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    .line 445
    .local v0, "tabSize":I
    const/4 v1, 0x0

    .line 447
    .local v1, "tempWidthSize":I
    packed-switch v0, :pswitch_data_0

    .line 471
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    .line 479
    .end local v0    # "tabSize":I
    .end local v1    # "tempWidthSize":I
    :goto_1
    iput-boolean v5, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isAddTab:Z

    goto :goto_0

    .line 450
    .restart local v0    # "tabSize":I
    .restart local v1    # "tempWidthSize":I
    :pswitch_0
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    .line 451
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    goto :goto_1

    .line 455
    :pswitch_1
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    div-int/lit8 v1, v3, 0x2

    .line 456
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    goto :goto_1

    .line 460
    :pswitch_2
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    div-int/lit8 v1, v3, 0x3

    .line 461
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    goto :goto_1

    .line 465
    :pswitch_3
    iget v3, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mHorizontalScrollWidth:I

    div-int/lit8 v1, v3, 0x4

    .line 466
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    goto :goto_1

    .line 476
    .end local v0    # "tabSize":I
    .end local v1    # "tempWidthSize":I
    :cond_3
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->changeTabWidth(I)V

    goto :goto_1

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurrentTab(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 4
    .param p1, "currentTab"    # I

    .prologue
    .line 507
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->getTabCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 508
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#setCurrentTab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 511
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;-><init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;I)V

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    return-object p0
.end method

.method public setCurrentTabButNotInvalidateScrollStrip(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 2
    .param p1, "currentTabButNotInvalidateScrollStrip"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabSwitchDelayTime:I

    invoke-virtual {v0, p1, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTabButNotInvalidateScrollStrip(II)V

    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->scrollToTab(IF)V

    .line 544
    return-object p0
.end method

.method public setCustomTabView(II)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "textViewId"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewLayoutId:I

    .line 294
    iput p2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabViewTextViewId:I

    .line 295
    return-void
.end method

.method public setIsDivide(Z)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "isDivide"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mIsDivide:Z

    .line 582
    return-object p0
.end method

.method public setOnTabClickListener(Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 1
    .param p1, "onTabClickListener"    # Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setOnTabClickListener(Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;)V

    .line 588
    return-object p0
.end method

.method public setScrollStripOffset(IF)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 1
    .param p1, "tab"    # I
    .param p2, "offset"    # F

    .prologue
    .line 495
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabStrip:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setScrollStripOffset(IF)V

    .line 496
    return-object p0
.end method

.method public setSelectStripColors(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 1
    .param p1, "rId"    # I

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    .line 555
    return-object p0
.end method

.method public setSelectStripColors(Landroid/content/res/ColorStateList;)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mStripColors:Landroid/content/res/ColorStateList;

    .line 561
    return-object p0
.end method

.method public setShowBothSidesShadow(Z)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->isShowLeftRightShadow:Z

    .line 567
    return-object p0
.end method

.method public setTabFontSize(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 571
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mFontSize:I

    .line 572
    return-object p0
.end method

.method public setTabWidth(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabWidth:I

    .line 577
    return-object p0
.end method

.method public setTextSwitchDelayed(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "msTime"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTabSwitchDelayTime:I

    .line 650
    return-object p0
.end method

.method public setTitleOffsetFactor(F)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 637
    iput p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->mTitleOffsetFactor:F

    .line 638
    return-object p0
.end method
