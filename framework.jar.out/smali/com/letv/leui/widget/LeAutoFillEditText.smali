.class public Lcom/letv/leui/widget/LeAutoFillEditText;
.super Lcom/letv/leui/widget/LeEditText;
.source "LeAutoFillEditText.java"


# instance fields
.field private mCurrSuggestion:Ljava/lang/CharSequence;

.field private mCurrText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSuggestion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextWithoutSuggestionSubfix()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAutoFillEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeAutoFillEditText;->setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setTextWithSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextWatcher;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;
    .param p3, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object p2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrSuggestion:Ljava/lang/CharSequence;

    :cond_4
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "curTextLength":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "textLength":I
    iget-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeAutoFillEditText;->mCurrText:Ljava/lang/String;

    :cond_5
    if-le v1, v0, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_6

    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/letv/leui/widget/LeAutoFillEditText;->setSelection(II)V

    :cond_6
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
