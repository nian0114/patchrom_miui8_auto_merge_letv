.class Lcom/letv/leui/widget/BallsLoadingProgressBar$4;
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

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    iput p2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;->val$finalI:I

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/BallsLoadingProgressBar$EmptyAnimatorListener;-><init>(Lcom/letv/leui/widget/BallsLoadingProgressBar;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;->this$0:Lcom/letv/leui/widget/BallsLoadingProgressBar;

    # getter for: Lcom/letv/leui/widget/BallsLoadingProgressBar;->mBalls:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/widget/BallsLoadingProgressBar;->access$000(Lcom/letv/leui/widget/BallsLoadingProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/BallsLoadingProgressBar$4;->val$finalI:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;

    .line 169
    .local v0, "holder":Lcom/letv/leui/widget/BallsLoadingShapeHolder;
    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->setAlpha(F)V

    .line 172
    :cond_0
    return-void
.end method
