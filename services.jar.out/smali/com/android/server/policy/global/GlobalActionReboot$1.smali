.class Lcom/android/server/policy/global/GlobalActionReboot$1;
.super Ljava/lang/Object;
.source "GlobalActionReboot.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionReboot;->initScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionReboot;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionReboot;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionReboot$1;->this$0:Lcom/android/server/policy/global/GlobalActionReboot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot$1;->this$0:Lcom/android/server/policy/global/GlobalActionReboot;

    # invokes: Lcom/android/server/policy/global/GlobalActionReboot;->resetScale()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionReboot;->access$100(Lcom/android/server/policy/global/GlobalActionReboot;)V

    .line 438
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 433
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot$1;->this$0:Lcom/android/server/policy/global/GlobalActionReboot;

    iget-boolean v0, v0, Lcom/android/server/policy/global/GlobalActionReboot;->mCancel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot$1;->this$0:Lcom/android/server/policy/global/GlobalActionReboot;

    # getter for: Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionReboot;->access$000(Lcom/android/server/policy/global/GlobalActionReboot;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionReboot$1;->this$0:Lcom/android/server/policy/global/GlobalActionReboot;

    # getter for: Lcom/android/server/policy/global/GlobalActionReboot;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionReboot;->access$000(Lcom/android/server/policy/global/GlobalActionReboot;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 429
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 423
    return-void
.end method
