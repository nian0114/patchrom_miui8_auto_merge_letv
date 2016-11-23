.class Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;
.super Ljava/lang/Object;
.source "QFingerprintManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-static {p2}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    move-result-object v2

    # setter for: Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    invoke-static {v1, v2}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->access$002(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 344
    const-string v0, "qfp-sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$1;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->mService:Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    invoke-static {v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;->access$002(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    .line 346
    return-void
.end method
