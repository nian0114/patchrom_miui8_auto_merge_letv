.class Lcom/letv/leui/widget/LeOptimizationDialog$2$1;
.super Ljava/lang/Object;
.source "LeOptimizationDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeOptimizationDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeOptimizationDialog$2;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeOptimizationDialog$2;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeOptimizationDialog$2$1;->this$1:Lcom/letv/leui/widget/LeOptimizationDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeOptimizationDialog$2$1;->this$1:Lcom/letv/leui/widget/LeOptimizationDialog$2;

    iget-object v0, v0, Lcom/letv/leui/widget/LeOptimizationDialog$2;->this$0:Lcom/letv/leui/widget/LeOptimizationDialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeOptimizationDialog;->access$201(Lcom/letv/leui/widget/LeOptimizationDialog;)V

    return-void
.end method
