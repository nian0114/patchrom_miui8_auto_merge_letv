.class Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$7;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$400(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$400(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$400(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$302(Lcom/letv/leui/widget/LeActionBarBottomSlider;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    :cond_0
    return-void
.end method
