.class Lcom/letv/leui/widget/LockPatternRing$1;
.super Lcom/letv/leui/widget/LockPatternRing$EmptyAnimatorListener;
.source "LockPatternRing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternRing;->downAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LockPatternRing;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LockPatternRing;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternRing$1;->this$0:Lcom/letv/leui/widget/LockPatternRing;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternRing$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/LockPatternRing;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternRing$1;->this$0:Lcom/letv/leui/widget/LockPatternRing;

    # invokes: Lcom/letv/leui/widget/LockPatternRing;->getOuterUpPaintAlphaAnim()Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternRing;->access$000(Lcom/letv/leui/widget/LockPatternRing;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
