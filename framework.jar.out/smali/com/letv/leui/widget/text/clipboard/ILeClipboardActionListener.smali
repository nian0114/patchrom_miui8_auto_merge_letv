.class public interface abstract Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;
.super Ljava/lang/Object;
.source "ILeClipboardActionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAction(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
