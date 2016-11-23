.class public interface abstract Lcom/letv/leui/os/IScreenAutoBrightnessCallback;
.super Ljava/lang/Object;
.source "IScreenAutoBrightnessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/IScreenAutoBrightnessCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAnimationStatusChange(ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBrightnessChange(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
