.class Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;
.super Landroid/widget/EditText;
.source "LeActivationEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeActivationEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleEditText"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActivationEditText;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "tagId":I
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$000(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x0

    # invokes: Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V
    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/LeActivationEditText;->access$400(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v1, 0x43

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$000(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, -0x1

    # invokes: Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V
    invoke-static {v1, v2, v3}, Lcom/letv/leui/widget/LeActivationEditText;->access$400(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "tagId":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$200(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$200(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$000(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    if-nez v0, :cond_3

    if-ge p3, p4, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$100(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    if-ge p3, p4, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$200(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$000(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$300(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    const/4 v1, 0x1

    # invokes: Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V
    invoke-static {v0, p1, v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$400(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$500(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$600(Lcom/letv/leui/widget/LeActivationEditText;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$500(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lcom/letv/leui/widget/LeActivationEditText;->access$200(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;->onTextChange(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$000(Lcom/letv/leui/widget/LeActivationEditText;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->this$0:Lcom/letv/leui/widget/LeActivationEditText;

    # getter for: Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeActivationEditText;->access$100(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setSelection(I)V

    goto :goto_1
.end method
