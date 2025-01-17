.class public abstract Lcom/android/letv/agnes/service/beans/IReportService$Stub;
.super Landroid/os/Binder;
.source "IReportService.java"

# interfaces
.implements Lcom/android/letv/agnes/service/beans/IReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/letv/agnes/service/beans/IReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.letv.agnes.service.beans.IReportService"

.field static final TRANSACTION_reportApp:I = 0x1

.field static final TRANSACTION_reportEvent:I = 0x2

.field static final TRANSACTION_reportMusicPlay:I = 0x4

.field static final TRANSACTION_reportVideoPlay:I = 0x3

.field static final TRANSACTION_reportWidget:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p0, p0, v0}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/letv/agnes/service/beans/IReportService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.letv.agnes.service.beans.IReportService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/letv/agnes/service/beans/IReportService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/letv/agnes/service/beans/IReportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/letv/agnes/service/beans/IApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/letv/agnes/service/beans/IApp;

    .local v1, "_arg1":Lcom/android/letv/agnes/service/beans/IApp;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->reportApp(ILcom/android/letv/agnes/service/beans/IApp;)V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IApp;
    goto :goto_1

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IApp;
    :sswitch_2
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/letv/agnes/service/beans/IEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/letv/agnes/service/beans/IEvent;

    .local v1, "_arg1":Lcom/android/letv/agnes/service/beans/IEvent;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->reportEvent(ILcom/android/letv/agnes/service/beans/IEvent;)V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IEvent;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IEvent;
    goto :goto_2

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IEvent;
    :sswitch_3
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/letv/agnes/service/beans/IVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/letv/agnes/service/beans/IVideoPlay;

    .local v1, "_arg1":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->reportVideoPlay(ILcom/android/letv/agnes/service/beans/IVideoPlay;)V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    goto :goto_3

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :sswitch_4
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/letv/agnes/service/beans/IMusicPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/letv/agnes/service/beans/IMusicPlay;

    .local v1, "_arg1":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->reportMusicPlay(ILcom/android/letv/agnes/service/beans/IMusicPlay;)V

    goto :goto_0

    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    goto :goto_4

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :sswitch_5
    const-string v3, "com.android.letv.agnes.service.beans.IReportService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/letv/agnes/service/beans/IWidget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/letv/agnes/service/beans/IWidget;

    .local v1, "_arg1":Lcom/android/letv/agnes/service/beans/IWidget;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/letv/agnes/service/beans/IReportService$Stub;->reportWidget(ILcom/android/letv/agnes/service/beans/IWidget;)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IWidget;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/android/letv/agnes/service/beans/IWidget;
    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
