.class Lcom/letv/leui/widget/LeLoadingDialog$1$1;
.super Ljava/lang/Object;
.source "LeLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingDialog$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingDialog$1;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeLoadingDialog$1;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingDialog;->access$001(Lcom/letv/leui/widget/LeLoadingDialog;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeLoadingDialog$1;->val$dismissCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1$1;->this$1:Lcom/letv/leui/widget/LeLoadingDialog$1;

    iget-object v0, v0, Lcom/letv/leui/widget/LeLoadingDialog$1;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
