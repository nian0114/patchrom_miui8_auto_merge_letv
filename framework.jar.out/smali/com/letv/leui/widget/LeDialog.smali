.class public Lcom/letv/leui/widget/LeDialog;
.super Landroid/app/Dialog;
.source "LeDialog.java"


# instance fields
.field protected contentView:Landroid/view/View;

.field protected dialogRes:I

.field private iconResId:I

.field private msg:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x10900a6

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x10900a6

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const v0, 0x10900a6

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public preShow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "contentViewAll":Landroid/view/View;
    invoke-super {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v5, 0x1020006

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .local v2, "icon":Landroid/widget/ImageView;
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "titleTv":Landroid/widget/TextView;
    const v5, 0x1020434

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .local v3, "titlePanel":Landroid/view/View;
    const v5, 0x1020430

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "contentPanel":Landroid/view/View;
    if-eqz v3, :cond_3

    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    if-eqz v5, :cond_7

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "contentPanel":Landroid/view/View;
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void

    .restart local v0    # "contentPanel":Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_4

    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    if-nez v5, :cond_2

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    return-void
.end method

.method public setMeg(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMsg(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->preShow()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
