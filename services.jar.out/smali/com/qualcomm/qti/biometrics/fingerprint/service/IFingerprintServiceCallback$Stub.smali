.class public abstract Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IFingerprintServiceCallback.java"

# interfaces
.implements Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

.field static final TRANSACTION_onEnrolled:I = 0x5

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onMatched:I = 0x1

.field static final TRANSACTION_onRemoved:I = 0x2

.field static final TRANSACTION_onStatus:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->onMatched(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->onRemoved(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->onError(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->onStatus(I[B)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :sswitch_5
    const-string v3, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintServiceCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->onEnrolled(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
