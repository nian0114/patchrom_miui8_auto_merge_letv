.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestTxFormat"
.end annotation


# instance fields
.field public final median:I

.field public final q5:I

.field public final q95:I

.field public final stddev:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;IIII)V
    .locals 0
    .param p2, "median"    # I
    .param p3, "stddev"    # I
    .param p4, "q5"    # I
    .param p5, "q95"    # I

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;->median:I

    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;->stddev:I

    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;->q5:I

    iput p5, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestTxFormat;->q95:I

    return-void
.end method
