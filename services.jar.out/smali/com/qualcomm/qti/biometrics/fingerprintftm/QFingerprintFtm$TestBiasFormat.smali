.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestBiasFormat"
.end annotation


# instance fields
.field public final bias:I

.field public final median:I

.field public final q5:I

.field public final q95:I

.field public final stddev:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;IIIII)V
    .locals 0
    .param p2, "bias"    # I
    .param p3, "median"    # I
    .param p4, "stddev"    # I
    .param p5, "q5"    # I
    .param p6, "q95"    # I

    .prologue
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->bias:I

    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->median:I

    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->stddev:I

    iput p5, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->q5:I

    iput p6, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestBiasFormat;->q95:I

    return-void
.end method
