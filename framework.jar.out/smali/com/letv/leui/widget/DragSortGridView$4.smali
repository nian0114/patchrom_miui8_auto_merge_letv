.class Lcom/letv/leui/widget/DragSortGridView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/DragSortGridView;->animateBounds(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;

.field final synthetic val$mobileView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iput-object p2, p0, Lcom/letv/leui/widget/DragSortGridView$4;->val$mobileView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mHoverAnimation:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$102(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$200(Lcom/letv/leui/widget/DragSortGridView;)V

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$4;->val$mobileView:Landroid/view/View;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->reset(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$300(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mHoverAnimation:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$102(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$4;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$200(Lcom/letv/leui/widget/DragSortGridView;)V

    return-void
.end method
