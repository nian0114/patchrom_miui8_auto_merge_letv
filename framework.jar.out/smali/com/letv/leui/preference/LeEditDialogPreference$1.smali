.class Lcom/letv/leui/preference/LeEditDialogPreference$1;
.super Ljava/lang/Object;
.source "LeEditDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeEditDialogPreference;->preShowDialog(Lcom/letv/leui/widget/LeAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeEditDialogPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeEditDialogPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    # getter for: Lcom/letv/leui/preference/LeEditDialogPreference;->editText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->access$000(Lcom/letv/leui/preference/LeEditDialogPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    # invokes: Lcom/letv/leui/preference/LeEditDialogPreference;->shouldPersist()Z
    invoke-static {v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->access$100(Lcom/letv/leui/preference/LeEditDialogPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/letv/leui/preference/LeEditDialogPreference;->persistString(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditDialogPreference;->access$200(Lcom/letv/leui/preference/LeEditDialogPreference;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    # invokes: Lcom/letv/leui/preference/LeEditDialogPreference;->notifyChanged()V
    invoke-static {v0}, Lcom/letv/leui/preference/LeEditDialogPreference;->access$300(Lcom/letv/leui/preference/LeEditDialogPreference;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeEditDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeEditDialogPreference;->positiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_1
    return-void
.end method
