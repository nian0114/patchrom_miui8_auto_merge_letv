.class Lcom/android/server/policy/global/GlobalActionHostView$1;
.super Ljava/lang/Object;
.source "GlobalActionHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionHostView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionHostView;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->onActionStart()V

    .line 432
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    # getter for: Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->access$000(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/RebootButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    new-instance v1, Lcom/android/server/policy/global/GlobalActionHostView$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionHostView$1$1;-><init>(Lcom/android/server/policy/global/GlobalActionHostView$1;)V

    # invokes: Lcom/android/server/policy/global/GlobalActionHostView;->reboot(Landroid/animation/Animator$AnimatorListener;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->access$100(Lcom/android/server/policy/global/GlobalActionHostView;Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    # getter for: Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->access$200(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/CancelButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView$1;->this$0:Lcom/android/server/policy/global/GlobalActionHostView;

    # invokes: Lcom/android/server/policy/global/GlobalActionHostView;->cancel()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->access$300(Lcom/android/server/policy/global/GlobalActionHostView;)V

    .line 459
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/policy/global/GlobalActionHostView$1$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionHostView$1$2;-><init>(Lcom/android/server/policy/global/GlobalActionHostView$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
