.class public Lcom/letv/leui/widget/LeBottomButton;
.super Landroid/widget/LinearLayout;
.source "LeBottomButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;
    }
.end annotation


# instance fields
.field private btnNum:I

.field private clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

.field private layout:Landroid/widget/LinearLayout;

.field private leftBtn:Landroid/widget/TextView;

.field private lineView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private rightBtn:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomButton;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    sget-object v1, Lcom/android/internal/R$styleable;->LeBottomButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomButton;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    sget-object v1, Lcom/android/internal/R$styleable;->LeBottomButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomButton;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomButton;->initView()V

    return-void
.end method

.method private createColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 13
    .param p1, "color"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .local v2, "normal":I
    mul-int/lit8 v5, p1, 0xa

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .local v3, "pressed":I
    new-array v1, v12, [I

    aput v3, v1, v9

    aput v3, v1, v10

    aput v2, v1, v11

    .local v1, "colors":[I
    new-array v4, v12, [[I

    .local v4, "states":[[I
    new-array v5, v11, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v9

    new-array v5, v10, [I

    const v6, -0x101009e

    aput v6, v5, v9

    aput-object v5, v4, v10

    new-array v5, v9, [I

    aput-object v5, v4, v11

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .local v0, "colorList":Landroid/content/res/ColorStateList;
    return-object v0

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private initView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    iget v1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    if-gtz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The number of buttons can\'t be greater than 2 or less than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x1090080

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->layout:Landroid/widget/LinearLayout;

    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBottomButton;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const v1, 0x1090081

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->lineView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->view:Landroid/view/View;

    const v2, 0x10203da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;->onLeftClick()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;->onRightClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10203d9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setButtonNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBottomButton;->btnNum:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomButton;->removeAllViews()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBottomButton;->initView()V

    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftBtnTxtColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomButton;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->leftBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setLinesColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->lineView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setOnBottomButtonClickListener(Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomButton;->clickListener:Lcom/letv/leui/widget/LeBottomButton$OnBottomButtonClickListener;

    return-void
.end method

.method public setRightBtnText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRightBtnTxtColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeBottomButton;->createColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomButton;->rightBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
