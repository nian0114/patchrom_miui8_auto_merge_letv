.class public abstract Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;
.super Landroid/os/Binder;
.source "IPhoneControlService.java"

# interfaces
.implements Lcom/letv/leui/os/phonecontrol/IPhoneControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/phonecontrol/IPhoneControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.os.phonecontrol.IPhoneControlService"

.field static final TRANSACTION_retrievePhoneLockData:I = 0x2

.field static final TRANSACTION_setPhoneControlPower:I = 0x4

.field static final TRANSACTION_stopAlarm:I = 0x3

.field static final TRANSACTION_unLockPhone:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/phonecontrol/IPhoneControlService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;->unLockPhone(Ljava/lang/String;)Lcom/letv/leui/os/phonecontrol/PhoneControlData;

    move-result-object v1

    .local v1, "_result":Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    :sswitch_2
    const-string v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;->retrievePhoneLockData()Lcom/letv/leui/os/phonecontrol/PhoneLockData;

    move-result-object v1

    .local v1, "_result":Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/letv/leui/os/phonecontrol/PhoneLockData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_result":Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    :sswitch_3
    const-string v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;->stopAlarm()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;->setPhoneControlPower(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
