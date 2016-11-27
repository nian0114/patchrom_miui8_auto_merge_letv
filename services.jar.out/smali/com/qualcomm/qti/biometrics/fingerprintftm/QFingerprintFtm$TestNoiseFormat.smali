.class public Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;
.super Ljava/lang/Object;
.source "QFingerprintFtm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestNoiseFormat"
.end annotation


# instance fields
.field public final status:I

.field public final stddevTbOff:I

.field public final stddevTbOn:I

.field final synthetic this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;III)V
    .locals 0
    .param p2, "status"    # I
    .param p3, "stddevTbOn"    # I
    .param p4, "stddevTbOff"    # I

    .prologue
    .line 182
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;->this$0:Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;->status:I

    .line 184
    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;->stddevTbOn:I

    .line 185
    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintftm/QFingerprintFtm$TestNoiseFormat;->stddevTbOff:I

    .line 186
    return-void
.end method
