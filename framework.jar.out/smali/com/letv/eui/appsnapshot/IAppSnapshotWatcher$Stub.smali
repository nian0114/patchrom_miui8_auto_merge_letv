.class public abstract Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;
.super Landroid/os/Binder;
.source "IAppSnapshotWatcher.java"

# interfaces
.implements Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

.field static final TRANSACTION_onSnapshotFailed:I = 0x2

.field static final TRANSACTION_onSnapshotFinished:I = 0x3

.field static final TRANSACTION_onSnapshotStart:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-virtual {p0, p0, v0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;->onSnapshotStart()V

    goto :goto_0

    :sswitch_2
    const-string v2, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;->onSnapshotFailed(I)V

    goto :goto_0

    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v2, "com.letv.eui.appsnapshot.IAppSnapshotWatcher"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, "_arg0":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;->onSnapshotFinished(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .end local v0    # "_arg0":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
