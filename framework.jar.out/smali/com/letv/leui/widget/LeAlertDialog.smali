.class public Lcom/letv/leui/widget/LeAlertDialog;
.super Lcom/letv/leui/widget/LeDialog;
.source "LeAlertDialog.java"


# instance fields
.field private negativeCharSequence:Ljava/lang/CharSequence;

.field private negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralCharSequence:Ljava/lang/CharSequence;

.field private neutralListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveCharSequence:Ljava/lang/CharSequence;

.field private positiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x1090075

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090075

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const v0, 0x1090075

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public preShow()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/letv/leui/widget/LeDialog;->preShow()V

    const v1, 0x1020435

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "wizaredView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x1020438

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$1;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$2;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x1020436

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$3;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$3;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    return-void
.end method
