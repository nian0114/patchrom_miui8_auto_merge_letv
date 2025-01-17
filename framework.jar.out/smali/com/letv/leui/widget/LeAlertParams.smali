.class public Lcom/letv/leui/widget/LeAlertParams;
.super Ljava/lang/Object;
.source "LeAlertParams.java"


# static fields
.field public static final BTN_CFM_COLOR_BLACK:I = -0x1000000

.field public static final BTN_CFM_COLOR_BLUE:I = -0xdc6a12

.field public static final BTN_CFM_COLOR_RED:I = -0x14c1d2


# instance fields
.field public btnColors:[I

.field public btn_cancel:Landroid/widget/Button;

.field public btn_confirm:Landroid/widget/Button;

.field public btn_text:[Ljava/lang/String;

.field private checkBox:Landroid/widget/CheckBox;

.field public checkboxText:Ljava/lang/String;

.field private checkbox_ctn:Landroid/widget/LinearLayout;

.field public checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public contentText:Ljava/lang/String;

.field private contentView:Landroid/widget/TextView;

.field public customView:Landroid/view/View;

.field private diyLine1:Landroid/widget/ImageView;

.field private diyLine2:Landroid/widget/ImageView;

.field private gapLine_1:Landroid/widget/ImageView;

.field private gapLine_2:Landroid/widget/ImageView;

.field private isTitleSetted:Z

.field private layoutForDiy:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field private mMenuView:Landroid/view/View;

.field private menuContainer:Landroid/view/ViewGroup;

.field public onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public titleText:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeAlertParams;->isTitleSetted:Z

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertParams;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeAlertParams;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeAlertParams;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getWidget()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->contentView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkbox_ctn:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->gapLine_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->gapLine_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_confirm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->layoutForDiy:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->diyLine1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    const v1, 0x10203eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->diyLine2:Landroid/widget/ImageView;

    return-void
.end method

.method private setStyle(Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/view/View;)V
    .locals 5
    .param p1, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "checkbox_listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p3, "btn_text"    # [Ljava/lang/String;
    .param p4, "titleText"    # Ljava/lang/String;
    .param p5, "contentText"    # Ljava/lang/String;
    .param p6, "checkboxText"    # Ljava/lang/String;
    .param p7, "btnColors"    # [I
    .param p8, "customView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    if-nez p6, :cond_1

    :cond_0
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-nez p8, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    if-eqz p8, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-nez p8, :cond_9

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->diyLine1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->diyLine2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    if-eqz p2, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkbox_ctn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p8, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->gapLine_1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_3
    if-eqz p3, :cond_8

    array-length v0, p3

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_confirm:Landroid/widget/Button;

    aget-object v1, p3, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_confirm:Landroid/widget/Button;

    aget v1, p7, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_confirm:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeAlertParams$2;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeAlertParams$2;-><init>(Lcom/letv/leui/widget/LeAlertParams;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    array-length v0, p3

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->gapLine_2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->menuContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertParams;->mMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->layoutForDiy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->contentView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_d

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_d
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->checkbox_ctn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeAlertParams$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeAlertParams$1;-><init>(Lcom/letv/leui/widget/LeAlertParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_e
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_cancel:Landroid/widget/Button;

    aget-object v1, p3, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_cancel:Landroid/widget/Button;

    aget v1, p7, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeAlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeAlertParams$3;-><init>(Lcom/letv/leui/widget/LeAlertParams;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method


# virtual methods
.method public apply(Lcom/letv/leui/widget/LeAlertController;)V
    .locals 9
    .param p1, "controller"    # Lcom/letv/leui/widget/LeAlertController;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x109008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->menuContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeAlertParams;->getWidget()V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeAlertParams;->isTitleSetted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertParams;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertParams;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertParams;->checkbox_listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v3, p0, Lcom/letv/leui/widget/LeAlertParams;->btn_text:[Ljava/lang/String;

    iget-object v4, p0, Lcom/letv/leui/widget/LeAlertParams;->titleText:Ljava/lang/String;

    iget-object v5, p0, Lcom/letv/leui/widget/LeAlertParams;->contentText:Ljava/lang/String;

    iget-object v6, p0, Lcom/letv/leui/widget/LeAlertParams;->checkboxText:Ljava/lang/String;

    iget-object v7, p0, Lcom/letv/leui/widget/LeAlertParams;->btnColors:[I

    iget-object v8, p0, Lcom/letv/leui/widget/LeAlertParams;->customView:Landroid/view/View;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/letv/leui/widget/LeAlertParams;->setStyle(Landroid/content/DialogInterface$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->menuContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LeAlertController;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeAlertParams;->isTitleSetted:Z

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertParams;->titleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertParams;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertParams;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
