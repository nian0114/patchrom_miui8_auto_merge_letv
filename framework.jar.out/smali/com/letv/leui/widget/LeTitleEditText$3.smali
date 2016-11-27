.class Lcom/letv/leui/widget/LeTitleEditText$3;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mClearButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$200(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # invokes: Lcom/letv/leui/widget/LeTitleEditText;->onClearText()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$300(Lcom/letv/leui/widget/LeTitleEditText;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->mEditImageRight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$400(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # getter for: Lcom/letv/leui/widget/LeTitleEditText;->showPwdVisibleSwitch:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$500(Lcom/letv/leui/widget/LeTitleEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$3;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    # invokes: Lcom/letv/leui/widget/LeTitleEditText;->onPwdVisibleSwitch()V
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->access$600(Lcom/letv/leui/widget/LeTitleEditText;)V

    goto :goto_0
.end method
