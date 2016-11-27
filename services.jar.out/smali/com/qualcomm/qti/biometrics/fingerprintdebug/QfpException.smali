.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;
.super Ljava/lang/Exception;
.source "QfpException.java"


# static fields
.field private static final serialVersionUID:J = 0x506278cf2d7d5b7cL


# instance fields
.field public final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/QfpException;->mErrorCode:I

    return-void
.end method
