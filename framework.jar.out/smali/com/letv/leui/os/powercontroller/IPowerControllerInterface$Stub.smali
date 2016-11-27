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

.field static final TRANSACTION_getPackageForKill:I = 0x9

.field static final TRANSACTION_getScreenOffPolicyEnabled:I = 0x4

.field static final TRANSACTION_getSleepPowerSaveEnabled:I = 0x2

.field static final TRANSACTION_getSystemAppBlacklist:I = 0x6

.field static final TRANSACTION_getTypeEnabled:I = 0xa

.field static final TRANSACTION_getTypedValue:I = 0x7

.field static final TRANSACTION_setPowerSaveMode:I = 0x1

.field static final TRANSACTION_setScreenOffPolicyEnabled:I = 0x5

.field static final TRANSACTION_setSleepPowerSaveEnabled:I = 0x3

.field static final TRANSACTION_setTypeEnabled:I = 0xb

.field static final TRANSACTION_setTypedValue:I = 0x8


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

    .line 164
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
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getSleepPowerSaveEnabled()Z

    move-result v3

    .line 67
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v3, :cond_2

    move v6, v5

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v5

    .line 76
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setSleepPowerSaveEnabled(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v6

    .line 75
    goto :goto_2

    .line 82
    :sswitch_4
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getScreenOffPolicyEnabled()Z

    move-result v3

    .line 84
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v3, :cond_4

    move v6, v5

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v5

    .line 93
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setScreenOffPolicyEnabled(Z)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v6

    .line 92
    goto :goto_3

    .line 99
    :sswitch_6
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getSystemAppBlacklist()[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 111
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v1, v5

    .line 112
    .restart local v1    # "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getTypedValue(IZ)Ljava/util/List;

    move-result-object v4

    .line 113
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move v1, v6

    .line 111
    goto :goto_4

    .line 119
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v6, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setTypedValue(Ljava/lang/String;II)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_9
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v1, v5

    .line 137
    .local v1, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getPackageForKill(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    .line 138
    .restart local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move v1, v6

    .line 136
    goto :goto_5

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->getTypeEnabled(I)Z

    move-result v3

    .line 148
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v3, :cond_8

    move v6, v5

    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v7, "com.letv.leui.os.powercontroller.IPowerControllerInterface"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v1, v5

    .line 159
    .restart local v1    # "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/os/powercontroller/IPowerControllerInterface$Stub;->setTypeEnabled(IZ)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_9
    move v1, v6

    .line 158
    goto :goto_6

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
