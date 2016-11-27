.class Lcom/letv/leui/widget/LeTitleEditText$2;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeTitleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$100(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$100(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
