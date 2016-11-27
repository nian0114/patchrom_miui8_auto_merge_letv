.class Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Ljava/lang/Object;
.source "AlipayFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    # getter for: Lcom/alipay/android/fingerprint/AlipayFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->access$000(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->cancel()I

    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    const/16 v1, 0x71

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    :cond_0
    return-void
.end method
