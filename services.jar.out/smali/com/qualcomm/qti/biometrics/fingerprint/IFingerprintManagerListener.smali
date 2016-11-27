.class public interface abstract Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintManagerListener;
.super Ljava/lang/Object;
.source "IFingerprintManagerListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract onEnrolled(II)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onRemoved(I)V
.end method

.method public abstract onStatus(I[B)V
.end method
