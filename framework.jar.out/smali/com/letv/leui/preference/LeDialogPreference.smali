.class public Lcom/letv/leui/preference/LeDialogPreference;
.super Landroid/preference/Preference;
.source "LeDialogPreference.java"


# instance fields
.field private dialog:Lcom/letv/leui/widget/LeAlertDialog;

.field private dialogIconRes:I

.field private dialogLayoutRes:I

.field private dialogMsg:Ljava/lang/CharSequence;

.field private dialogTitle:Ljava/lang/CharSequence;

.field private negativeCharSequence:Ljava/lang/CharSequence;

.field negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field negativeInnerClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveCharSequence:Ljava/lang/CharSequence;

.field positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field positiveInnerClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x11600c4

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Lcom/letv/leui/preference/LeDialogPreference$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeDialogPreference$1;-><init>(Lcom/letv/leui/preference/LeDialogPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeInnerClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/letv/leui/preference/LeDialogPreference$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeDialogPreference$2;-><init>(Lcom/letv/leui/preference/LeDialogPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveInnerClickListener:Landroid/content/DialogInterface$OnClickListener;

    sget-object v3, Lcom/android/internal/R$styleable;->LeDialogPreference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogLayoutRes:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveCharSequence:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeCharSequence:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogMsg:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogIconRes:I

    goto :goto_1

    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDialogIconRes()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogIconRes:I

    return v0
.end method

.method public getDialogLayoutRes()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogLayoutRes:I

    return v0
.end method

.method public getDialogMsg()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogMsg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeCharSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getPositiveCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveCharSequence:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeDialogPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method onNegativeClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    return-void
.end method

.method onPositiveClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    return-void
.end method

.method protected preShowDialog(Lcom/letv/leui/widget/LeAlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    return-void
.end method

.method public setDialogIconRes(I)V
    .locals 0
    .param p1, "dialogIconRes"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogIconRes:I

    return-void
.end method

.method public setDialogLayoutRes(I)V
    .locals 0
    .param p1, "dialogLayoutRes"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogLayoutRes:I

    return-void
.end method

.method public setDialogMsg(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMsg"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogMsg:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeCharSequence(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "negativeClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveCharSequence(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveCharSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "positiveClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method protected shouldInputMethed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    new-instance v1, Lcom/letv/leui/widget/LeAlertDialog;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/letv/leui/widget/LeAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogIconRes:I

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeAlertDialog;->setIcon(I)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialogMsg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/LeAlertDialog;->setMsg(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeCharSequence:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->negativeInnerClickListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/letv/leui/widget/LeAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    iget-object v3, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveCharSequence:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/letv/leui/preference/LeDialogPreference;->positiveInnerClickListener:Landroid/content/DialogInterface$OnClickListener;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/letv/leui/widget/LeAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeDialogPreference;->preShowDialog(Lcom/letv/leui/widget/LeAlertDialog;)V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeAlertDialog;->show()V

    iget-object v1, p0, Lcom/letv/leui/preference/LeDialogPreference;->dialog:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreference;->shouldInputMethed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x50

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreference;->shouldInputMethed()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .end local v0    # "window":Landroid/view/Window;
    :cond_1
    move-object v1, v2

    goto :goto_0

    .restart local v0    # "window":Landroid/view/Window;
    :cond_2
    const/16 v1, 0x11

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    goto :goto_2
.end method
