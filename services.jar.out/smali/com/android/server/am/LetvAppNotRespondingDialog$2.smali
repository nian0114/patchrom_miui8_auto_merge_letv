.class Lcom/android/server/am/LetvAppNotRespondingDialog$2;
.super Ljava/lang/Object;
.source "LetvAppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LetvAppNotRespondingDialog;->buildErrorSheet(I[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "LetvAppNotRespondingDialog"

    const-string v1, "WAIT button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$000(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/LetvAppNotRespondingDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/LetvAppNotRespondingDialog;->access$000(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
