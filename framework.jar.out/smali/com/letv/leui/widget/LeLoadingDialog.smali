.class public Lcom/letv/leui/widget/LeLoadingDialog;
.super Landroid/app/Dialog;
.source "LeLoadingDialog.java"


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private final mCurTheme:I

.field private mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentViewSizeDp"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/LeLoadingDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "contentViewSizeDp"    # I

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LeLoadingDialog;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "contentViewSizeDp"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/LeLoadingDialog;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "contentViewSizeDp"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "dismissCallBack"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mCurTheme:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, p6}, Lcom/letv/leui/widget/LeLoadingDialog;->initDialog(Ljava/lang/Runnable;)V

    invoke-direct {p0, p3, p4, p5}, Lcom/letv/leui/widget/LeLoadingDialog;->initView(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$001(Lcom/letv/leui/widget/LeLoadingDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingDialog;

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeLoadingDialog;)Lcom/letv/leui/widget/LeLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    return-object v0
.end method

.method static synthetic access$201(Lcom/letv/leui/widget/LeLoadingDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeLoadingDialog;

    .prologue
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private addLinearLayout1(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 14
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v0, "l1":Landroid/widget/LinearLayout;
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v4, "l1Lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual {p0, v7, v8}, Lcom/letv/leui/widget/LeLoadingDialog;->dipToPixels(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v10, v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v5, "v1":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "l1Item1Lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "l1Item2Lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41000000    # 8.0f

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    const/4 v8, 0x2

    const/high16 v9, 0x41700000    # 15.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mCurTheme:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v6, "v3":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v3, "l1Item3Lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    .end local v3    # "l1Item3Lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "v3":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    const-string v8, "#575757"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private addLinearLayout2(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 14
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v9, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/4 v10, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v0, "l1":Landroid/widget/LinearLayout;
    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v4, "l1Lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    const/high16 v8, 0x40e00000    # 7.0f

    invoke-virtual {p0, v7, v8}, Lcom/letv/leui/widget/LeLoadingDialog;->dipToPixels(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v10, v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v5, "v1":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, "l1Item1Lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v2, "l1Item2Lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x41000000    # 8.0f

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    const/4 v8, 0x2

    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mCurTheme:I

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    const-string v8, "#99ffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v6, "v3":Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v3, "l1Item3Lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0

    .end local v3    # "l1Item3Lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "v3":Landroid/widget/TextView;
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    const-string v8, "#717171"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private initDialog(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "dismissCallBack"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLoadingDialog;->requestWindowFeature(I)Z

    iget v1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mCurTheme:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/letv/leui/widget/LeLoadingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLoadingDialog$1;-><init>(Lcom/letv/leui/widget/LeLoadingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLoadingDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Lcom/letv/leui/widget/LeLoadingDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLoadingDialog$2;-><init>(Lcom/letv/leui/widget/LeLoadingDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLoadingDialog;->setCanceledOnTouchOutside(Z)V

    return-void

    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#F2FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    goto :goto_0
.end method

.method private initView(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "contentViewSizeDp"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .local v6, "rl":Landroid/widget/RelativeLayout;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .local v1, "innerLl":Landroid/widget/LinearLayout;
    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "innerRlLp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v8, Lcom/letv/leui/widget/LeLoadingView;

    iget-object v9, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/letv/leui/widget/LeLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContext:Landroid/content/Context;

    int-to-float v9, p1

    invoke-virtual {p0, v8, v9}, Lcom/letv/leui/widget/LeLoadingDialog;->dipToPixels(Landroid/content/Context;F)F

    move-result v8

    float-to-int v7, v8

    .local v7, "v":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    invoke-virtual {v8, v5}, Lcom/letv/leui/widget/LeLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LeLoadingDialog;->addLinearLayout1(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v3

    .local v3, "l1":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/letv/leui/widget/LeLoadingDialog;->addLinearLayout2(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    .local v4, "l2":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeLoadingDialog;->setContentView(Landroid/view/View;)V

    iget v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mCurTheme:I

    if-nez v8, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    invoke-virtual {v8, v0}, Lcom/letv/leui/widget/LeLoadingView;->setColorList(Ljava/util/ArrayList;)V

    .end local v0    # "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
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
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->setCancelAnim(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    new-instance v1, Lcom/letv/leui/widget/LeLoadingDialog$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeLoadingDialog$3;-><init>(Lcom/letv/leui/widget/LeLoadingDialog;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissNoAnim()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->disappearAnim(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public getContent()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeLoadingView()Lcom/letv/leui/widget/LeLoadingView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDismissDialog4DestroyContext()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLoadingDialog;->dismissNoAnim()V

    :cond_0
    return-void
.end method

.method public setContentStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mContent:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeLoadingDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
