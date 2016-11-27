.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DigitalTestFormat"
.end annotation


# instance fields
.field public final asicId:I

.field public final asicSerialNumber:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;II)V
    .locals 0
    .param p2, "asicId"    # I
    .param p3, "asicSerialNumber"    # I

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;->asicId:I

    .line 73
    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$DigitalTestFormat;->asicSerialNumber:I

    .line 74
    return-void
.end method
