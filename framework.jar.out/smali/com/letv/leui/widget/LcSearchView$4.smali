.class Lcom/letv/leui/widget/LcSearchView$4;
.super Ljava/lang/Object;
.source "LcSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 800
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$500(Lcom/letv/leui/widget/LcSearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v1

    # invokes: Lcom/letv/leui/widget/LcSearchView;->setPadding(Z)V
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->access$600(Lcom/letv/leui/widget/LcSearchView;Z)V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/letv/leui/widget/LcSearchView;->access$700(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    .line 826
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 807
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 811
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # invokes: Lcom/letv/leui/widget/LcSearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lcom/letv/leui/widget/LcSearchView;->access$400(Lcom/letv/leui/widget/LcSearchView;Ljava/lang/CharSequence;)V

    .line 813
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$4;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$300(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 816
    :cond_0
    return-void
.end method
