.class Lcom/letv/leui/widget/BallsLoadingProgressBar$5;
.super Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;
.source "BallsLoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/BallsLoadingProgressBar;->createEndAnim()V
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
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # setter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFinish:Z
    invoke-static {v2, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$502(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # setter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsAnimLoading:Z
    invoke-static {v2, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$102(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    const/4 v3, 0x1

    # setter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mIsFirstRun:Z
    invoke-static {v2, v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$702(Lcom/letv/leui/widget/BallsLoadingProgressBar;Z)Z

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$000(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .local v0, "balls":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F
    invoke-static {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$800(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setWidth(F)V

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F
    invoke-static {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$800(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setHeight(F)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F
    invoke-static {v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$800(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setX(F)V

    invoke-virtual {v0}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBallNormalRadius:F
    invoke-static {v3}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$800(Lcom/letv/leui/widget/BallsLoadingProgressBar;)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setY(F)V

    goto :goto_0

    .end local v0    # "balls":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;
    invoke-static {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$200(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$5;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mProcessBarListener:Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;
    invoke-static {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$200(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/letv/leui/widget/BallsLoadingProgressBar$AnimProcessBarListener;->onLoadFinished()V

    :cond_1
    return-void
.end method
