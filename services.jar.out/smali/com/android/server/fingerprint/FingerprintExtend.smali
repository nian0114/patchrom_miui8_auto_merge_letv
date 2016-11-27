.class public abstract Lcom/android/server/fingerprint/FingerprintExtend;
.super Ljava/lang/Object;
.source "FingerprintExtend.java"


# static fields
.field static final DEFAULT_MAX_ENROLL_FINGERPRINTS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticateFido(Landroid/hardware/fingerprint/IFingerprintDaemon;JI[B[B)I
    .locals 1
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "nonce"    # [B
    .param p6, "aaid"    # [B

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public abstract disableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method

.method public abstract enableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method

.method public getMaxEnrollFingerprints()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    return v0
.end method

.method public abstract setDefaultMode(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
.end method

.method public abstract startTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
.end method

.method public abstract stopTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method

.method public syncDatebase(Landroid/hardware/fingerprint/IFingerprintDaemon;Landroid/content/Context;I)V
    .locals 0
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 28
    return-void
.end method

.method public updateFingerVersion()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
