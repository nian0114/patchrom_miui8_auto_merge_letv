.class public interface abstract Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;
.super Ljava/lang/Object;
.source "ILeClipboardManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract isPanelShowing(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDoubleTap(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract send(Landroid/os/Message;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
