.class public final enum Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;
.super Ljava/lang/Enum;
.source "QFingerprintDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

.field public static final enum FingerDetect:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

.field public static final enum LivePreview:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 839
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    const-string v1, "FingerDetect"

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->FingerDetect:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    .line 844
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    const-string v1, "LivePreview"

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->LivePreview:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    .line 835
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->FingerDetect:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->LivePreview:Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->$VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 849
    iput p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->mValue:I

    .line 850
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 835
    const-class v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;
    .locals 1

    .prologue
    .line 835
    sget-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->$VALUES:[Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$CaptureMode;

    return-object v0
.end method
