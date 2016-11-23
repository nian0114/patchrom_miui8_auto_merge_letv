.class Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;
.super Ljava/lang/Object;
.source "QFingerprintDebug.java"

# interfaces
.implements Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JniCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;


# direct methods
.method private constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
    .param p2, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$1;

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;-><init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;)V

    return-void
.end method


# virtual methods
.method public onCaptureDebugData([Ljava/lang/String;[[B)V
    .locals 2
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "debugData"    # [[B

    .prologue
    .line 990
    const-string v0, "qfp-sdk"

    const-string v1, "received post-capture debug data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListenersCaptureDebugData([Ljava/lang/String;[[B)V

    .line 992
    return-void
.end method

.method public onCaptured(II[B)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # [B

    .prologue
    .line 945
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 946
    .local v0, "len":I
    :goto_0
    const-string v1, "qfp-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received capture callback data size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListeners(II[B)V

    .line 948
    return-void

    .line 945
    .end local v0    # "len":I
    :cond_0
    array-length v0, p3

    goto :goto_0
.end method

.method public onEnrolled(II[B)V
    .locals 4
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I
    .param p3, "data"    # [B

    .prologue
    .line 964
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 965
    .local v0, "len":I
    :goto_0
    const-string v1, "qfp-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received enroll callback data size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListenersEnroll(II[B)V

    .line 967
    return-void

    .line 964
    .end local v0    # "len":I
    :cond_0
    array-length v0, p3

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 952
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListeners(I)V

    .line 954
    return-void
.end method

.method public onMatched(ILjava/lang/String;[B)V
    .locals 4
    .param p1, "fingerprintId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 971
    if-nez p3, :cond_0

    const/4 v0, 0x0

    .line 972
    .local v0, "len":I
    :goto_0
    const-string v1, "qfp-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received enroll callback data size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v1, p1, p2, p3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListeners(ILjava/lang/String;[B)V

    .line 974
    return-void

    .line 971
    .end local v0    # "len":I
    :cond_0
    array-length v0, p3

    goto :goto_0
.end method

.method public onRemoved(I)V
    .locals 3
    .param p1, "fingerprintId"    # I

    .prologue
    .line 978
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received remove for fingerprint id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListenersRemove(I)V

    .line 980
    return-void
.end method

.method public onRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 984
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received remove for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListenersRemove(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public onStatus(I[B)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "extension"    # [B

    .prologue
    .line 958
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$JniCallback;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;->notifyListeners(I[B)V

    .line 960
    return-void
.end method
