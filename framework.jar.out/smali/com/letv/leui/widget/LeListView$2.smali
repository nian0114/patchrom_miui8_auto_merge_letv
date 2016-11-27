.class Lcom/letv/leui/widget/LeListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListView;->performDismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListView;

.field final synthetic val$dismissPosition:I

.field final synthetic val$dismissView:Landroid/view/View;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView;Landroid/view/View;II)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iput p3, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    iput p4, p0, Lcom/letv/leui/widget/LeListView$2;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->onDismissAnimationEnd(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/LeListView;->mIsDismissAnimating:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeListView;->access$102(Lcom/letv/leui/widget/LeListView;Z)Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # --operator for: Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$206(Lcom/letv/leui/widget/LeListView;)I

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mDismissAnimationRefCount:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$200(Lcom/letv/leui/widget/LeListView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    iget v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$originalHeight:I

    # invokes: Lcom/letv/leui/widget/LeListView;->removePendingDismisses(I)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LeListView;->access$300(Lcom/letv/leui/widget/LeListView;I)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$2;->this$0:Lcom/letv/leui/widget/LeListView;

    # getter for: Lcom/letv/leui/widget/LeListView;->mSwipeHelper:Lcom/letv/leui/widget/SwipeListViewHelper;
    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->access$000(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LeListView$2;->val$dismissPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/SwipeListViewHelper;->onDismissAnimationStart(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
