.class Lcom/letv/leui/widget/LeLoadingDialog$1;
.super Ljava/lang/Object;
.source "LeLoadingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeLoadingDialog;->initDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeLoadingDialog;

.field final synthetic val$dismissCallBack:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeLoadingDialog;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/letv/leui/widget/LeLoadingDialog$1;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeLoadingDialog$1;->val$dismissCallBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LeLoadingDialog$1;->this$0:Lcom/letv/leui/widget/LeLoadingDialog;

    # getter for: Lcom/letv/leui/widget/LeLoadingDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeLoadingDialog;->access$100(Lcom/letv/leui/widget/LeLoadingDialog;)Lcom/letv/leui/widget/LeLoadingView;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeLoadingDialog$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeLoadingDialog$1$1;-><init>(Lcom/letv/leui/widget/LeLoadingDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->appearAnim(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
