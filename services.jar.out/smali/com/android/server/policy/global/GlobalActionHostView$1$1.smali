.class Lcom/android/server/policy/global/GlobalActionHostView$1$1;
.super Ljava/lang/Object;
.source "GlobalActionHostView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionHostView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHostView$1;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$1;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$1;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->reboot()V

    .line 452
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$1;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->removeAllViews()V

    .line 453
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$1;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->reboot()V

    .line 445
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1$1;->this$1:Lcom/android/server/policy/global/GlobalActionHostView$1;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->removeAllViews()V

    .line 446
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 439
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 435
    return-void
.end method
