.class public interface abstract Lcom/android/letv/agnes/service/beans/IReportService;
.super Ljava/lang/Object;
.source "IReportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/letv/agnes/service/beans/IReportService$Stub;
    }
.end annotation


# virtual methods
.method public abstract reportApp(ILcom/android/letv/agnes/service/beans/IApp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportEvent(ILcom/android/letv/agnes/service/beans/IEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportMusicPlay(ILcom/android/letv/agnes/service/beans/IMusicPlay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportVideoPlay(ILcom/android/letv/agnes/service/beans/IVideoPlay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportWidget(ILcom/android/letv/agnes/service/beans/IWidget;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
