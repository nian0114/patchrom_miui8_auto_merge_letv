.class public interface abstract Lcom/qualcomm/qti/biometrics/fingerprint/IFingerprintMatchListener;
.super Ljava/lang/Object;
.source "IFingerprintMatchListener.java"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract onError(I)V
.end method

.method public abstract onMatched(ILjava/lang/String;)V
.end method

.method public abstract onStatus(I[B)V
.end method
