.class public interface abstract Lcom/qualcomm/qti/biometrics/fingerprintdebug/IFingerprintDebugListener;
.super Ljava/lang/Object;
.source "IFingerprintDebugListener.java"


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract onCapture(II[B)V
.end method

.method public abstract onCaptureDebugData(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract onEnrolled(II[B)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onMatched(ILjava/lang/String;[B)V
.end method

.method public abstract onRemoved(I)V
.end method

.method public abstract onRemoved(Ljava/lang/String;)V
.end method

.method public abstract onStatus(I[B)V
.end method
