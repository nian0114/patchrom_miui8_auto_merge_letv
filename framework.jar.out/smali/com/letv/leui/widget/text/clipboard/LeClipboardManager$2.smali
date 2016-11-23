.class Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$2;
.super Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;
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
.method constructor <init>(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$2;->this$0:Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    invoke-direct {p0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$2;->this$0:Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    # getter for: Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mMessager:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->access$100(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
