.class public interface abstract Lcom/letv/leui/os/powercontroller/IPowerControllerCallback;
.super Ljava/lang/Object;
.source "IPowerControllerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/powercontroller/IPowerControllerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onValueChanged(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
