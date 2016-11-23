.class Lcom/android/server/policy/global/RebootButton$1;
.super Lcom/android/server/policy/global/CircleButton$ClickableControlListener;
.source "RebootButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/RebootButton;->show(Z)V
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
    .line 237
    iput-object p1, p0, Lcom/android/server/policy/global/RebootButton$1;->this$0:Lcom/android/server/policy/global/RebootButton;

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/policy/global/RebootButton$1;->this$0:Lcom/android/server/policy/global/RebootButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/RebootButton;->setClickable(Z)V

    .line 242
    return-void
.end method
