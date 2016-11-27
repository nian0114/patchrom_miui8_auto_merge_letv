.class Lcom/letv/leui/widget/LePopupWindowController$1;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePopupWindowController;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositive:Lcom/letv/leui/widget/LeButton;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$000(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$100(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$100(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 143
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$700(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/letv/leui/widget/LePopupWindowController;->access$600(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegative:Lcom/letv/leui/widget/LeButton;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$200(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$300(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$300(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutral:Lcom/letv/leui/widget/LeButton;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$400(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$500(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    # getter for: Lcom/letv/leui/widget/LePopupWindowController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->access$500(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
