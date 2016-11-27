.class Lcom/letv/leui/widget/LeTitleEditText$5;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

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
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # invokes: Lcom/letv/leui/widget/LeTitleEditText;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lcom/letv/leui/widget/LeTitleEditText;->access$900(Lcom/letv/leui/widget/LeTitleEditText;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mTextChangerListener:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$800(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method
