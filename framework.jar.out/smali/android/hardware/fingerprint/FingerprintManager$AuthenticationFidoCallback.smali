.class public abstract Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationFidoCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1077
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFidoSucceeded(Landroid/hardware/fingerprint/FingerprintFido;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintFido;

    .prologue
    .line 1079
    return-void
.end method
