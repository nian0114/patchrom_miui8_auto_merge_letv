.class Lcom/android/server/policy/global/GlobalActionBottomBar$1;
.super Ljava/lang/Object;
.source "GlobalActionBottomBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionBottomBar;->initScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionBottomBar;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionBottomBar$1;->this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar$1;->this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;

    # invokes: Lcom/android/server/policy/global/GlobalActionBottomBar;->resetScale()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->access$100(Lcom/android/server/policy/global/GlobalActionBottomBar;)V

    .line 388
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar$1;->this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;

    iget-boolean v0, v0, Lcom/android/server/policy/global/GlobalActionBottomBar;->mCancel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar$1;->this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;

    # getter for: Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->access$000(Lcom/android/server/policy/global/GlobalActionBottomBar;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionBottomBar$1;->this$0:Lcom/android/server/policy/global/GlobalActionBottomBar;

    # getter for: Lcom/android/server/policy/global/GlobalActionBottomBar;->mScaleAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionBottomBar;->access$000(Lcom/android/server/policy/global/GlobalActionBottomBar;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 379
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 373
    return-void
.end method
