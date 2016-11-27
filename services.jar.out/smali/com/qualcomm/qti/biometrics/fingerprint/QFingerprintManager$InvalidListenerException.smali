.class public Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;
.super Ljava/lang/Exception;
.source "QFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidListenerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6b1e1d641e49abbcL


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 473
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$InvalidListenerException;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    .line 476
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 477
    return-void
.end method
