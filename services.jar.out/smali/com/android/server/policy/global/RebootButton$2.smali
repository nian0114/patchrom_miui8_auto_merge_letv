.class Lcom/android/server/policy/global/RebootButton$2;
.super Lcom/android/server/policy/global/CircleButton$ClickableControlListener;
.source "RebootButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/RebootButton;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/RebootButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/RebootButton;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/RebootButton$2;->this$0:Lcom/android/server/policy/global/RebootButton;

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton$2;->this$0:Lcom/android/server/policy/global/RebootButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/global/RebootButton;->isCancel:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton$2;->this$0:Lcom/android/server/policy/global/RebootButton;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/global/RebootButton;->isCancel:Z

    return-void
.end method
