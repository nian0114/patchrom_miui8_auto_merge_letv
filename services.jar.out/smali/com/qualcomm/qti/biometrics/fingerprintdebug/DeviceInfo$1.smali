.class final Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;-><init>(Landroid/os/Parcel;Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;->newArray(I)[Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
