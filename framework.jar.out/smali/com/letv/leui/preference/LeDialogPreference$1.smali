.class Lcom/letv/leui/preference/LeDialogPreference$1;
.super Ljava/lang/Object;
.source "LeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeDialogPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeDialogPreference;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/letv/leui/preference/LeDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeDialogPreference;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/preference/LeDialogPreference;->onNegativeClick(Landroid/content/DialogInterface;I)V

    .line 37
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeDialogPreference;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreference$1;->this$0:Lcom/letv/leui/preference/LeDialogPreference;

    iget-object v0, v0, Lcom/letv/leui/preference/LeDialogPreference;->negativeClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 41
    :cond_0
    return-void
.end method
