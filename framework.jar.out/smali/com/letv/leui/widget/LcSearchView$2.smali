.class Lcom/letv/leui/widget/LcSearchView$2;
.super Ljava/lang/Object;
.source "LcSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    .line 229
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$2;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$2;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LcSearchView;->onTextFocusChanged()V

    .line 232
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$2;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$100(Lcom/letv/leui/widget/LcSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$2;->this$0:Lcom/letv/leui/widget/LcSearchView;

    # getter for: Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->access$100(Lcom/letv/leui/widget/LcSearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$2;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 236
    :cond_0
    return-void
.end method
