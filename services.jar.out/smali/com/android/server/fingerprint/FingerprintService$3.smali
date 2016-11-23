.class Lcom/android/server/fingerprint/FingerprintService$3;
.super Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$3$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$3$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method public onAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 988
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$3$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 968
    return-void
.end method

.method public onEnumerate(J[I[I)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$6;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;J[I[I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void
.end method

.method public onError(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$3$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$3$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 998
    return-void
.end method

.method public onFidoAuthenticated(JIII[B)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "uvt_length"    # I
    .param p6, "uvt"    # [B

    .prologue
    .line 1022
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAuthenticated, uvt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$7;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$3$7;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JII[B)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1029
    return-void
.end method

.method public onRemoved(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$3;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$3$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$3;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1008
    return-void
.end method
