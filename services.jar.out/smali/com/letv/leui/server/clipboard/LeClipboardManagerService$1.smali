.class Lcom/letv/leui/server/clipboard/LeClipboardManagerService$1;
.super Landroid/os/Handler;
.source "LeClipboardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/server/clipboard/LeClipboardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;


# direct methods
.method constructor <init>(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$1;->this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$1;->this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;

    invoke-virtual {v0, p1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchServerMessage(Landroid/os/Message;)V

    .line 248
    return-void
.end method
