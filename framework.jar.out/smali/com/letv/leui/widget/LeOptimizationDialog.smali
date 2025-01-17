.class public Lcom/letv/leui/widget/LeOptimizationDialog;
.super Landroid/app/Dialog;
.source "LeOptimizationDialog.java"


# instance fields
.field private contentLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private final mCurTheme:I

.field private mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentViewSizeDp"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/LeOptimizationDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "contentViewSizeDp"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mCurTheme:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->initDialog()V

    invoke-direct {p0, p3}, Lcom/letv/leui/widget/LeOptimizationDialog;->initView(I)V

    return-void
.end method

.method static synthetic access$001(Lcom/letv/leui/widget/LeOptimizationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeOptimizationDialog;

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeOptimizationDialog;)Lcom/letv/leui/widget/LeLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeOptimizationDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    return-object v0
.end method

.method static synthetic access$201(Lcom/letv/leui/widget/LeOptimizationDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeOptimizationDialog;

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private getContentHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContentLocationY()I
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLocationOnScreen()[I

    move-result-object v1

    .local v1, "location":[I
    const/4 v2, 0x1

    aget v2, v1, v2

    return v2
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .local v0, "height":I
    return v0
.end method

.method private initDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeOptimizationDialog;->requestWindowFeature(I)Z

    iget v1, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mCurTheme:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/letv/leui/widget/LeOptimizationDialog$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeOptimizationDialog$1;-><init>(Lcom/letv/leui/widget/LeOptimizationDialog;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeOptimizationDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#66f9f9f9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    goto :goto_0
.end method

.method private initView(I)V
    .locals 6
    .param p1, "contentViewSizeDp"    # I

    .prologue
    const/4 v5, -0x1

    iget-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090051

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "root":Landroid/view/View;
    const v3, 0x102039f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/LeLoadingView;

    iput-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mTitleView:Landroid/widget/TextView;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mMessageView:Landroid/widget/TextView;

    const v3, 0x102039c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->setContentLayoutMargin()V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->setContentView(Landroid/view/View;)V

    iget v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mCurTheme:I

    if-nez v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    invoke-virtual {v3, v0}, Lcom/letv/leui/widget/LeLoadingView;->setColorList(Ljava/util/ArrayList;)V

    .end local v0    # "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private setContentLayoutMargin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x436a0000    # 234.0f

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->dipToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v0, v2

    .local v0, "marginTop":I
    iget-object v2, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method


# virtual methods
.method public dipToPixels(Landroid/content/Context;F)F
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dipValue"    # F

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    new-instance v1, Lcom/letv/leui/widget/LeOptimizationDialog$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeOptimizationDialog$2;-><init>(Lcom/letv/leui/widget/LeOptimizationDialog;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getLeLoadingView()Lcom/letv/leui/widget/LeLoadingView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    return-object v0
.end method

.method public setMarginTop()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->getContentHeight()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-double v4, v3

    const-wide v6, 0x3fde147ae147ae14L    # 0.47

    mul-double/2addr v4, v6

    invoke-direct {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->getContentHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-double v6, v3

    sub-double/2addr v4, v6

    invoke-direct {p0}, Lcom/letv/leui/widget/LeOptimizationDialog;->getContentLocationY()I

    move-result v3

    int-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-int v0, v4

    .local v0, "marginTop":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->contentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
