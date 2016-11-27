.class Lcom/letv/leui/widget/LcSearchView$3;
.super Ljava/lang/Object;
.source "LcSearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LcSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LcSearchView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LcSearchView;->clearFocus()V

    .line 783
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$200(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$200(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
