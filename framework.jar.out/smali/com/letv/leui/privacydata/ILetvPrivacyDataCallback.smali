.class public interface abstract Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback;
.super Ljava/lang/Object;
.source "ILetvPrivacyDataCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/privacydata/ILetvPrivacyDataCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAuthorizationCheckResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAuthorizationSetupResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
