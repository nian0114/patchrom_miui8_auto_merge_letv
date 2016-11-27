.class public Lcom/letv/leui/widget/LeEditText;
.super Lcom/letv/leui/widget/LeTextView;
.source "LeEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;
    }
.end annotation


# instance fields
.field private mAfterTouchListener:Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;

.field private mAutoLink:I

.field private mTextEditable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/LeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeEditText;->mTextEditable:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeEditText;->mAutoLink:I

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lcom/letv/leui/widget/LeEditText;->mTextBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getAutoLinkMask()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEditText;->mAutoLink:I

    return-void
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    .local v3, "spanned":Landroid/text/Spanned;
    const-class v5, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    invoke-interface {v3, p1, p1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .local v4, "spans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    array-length v1, v4

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, v4, v0

    .local v2, "span":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    invoke-virtual {v2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getStartOffset()I

    move-result v5

    if-gt v5, p1, :cond_0

    invoke-virtual {v2}, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->getEndOffset()I

    move-result v5

    if-le v5, p1, :cond_0

    const/4 v5, 0x1

    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "span":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    .end local v3    # "spanned":Landroid/text/Spanned;
    .end local v4    # "spans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    :goto_1
    return v5

    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v2    # "span":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    .restart local v3    # "spanned":Landroid/text/Spanned;
    .restart local v4    # "spans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "span":Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    .end local v3    # "spanned":Landroid/text/Spanned;
    .end local v4    # "spans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public extendSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    const-string v1, ""

    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .local v0, "result":Landroid/text/Editable;
    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isTextEditable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeEditText;->mTextEditable:Z

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/letv/leui/widget/LeEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/letv/leui/widget/LeEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .local v0, "handled":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeEditText;->mAfterTouchListener:Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/LeEditText;->getOffsetForPosition(FF)I

    move-result v1

    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/letv/leui/widget/LeEditText;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeEditText;->mAfterTouchListener:Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;

    invoke-interface {v2, p1}, Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;->onAfterTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .end local v1    # "offset":I
    :cond_0
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .local v0, "checkSetText":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_3

    const/high16 v2, 0x200000

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_2

    const-string v2, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeEditText;->setSelection(I)V

    :cond_1
    const/4 v2, 0x1

    .end local v1    # "text":Ljava/lang/CharSequence;
    :goto_1
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/LeTextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    goto :goto_1
.end method

.method public selectAll()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2
    .param p1, "ellipsis"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LeEditText cannot use the ellipsize mode TextUtils.TruncateAt.MARQUEE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setOnAfterTouchListener(Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeEditText;->mAfterTouchListener:Lcom/letv/leui/widget/LeEditText$OnAfterTouchListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setSelection(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeEditText;->mTextEditable:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/letv/leui/widget/LeTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public setTextEditable(Z)V
    .locals 6
    .param p1, "editable"    # Z

    .prologue
    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeEditText;->mTextEditable:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeEditText;->mTextEditable:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeEditText;->setAutoLinkMask(I)V

    :goto_0
    invoke-super {p0}, Lcom/letv/leui/widget/LeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeEditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getSelectionStart()I

    move-result v1

    .local v1, "offset":I
    if-ltz v1, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeEditText;->setSelection(I)V

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "offset":I
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/letv/leui/widget/LeEditText;->mAutoLink:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEditText;->setAutoLinkMask(I)V

    goto :goto_0

    .restart local v1    # "offset":I
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEditText;->setSelection(I)V

    goto :goto_1
.end method
