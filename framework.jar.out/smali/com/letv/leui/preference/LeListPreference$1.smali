.class Lcom/letv/leui/preference/LeListPreference$1;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$1;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$1;->this$0:Lcom/letv/leui/preference/LeListPreference;

    # setter for: Lcom/letv/leui/preference/LeListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/letv/leui/preference/LeListPreference;->access$002(Lcom/letv/leui/preference/LeListPreference;I)I

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$1;->this$0:Lcom/letv/leui/preference/LeListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/letv/leui/preference/LeListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
