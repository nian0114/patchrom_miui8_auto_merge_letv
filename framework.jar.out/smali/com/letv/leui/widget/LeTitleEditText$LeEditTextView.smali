.class public Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;
.super Lcom/letv/leui/widget/LeAutoFillEditText;
.source "LeTitleEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeEditTextView"
.end annotation


# instance fields
.field private mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeAutoFillEditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeTitleEditText;->onTextFocusChanged()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/LeAutoFillEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    invoke-super {p0, p1}, Lcom/letv/leui/widget/LeAutoFillEditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeTitleEditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method setEditTextView(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p1, "editView"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$LeEditTextView;->mLeTitleEditText:Lcom/letv/leui/widget/LeTitleEditText;

    return-void
.end method
