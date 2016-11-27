.class Lcom/alipay/android/fingerprint/AlipayFingerprint$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "AlipayFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    const-string v1, "AlipayFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthenticationAcquired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # invokes: Lcom/alipay/android/fingerprint/AlipayFingerprint;->getAcquiredString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$100(Lcom/alipay/android/fingerprint/AlipayFingerprint;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msgInfo":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v2, 0x67

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v4, v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x3fb

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUTTING:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x3fc

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_WAITING_FOR_INPUT:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0
.end method

.method public onAuthenticationFailed(J)V
    .locals 5
    .param p1, "deviceId"    # J

    .prologue
    const-string v0, "AlipayFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationFailed deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x67

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    :cond_1
    return-void
.end method

.method public onAuthenticationFidoSucceeded(JLandroid/hardware/fingerprint/FingerprintFido;)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/FingerprintFido;

    .prologue
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    const/4 v0, 0x0

    .local v0, "authenticationSucceed":Z
    const-string v2, "AlipayFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthenticationSucceeded deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$200(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint;->STATUS_INPUT_COMPLETED:I

    iget-object v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v4, v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    if-nez p3, :cond_4

    const-string v2, "AlipayFingerprint"

    const-string v3, "onAuthenticationSucceeded fp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v3, 0x64

    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v5, v5, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v3, 0x67

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v5, v5, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_2
.end method

.method public onEnrollResult(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    return-void
.end method

.method public onError(JI)V
    .locals 6
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mAuthenticateRequestRandom:J
    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$300(Lcom/alipay/android/fingerprint/AlipayFingerprint;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mCurAuthenticateRequestRandomForCancel:J
    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$400(Lcom/alipay/android/fingerprint/AlipayFingerprint;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Z

    move-result v0

    if-eq v0, v5, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v4, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    :cond_2
    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z
    invoke-static {}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$500()Z

    move-result v0

    if-ne v0, v5, :cond_0

    # setter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mIsWaitForCancel:Z
    invoke-static {v4}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$502(Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x74

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v4, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v4, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onRemoved(JII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    return-void
.end method
