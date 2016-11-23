.class public interface abstract Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
.super Ljava/lang/Object;
.source "IAppSnapshotWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSnapshotFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSnapshotFinished(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSnapshotStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
