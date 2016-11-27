.class Lcom/android/server/fingerprint/FingerprintService$FingerprintHandler;
.super Landroid/os/Handler;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FingerprintHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintHandler;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1396
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1397
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1400
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1415
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    return-void

    .line 1402
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintHandler;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->handleUserSwitching(I)V

    goto :goto_0

    .line 1406
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintHandler;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleSyncDatabase()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 1411
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintHandler;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->handleUpdateVersion()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)V

    goto :goto_0

    .line 1400
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method
