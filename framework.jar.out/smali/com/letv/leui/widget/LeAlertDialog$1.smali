.class Lcom/letv/leui/widget/LeAlertDialog$1;
.super Ljava/lang/Object;
.source "LeAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeAlertDialog;->preShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeAlertDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeAlertDialog;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog$1;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog$1;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    # getter for: Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertDialog;->access$000(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog$1;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    # getter for: Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeAlertDialog;->access$000(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog$1;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog$1;->this$0:Lcom/letv/leui/widget/LeAlertDialog;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeAlertDialog;->dismiss()V

    goto :goto_0
.end method
