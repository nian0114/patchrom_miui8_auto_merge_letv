.class public Lorg/codeaurora/ims/qtiims/QtiImsInterfaceBaseImpl;
.super Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;
.source "QtiImsInterfaceBaseImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/codeaurora/ims/qtiims/IQtiImsInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallForwardUncondTimer(IILorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public getPacketCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public getPacketErrorCount(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public querySsacStatus(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    .prologue
    .line 62
    return-void
.end method

.method public queryVopsStatus(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;

    .prologue
    .line 59
    return-void
.end method

.method public registerForViceRefreshInfo(Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method public sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "deflectNumber"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;)V
    .locals 0
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "reason"    # I
    .param p7, "serviceClass"    # I
    .param p8, "dialingNumber"    # Ljava/lang/String;
    .param p9, "listener"    # Lorg/codeaurora/ims/qtiims/IQtiImsInterfaceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 14
    return-void
.end method
