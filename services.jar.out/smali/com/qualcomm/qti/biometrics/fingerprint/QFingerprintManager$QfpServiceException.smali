.class public Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;
.super Ljava/lang/Exception;
.source "QFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QfpServiceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4966eafc453d4d50L


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager$QfpServiceException;->this$0:Lcom/qualcomm/qti/biometrics/fingerprint/QFingerprintManager;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
