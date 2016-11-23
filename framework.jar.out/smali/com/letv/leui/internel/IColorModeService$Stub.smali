.class public abstract Lcom/letv/leui/internel/IColorModeService$Stub;
.super Landroid/os/Binder;
.source "IColorModeService.java"

# interfaces
.implements Lcom/letv/leui/internel/IColorModeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/internel/IColorModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/internel/IColorModeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.internel.IColorModeService"

.field static final TRANSACTION_addListener:I = 0xb

.field static final TRANSACTION_enableBlueLight:I = 0x5

.field static final TRANSACTION_getActiveMode:I = 0x3

.field static final TRANSACTION_getBlueLightStrength:I = 0x6

.field static final TRANSACTION_getDefaultBlueLightStrength:I = 0xa

.field static final TRANSACTION_getMaxBlueLightStrength:I = 0x8

.field static final TRANSACTION_getMinBlueLightStrength:I = 0x9

.field static final TRANSACTION_isBlueLightEnabled:I = 0x4

.field static final TRANSACTION_registerColorUtil:I = 0xe

.field static final TRANSACTION_removeListener:I = 0xc

.field static final TRANSACTION_revertToSettingsActiveMode:I = 0xd

.field static final TRANSACTION_setActiveMode:I = 0x1

.field static final TRANSACTION_setBlueLightStrength:I = 0x7

.field static final TRANSACTION_setWrteDataBaseActiveMode:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/internel/IColorModeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.letv.leui.internel.IColorModeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/internel/IColorModeService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/letv/leui/internel/IColorModeService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/letv/leui/internel/IColorModeService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/internel/IColorModeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->setActiveMode(I)Z

    move-result v2

    .line 55
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v5, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 66
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/internel/IColorModeService$Stub;->setWrteDataBaseActiveMode(IZ)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_1
    move v1, v3

    .line 65
    goto :goto_1

    .line 72
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->getActiveMode()I

    move-result v2

    .line 74
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2    # "_result":I
    :sswitch_4
    const-string v5, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->isBlueLightEnabled()Z

    move-result v2

    .line 82
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 91
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->enableBlueLight(Z)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v3

    .line 90
    goto :goto_2

    .line 97
    :sswitch_6
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->getBlueLightStrength()I

    move-result v2

    .line 99
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->setBlueLightStrength(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->getMaxBlueLightStrength()I

    move-result v2

    .line 116
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v2    # "_result":I
    :sswitch_9
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->getMinBlueLightStrength()I

    move-result v2

    .line 124
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v2    # "_result":I
    :sswitch_a
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->getDefaultBlueLightStrength()I

    move-result v2

    .line 132
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "_result":I
    :sswitch_b
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 141
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->addListener(Landroid/os/IBinder;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_c
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 150
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->removeListener(Landroid/os/IBinder;)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_d
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;->revertToSettingsActiveMode()V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    :sswitch_e
    const-string v3, "com.letv.leui.internel.IColorModeService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/colormode/IColorMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/colormode/IColorMode;

    move-result-object v0

    .line 166
    .local v0, "_arg0":Landroid/colormode/IColorMode;
    invoke-virtual {p0, v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->registerColorUtil(Landroid/colormode/IColorMode;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
