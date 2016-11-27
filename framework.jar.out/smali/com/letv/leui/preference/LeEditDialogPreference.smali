.class public Lcom/letv/leui/preference/LeEditDialogPreference;
.super Lcom/letv/leui/preference/LeDialogPreference;
.source "LeEditDialogPreference.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeEditDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/preference/LeDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/preference/LeDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/preference/LeEditDialogPreference;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditDialogPreference;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/preference/LeEditDialogPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditDialogPreference;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditDialogPreference;->shouldPersist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/preference/LeEditDialogPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditDialogPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeEditDialogPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/preference/LeEditDialogPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/preference/LeEditDialogPreference;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditDialogPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->text:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditDialogPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Lcom/letv/leui/preference/LeDialogPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/letv/leui/preference/LeDialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void
.end method

.method protected preShowDialog(Lcom/letv/leui/widget/LeAlertDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/letv/leui/widget/LeAlertDialog;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/letv/leui/widget/LeAlertDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditDialogPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditDialogPreference;->getPositiveCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/preference/LeEditDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LeEditDialogPreference$1;-><init>(Lcom/letv/leui/preference/LeEditDialogPreference;)V

    invoke-virtual {p1, v0, v1}, Lcom/letv/leui/widget/LeAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditDialogPreference;->text:Ljava/lang/CharSequence;

    return-void
.end method

.method protected shouldInputMethed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
