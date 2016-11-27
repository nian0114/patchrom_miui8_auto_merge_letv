.class public abstract Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;
.super Landroid/os/Binder;
.source "ILetvPrivacyDataService.java"

# interfaces
.implements Lcom/letv/leui/privacydata/ILetvPrivacyDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/privacydata/ILetvPrivacyDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.privacydata.ILetvPrivacyDataService"

.field static final TRANSACTION_clearAuthorization:I = 0x4

.field static final TRANSACTION_getPrivacyDir:I = 0x7

.field static final TRANSACTION_isAuthorizationSet:I = 0x1

.field static final TRANSACTION_registeLetvPrivacyDataCallback:I = 0x9

.field static final TRANSACTION_releastAuthorization:I = 0x3

.field static final TRANSACTION_requestAuthorization:I = 0x5

.field static final TRANSACTION_setAuthorizationResult:I = 0x8

.field static final TRANSACTION_setPrivacyDir:I = 0x6

.field static final TRANSACTION_shouldAuthorization:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/privacydata/ILetvPrivacyDataService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/privacydata/ILetvPrivacyDataService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/letv/leui/privacydata/ILetvPrivacyDataService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :sswitch_0
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v6, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->isAuthorizationSet()Z

    move-result v3

    .line 54
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v6, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->shouldAuthorization()Z

    move-result v3

    .line 62
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->releastAuthorization()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->clearAuthorization()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;

    move-result-object v0

    .line 85
    .local v0, "_arg0":Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;
    invoke-virtual {p0, v0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->requestAuthorization(Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0    # "_arg0":Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;
    :sswitch_6
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->setPrivacyDir(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->getPrivacyDir()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->setAuthorizationResult(ILjava/lang/String;I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :sswitch_9
    const-string v4, "com.letv.leui.privacydata.ILetvPrivacyDataService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;

    move-result-object v0

    .line 124
    .local v0, "_arg0":Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;
    invoke-virtual {p0, v0}, Lcom/letv/leui/privacydata/ILetvPrivacyDataService$Stub;->registeLetvPrivacyDataCallback(Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
