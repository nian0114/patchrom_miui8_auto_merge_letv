.class Lcom/letv/leui/widget/DragSortGridView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragSortGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/DragSortGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 0

    .prologue
    .line 942
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mReorderAnimation:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$1302(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    .line 952
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$200(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 953
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mReorderAnimation:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$1302(Lcom/letv/leui/widget/DragSortGridView;Z)Z

    .line 946
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$5;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->updateEnableState()V
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$200(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 947
    return-void
.end method
