.class Lcom/letv/leui/widget/LeSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/letv/leui/widget/LeSpinner;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeSpinner;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeSpinner;Lcom/letv/leui/widget/LeSpinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/LeSpinner;
    .param p2, "x1"    # Lcom/letv/leui/widget/LeSpinner$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSpinner$DialogPopup;-><init>(Lcom/letv/leui/widget/LeSpinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/LeSpinner;->setSelection(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/letv/leui/widget/LeSpinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeSpinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
