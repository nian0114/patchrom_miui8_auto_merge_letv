.class Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    iget v2, v2, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/letv/leui/widget/StaggeredGridView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    # invokes: Lcom/letv/leui/widget/StaggeredGridView;->clearChoices()V
    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView;->access$1100(Lcom/letv/leui/widget/StaggeredGridView;)V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->invalidateViews()V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/StaggeredGridView;->setLongClickable(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeWrapper;->mWrapped:Lcom/letv/leui/widget/StaggeredGridView$MultiChoiceModeListener;

    return-void
.end method
