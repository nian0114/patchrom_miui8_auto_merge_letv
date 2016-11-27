.class Lcom/letv/leui/widget/BallsLoadingProgressBar$3;
.super Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;
.source "BallsLoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BallsLoadingProgressBar;->createAnimStep2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z
    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$500(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # invokes: Lcom/letv/leui/widget/BallsLoadingProgressBar;->createEndAnim()V
    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$600(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$400(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # invokes: Lcom/letv/leui/widget/BallsLoadingProgressBar;->createAnimStep2()V
    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$300(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$3;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->bounceAnim:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$400(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
