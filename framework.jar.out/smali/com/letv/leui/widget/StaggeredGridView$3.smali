.class Lcom/letv/leui/widget/StaggeredGridView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/StaggeredGridView;->populate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->access$702(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$3;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/StaggeredGridView;->mUpdateing:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->access$702(Lcom/letv/leui/widget/StaggeredGridView;Z)Z

    return-void
.end method
