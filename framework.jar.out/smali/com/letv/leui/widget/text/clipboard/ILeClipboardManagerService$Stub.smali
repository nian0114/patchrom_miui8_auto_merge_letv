.class public abstract Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;
.super Landroid/os/Binder;
.source "ILeClipboardManagerService.java"

# interfaces
.implements Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

.field static final TRANSACTION_isPanelShowing:I = 0x3

.field static final TRANSACTION_onDoubleTap:I = 0x4

.field static final TRANSACTION_send:I = 0x1

.field static final TRANSACTION_setActionListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 47
    :sswitch_0
    const-string v3, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v3, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 61
    .local v0, "_arg0":Landroid/os/Message;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->send(Landroid/os/Message;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/os/Message;
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Message;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Landroid/os/Message;
    :sswitch_2
    const-string v3, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;
    :sswitch_3
    const-string v5, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->isPanelShowing(Ljava/lang/String;)Z

    move-result v2

    .line 81
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.letv.leui.widget.text.clipboard.ILeClipboardManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->onDoubleTap(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
