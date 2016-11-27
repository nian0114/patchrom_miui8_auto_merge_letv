.class public interface abstract Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug$IDebugCallback;
.super Ljava/lang/Object;
.source "QFingerprintDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintdebug/QFingerprintDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDebugCallback"
.end annotation


# virtual methods
.method public abstract onCaptureDebugData([Ljava/lang/String;[[B)V
.end method

.method public abstract onCaptured(II[B)V
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
