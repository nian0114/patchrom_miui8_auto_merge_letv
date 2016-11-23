.class public abstract Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub;
.super Landroid/os/Binder;
.source "IScreenAutoBrightnessCallback.java"

# interfaces
.implements Lcom/letv/leui/os/IScreenAutoBrightnessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/IScreenAutoBrightnessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.os.IScreenAutoBrightnessCallback"

.field static final TRANSACTION_onAnimationStatusChange:I = 0x2

.field static final TRANSACTION_onBrightnessChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.letv.leui.os.IScreenAutoBrightnessCallback"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/os/IScreenAutoBrightnessCallback;
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
    const-string v1, "com.letv.leui.os.IScreenAutoBrightnessCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/os/IScreenAutoBrightnessCallback;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/letv/leui/os/IScreenAutoBrightnessCallback;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string v5, "com.letv.leui.os.IScreenAutoBrightnessCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.letv.leui.os.IScreenAutoBrightnessCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub;->onBrightnessChange(IJ)V

    goto :goto_0

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    :sswitch_2
    const-string v5, "com.letv.leui.os.IScreenAutoBrightnessCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    .line 67
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .local v1, "_arg2":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub;->onAnimationStatusChange(ZII)V

    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg2":I
    .end local v2    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
