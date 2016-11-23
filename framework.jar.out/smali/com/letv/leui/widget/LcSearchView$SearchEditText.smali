.class Lcom/letv/leui/widget/LcSearchView$SearchEditText;
.super Landroid/widget/EditText;
.source "LcSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LcSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchEditText"
.end annotation


# instance fields
.field private mSearchView:Lcom/letv/leui/widget/LcSearchView;

.field final synthetic this$0:Lcom/letv/leui/widget/LcSearchView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 842
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 843
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 846
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 847
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LcSearchView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 850
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->this$0:Lcom/letv/leui/widget/LcSearchView;

    .line 851
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 852
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 876
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 877
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LcSearchView;->onTextFocusChanged()V

    .line 878
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 864
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 865
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LcSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 869
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 871
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method setSearchView(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0
    .param p1, "searchView"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$SearchEditText;->mSearchView:Lcom/letv/leui/widget/LcSearchView;

    .line 856
    return-void
.end method
