.class public abstract Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;
.super Landroid/os/Binder;
.source "IPowerControllerInterface.java"

# interfaces
.implements Lcom/letv/leui/os/powercontroller/IPowerControllerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/powercontroller/IPowerControllerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.os.powercontroller.IPowerControllerInterface"

.field static final TRANSACTION_getKeyValue:I = 0x3

.field static final TRANSACTION_getPackageForKill:I = 0x7

.field static final TRANSACTION_getSystemAppBlacklist:I = 0x2

.field static final TRANSACTION_getTypedValue:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x8

.field static final TRANSACTION_setKeyValue:I = 0x4

.field static final TRANSACTION_setPowerSaveMode:I = 0x1

.field static final TRANSACTION_setTypedValue:I = 0x6

.field static final TRANSACTION_unregisterCallback:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/powercontroller/IPowerControllerInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 58
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setPowerSaveMode(Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v3, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_1
    move v1, v6

    .line 57
    goto :goto_1

    .line 65
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getSystemAppBlacklist()[Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getKeyValue(I)I

    move-result v3

    .line 77
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_4
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setKeyValue(II)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_5
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    .line 99
    .local v1, "_arg1":Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getTypedValue(IZ)Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move v1, v6

    .line 98
    goto :goto_2

    .line 106
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setTypedValue(Ljava/lang/String;II)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_7
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 124
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getPackageForKill(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v1, v6

    .line 123
    goto :goto_3

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;

    move-result-object v1

    .line 136
    .local v1, "_arg1":Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->registerCallback(ILcom/letv/leui/os/powercontroller/IPowerControllerCallback;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;
    :sswitch_9
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;

    move-result-object v1

    .line 147
    .restart local v1    # "_arg1":Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->unregisterCallback(ILcom/letv/leui/os/powercontroller/IPowerControllerCallback;)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 44
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
