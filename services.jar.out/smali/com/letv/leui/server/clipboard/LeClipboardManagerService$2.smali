.class Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;
.super Ljava/lang/Object;
.source "LeClipboardManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 251
    iput-object p1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;->this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;->this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;

    invoke-static {p2}, Lcom/letv/leui/widget/text/clipboard/ILeClipboard$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    move-result-object v1

    # setter for: Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;
    invoke-static {v0, v1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->access$002(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;Lcom/letv/leui/widget/text/clipboard/ILeClipboard;)Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    .line 256
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;->this$0:Lcom/letv/leui/server/clipboard/LeClipboardManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;
    invoke-static {v0, v1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->access$002(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;Lcom/letv/leui/widget/text/clipboard/ILeClipboard;)Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    .line 263
    return-void
.end method
