.class Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$1;
.super Landroid/os/Handler;
.source "LeClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$1;->this$0:Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ClipData;

    if-eqz v4, :cond_0

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipData;

    .line 99
    .local v0, "data":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 100
    .local v2, "n":I
    const/4 v3, 0x0

    .line 101
    .local v3, "result":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$1;->this$0:Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    # invokes: Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->parseText(Ljava/lang/CharSequence;)V
    invoke-static {v4, v3}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->access$000(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
