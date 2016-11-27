.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestImageQualityFormat"
.end annotation


# instance fields
.field public final SNR1:I

.field public final delta1:I

.field public final status:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V
    .locals 0
    .param p2, "status"    # I
    .param p3, "SNR1"    # I
    .param p4, "delta1"    # I

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;->status:I

    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;->SNR1:I

    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestImageQualityFormat;->delta1:I

    return-void
.end method
