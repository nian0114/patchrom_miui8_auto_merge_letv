.class Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;
.super Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;
.source "QFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListener"
.end annotation


# instance fields
.field private mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

.field private mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    if-nez p2, :cond_0

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;

    const-string v1, "caller must register listener"

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    if-nez p2, :cond_0

    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;

    const-string v1, "caller must register listener"

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;-><init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onEnrolled(II)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    invoke-interface {v1, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;->onEnrolled(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;->onError(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMatched(ILjava/lang/String;)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .param p2, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    invoke-interface {v1, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;->onMatched(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRemoved(I)V
    .locals 3
    .param p1, "fingerprintId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;->onRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStatus(I[B)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "extension"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMgrListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;

    invoke-interface {v1, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;->onStatus(I[B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$ServiceListener;->mMatchListener:Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;

    invoke-interface {v1, p1, p2}, Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;->onStatus(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "qfp-sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
