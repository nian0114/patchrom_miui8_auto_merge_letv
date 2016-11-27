.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PsfCalibrationFormat"
.end annotation


# instance fields
.field public final initialDelay:I

.field public final phase:I

.field public final status:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V
    .locals 0
    .param p2, "status"    # I
    .param p3, "phase"    # I
    .param p4, "initialDelay"    # I

    .prologue
    .line 194
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;->status:I

    .line 196
    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;->phase:I

    .line 197
    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$PsfCalibrationFormat;->initialDelay:I

    .line 198
    return-void
.end method
