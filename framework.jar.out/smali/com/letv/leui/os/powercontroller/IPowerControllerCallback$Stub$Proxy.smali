.class Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPowerControllerCallback.java"

# interfaces
.implements Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.letv.leui.os.powercontroller.IPowerControllerCallback"

    return-object v0
.end method

.method public onValueChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 88
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.letv.leui.os.powercontroller.IPowerControllerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 94
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
