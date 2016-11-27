.class Lcom/letv/leui/widget/LePullToSearchListView$2;
.super Ljava/lang/Object;
.source "LePullToSearchListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LePullToSearchListView;->doAnimation(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePullToSearchListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePullToSearchListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LePullToSearchListView$2;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LePullToSearchListView$2;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    iget-object v0, p0, Lcom/letv/leui/widget/LePullToSearchListView$2;->this$0:Lcom/letv/leui/widget/LePullToSearchListView;

    # getter for: Lcom/letv/leui/widget/LePullToSearchListView;->animator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/letv/leui/widget/LePullToSearchListView;->access$100(Lcom/letv/leui/widget/LePullToSearchListView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/letv/leui/widget/LePullToSearchListView;->resetTopPadding(I)V
    invoke-static {v1, v0}, Lcom/letv/leui/widget/LePullToSearchListView;->access$200(Lcom/letv/leui/widget/LePullToSearchListView;I)V

    return-void
.end method
