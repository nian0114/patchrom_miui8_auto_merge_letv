.class Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IReportService.java"

# interfaces
.implements Lcom/android/letv/agnes/service/beans/IReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/letv/agnes/service/beans/IReportService$Stub;
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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "com.android.letv.agnes.service.beans.IReportService"

    return-object v0
.end method

.method public reportApp(ILcom/android/letv/agnes/service/beans/IApp;)V
    .locals 5
    .param p1, "cCode"    # I
    .param p2, "data"    # Lcom/android/letv/agnes/service/beans/IApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    if-eqz p2, :cond_0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/letv/agnes/service/beans/IApp;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportEvent(ILcom/android/letv/agnes/service/beans/IEvent;)V
    .locals 5
    .param p1, "cCode"    # I
    .param p2, "data"    # Lcom/android/letv/agnes/service/beans/IEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    if-eqz p2, :cond_0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportMusicPlay(ILcom/android/letv/agnes/service/beans/IMusicPlay;)V
    .locals 5
    .param p1, "cCode"    # I
    .param p2, "data"    # Lcom/android/letv/agnes/service/beans/IMusicPlay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    if-eqz p2, :cond_0

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    return-void

    .line 206
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportVideoPlay(ILcom/android/letv/agnes/service/beans/IVideoPlay;)V
    .locals 5
    .param p1, "cCode"    # I
    .param p2, "data"    # Lcom/android/letv/agnes/service/beans/IVideoPlay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    if-eqz p2, :cond_0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 194
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public reportWidget(ILcom/android/letv/agnes/service/beans/IWidget;)V
    .locals 5
    .param p1, "cCode"    # I
    .param p2, "data"    # Lcom/android/letv/agnes/service/beans/IWidget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 218
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    if-eqz p2, :cond_0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/letv/agnes/service/beans/IWidget;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-void

    .line 225
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
