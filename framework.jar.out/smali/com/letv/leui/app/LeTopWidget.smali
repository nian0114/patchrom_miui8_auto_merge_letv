.class public Lcom/letv/leui/app/LeTopWidget;
.super Landroid/widget/RelativeLayout;
.source "LeTopWidget.java"


# static fields
.field private static final LAND_CENTER_TV_WIDTH:I = 0x15e

.field private static final LAND_CENTER_TV_WIDTH_OTNER:I = 0x12c

.field private static final LAND_LEFT_TV_WIDTH_OTNER:I = 0x64

.field private static final LAYOUT_MARGIN_VALUE:I = 0xe

.field private static final LEFT_DEFAULT_MODE:I = 0x1

.field public static final LEFT_ONLY_LOGO:I = 0x1

.field public static final LEFT_ONLY_TITLE:I = 0x0

.field public static final LEFT_TITLE_LOGO:I = 0x2

.field public static final LEFT_TITLE_LOGO_GONE:I = 0x4

.field private static final PORT_CENTER_TV_WIDTH:I = 0xc8

.field private static final RIGHT_DEFAULT_MODE:I = 0x32

.field public static final RIGHT_ONLY_LOGO:I = 0x16

.field public static final RIGHT_ONLY_TITLE:I = 0x8

.field public static final RIGHT_TITLE_LOGO_GONE:I = 0x32

.field private static final TOP_WIDGET_VIEW_HEIGHT:I = 0x30


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mActionBar:Landroid/view/View;

.field private mBackIV:Landroid/widget/ImageView;

.field private mBackIconId:I

.field private mBackTV:Landroid/widget/TextView;

.field private mCenterTV:Landroid/widget/TextView;

.field private mCenterText:Ljava/lang/CharSequence;

.field private mCenterTvColor:I

.field private mCenterTvSize:I

.field private mContext:Landroid/content/Context;

.field private mLeTopWidgetBgId:I

.field private mLeftLayout:Landroid/widget/LinearLayout;

.field private mLeftMode:I

.field private mLeftText:Ljava/lang/CharSequence;

.field private mLeftTvColor:I

.field private mLeftTvSize:I

.field private mRighTvSize:I

.field private mRightIV:Landroid/widget/ImageView;

.field private mRightIconId:I

.field private mRightLayout:Landroid/widget/LinearLayout;

.field private mRightMode:I

.field private mRightTV:Landroid/widget/TextView;

.field private mRightText:Ljava/lang/CharSequence;

.field private mRightTvColor:I

.field private mTextColor:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Lcom/letv/leui/app/LeTopWidget$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/app/LeTopWidget$1;-><init>(Lcom/letv/leui/app/LeTopWidget;)V

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->clickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x10900ee

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->setMinimumHeight(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->setMinimumWidth(I)V

    const v3, 0x10204ad

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    const v3, 0x10204ae

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    const v3, 0x10204af

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    const v3, 0x10204b0

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    const v3, 0x10204b1

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    const v3, 0x10204a6

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x10204a8

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/letv/leui/app/LeTopWidget;->reMeasureWidth()V

    sget-object v3, Lcom/android/internal/R$styleable;->leTopWidget:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftText:Ljava/lang/CharSequence;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightText:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterText:Ljava/lang/CharSequence;

    const v3, 0x10804dd

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIconId:I

    const/4 v3, 0x4

    const v4, 0x10804de

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIconId:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    const/16 v3, 0xd

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    const/4 v3, 0x5

    const v4, 0x106000b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeTopWidgetBgId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    const/4 v3, 0x6

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvColor:I

    const/16 v3, 0x8

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvColor:I

    const/4 v3, 0x7

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTvColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    const/16 v3, 0x9

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvSize:I

    const/16 v3, 0xa

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRighTvSize:I

    const/16 v3, 0xb

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvSize:I

    invoke-direct {p0}, Lcom/letv/leui/app/LeTopWidget;->initView()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/app/LeTopWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/app/LeTopWidget;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTitle(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIconId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftLogo(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIconId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightLogo(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftMode(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightMode(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeTopWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setTopWidgetBg(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTvSize(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTvSize(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTvSize(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTvColor(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTvColor(I)V

    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTvColor(I)V

    return-void
.end method

.method private reMeasureWidth()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/16 v5, 0x32

    const/16 v3, 0x438

    .local v3, "screenWidth":I
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .local v1, "dis":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .end local v1    # "dis":Landroid/view/Display;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "cf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .local v2, "ori":I
    if-ne v2, v8, :cond_6

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-ne v4, v9, :cond_2

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-ne v4, v8, :cond_4

    :cond_3
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43af0000    # 350.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_6
    if-ne v2, v6, :cond_1

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-ne v4, v9, :cond_7

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_7
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v6, :cond_8

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-ne v4, v8, :cond_9

    :cond_8
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43480000    # 200.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43200000    # 160.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0
.end method

.method private setBg(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    const v3, 0x3c23d70a    # 0.01f

    const/4 v0, 0x0

    .local v0, "alpha":F
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v1, v3

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v1, v3

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "color"    # I

    .prologue
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTextSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public getCenterTextView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftEnable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getLeftLayout()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLeftLogo()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftTextView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightEnable()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getRightTextView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setCenterTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setCenterTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCenterTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setCenterTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLeftLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBg(Landroid/view/View;I)V

    return-void
.end method

.method public setLeftMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLeftTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLeftTvEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLeftTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLeftView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRightLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBg(Landroid/view/View;I)V

    return-void
.end method

.method public setRightMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRightTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setRightTvEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setRightTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setRightView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTopWidgetBg(I)V
    .locals 0
    .param p1, "ResourceId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBackgroundResource(I)V

    return-void
.end method
