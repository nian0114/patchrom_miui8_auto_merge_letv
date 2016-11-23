.class public interface abstract Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManager;
.super Ljava/lang/Object;
.source "IFingerprintManager.java"


# virtual methods
.method public abstract cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract disableFingerEvent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract enableFingerEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract enroll(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract getLivenessEnabled([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract match(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract matchAny(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract remove(ILcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method

.method public abstract setLivenessEnabled([BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
        }
    .end annotation
.end method
