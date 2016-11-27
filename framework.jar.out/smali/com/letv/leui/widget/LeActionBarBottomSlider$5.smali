.class Lcom/letv/leui/widget/LeActionBarBottomSlider$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;->doEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$302(Lcom/letv/leui/widget/LeActionBarBottomSlider;Z)Z

    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    .line 203
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setVisibility(I)V

    .line 196
    return-void
.end method
