.class Lcom/letv/leui/widget/LeOptimizationDialog$1;
.super Ljava/lang/Object;
.source "LeOptimizationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeOptimizationDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeOptimizationDialog;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeOptimizationDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeOptimizationDialog$1;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog$1;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    # getter for: Lcom/letv/leui/widget/LeOptimizationDialog;->mLeLoadingView:Lcom/letv/leui/widget/LeLoadingView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeOptimizationDialog;->access$100(Lcom/letv/leui/widget/LeOptimizationDialog;)Lcom/letv/leui/widget/LeLoadingView;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeOptimizationDialog$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeOptimizationDialog$1$1;-><init>(Lcom/letv/leui/widget/LeOptimizationDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLoadingView;->appearAnim(Ljava/lang/Runnable;)Z

    return-void
.end method
