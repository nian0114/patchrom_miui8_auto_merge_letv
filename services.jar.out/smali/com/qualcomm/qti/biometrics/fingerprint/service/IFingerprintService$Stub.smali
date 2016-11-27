.class public abstract Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;
.super Landroid/os/Binder;
.source "IFingerprintService.java"

# interfaces
.implements Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

.field static final TRANSACTION_cancel:I = 0x5

.field static final TRANSACTION_disableFingerEvent:I = 0x8

.field static final TRANSACTION_enableFingerEvent:I = 0x7

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getLivenessEnabled:I = 0xa

.field static final TRANSACTION_match:I = 0x2

.field static final TRANSACTION_matchAny:I = 0x3

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_setLivenessEnabled:I = 0x9

.field static final TRANSACTION_version:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    move-result-object v1

    .local v1, "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->enroll(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    :sswitch_2
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    move-result-object v1

    .restart local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->match(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    :sswitch_3
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    move-result-object v1

    .restart local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->matchAny(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    :sswitch_4
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;

    move-result-object v1

    .restart local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->remove(ILcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintServiceCallback;
    :sswitch_5
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->cancel()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->version()Ljava/lang/String;

    move-result-object v2

    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->enableFingerEvent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->disableFingerEvent()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .local v0, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->setLivenessEnabled([BZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Z
    :sswitch_a
    const-string v4, "com.qualcomm.qti.biometrics.fingerprint.service.IFingerprintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/biometrics/fingerprint/service/IFingerprintService$Stub;->getLivenessEnabled([B)Z

    move-result v2

    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
