.class public Lcom/letv/leui/server/clipboard/LeClipboardManagerService;
.super Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;
.source "LeClipboardManagerService.java"


# static fields
.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MSG_DISMISS:I = 0x2

.field private static final MSG_EVENT_AFTER_DISMISS:I = 0xa

.field private static final MSG_EVENT_DOUBLE_TAP:I = 0x8

.field private static final MSG_EVENT_ENABLE_DOUBLETAP_SHOW:I = 0x9

.field private static final MSG_PARSTE:I = 0x3

.field private static final MSG_SAVE_CLIPDATA:I = 0x6

.field private static final MSG_SHOW:I = 0x1

.field private static final MSG_STOP:I = 0x7

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x4

.field private static final MSG_WINDOW_VISIBILITY_CHANGED:I = 0x5

.field private static final SERVER_APP_PKG_NAME:Ljava/lang/String; = "com.letv.leui.widget.leclipboardapp"


# instance fields
.field private final mClipActionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

.field private mContext:Landroid/content/Context;

.field private mEnableDoubleTapShow:I

.field private mIsShowing:Z

.field private mLeClipConnection:Landroid/content/ServiceConnection;

.field private mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

.field private mLeClipboardServiceIntent:Landroid/content/Intent;

.field private mMessager:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;-><init>()V

    .line 43
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mClipActionListeners:Landroid/os/RemoteCallbackList;

    .line 64
    iput v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mEnableDoubleTapShow:I

    .line 244
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$1;-><init>(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mMessager:Landroid/os/Messenger;

    .line 251
    new-instance v0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService$2;-><init>(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;)V

    iput-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipConnection:Landroid/content/ServiceConnection;

    .line 53
    iput-object p1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleTapShow"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mEnableDoubleTapShow:I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->bindClipboardServer(Landroid/os/Message;)V

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/letv/leui/server/clipboard/LeClipboardManagerService;Lcom/letv/leui/widget/text/clipboard/ILeClipboard;)Lcom/letv/leui/widget/text/clipboard/ILeClipboard;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/server/clipboard/LeClipboardManagerService;
    .param p1, "x1"    # Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    return-object p1
.end method

.method private bindClipboardServer(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->getLeClipboardServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 98
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 105
    return-void

    .line 100
    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dispatchDismissPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iput-boolean v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mIsShowing:Z

    .line 137
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mMessager:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V

    .line 142
    return-void
.end method

.method private dispatchSaveClipData(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 185
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 186
    iget-object v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mMessager:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "clipdata"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 193
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V

    .line 194
    return-void
.end method

.method private dispatchShowPanel()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 122
    iget-object v3, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 123
    .local v1, "kMgr":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 125
    .local v0, "isPhoneLocked":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 126
    .local v2, "msg":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->what:I

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 128
    if-eqz v0, :cond_0

    move v3, v4

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 129
    iget-object v3, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mMessager:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v3, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mMessager:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V

    .line 132
    iput-boolean v4, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mIsShowing:Z

    .line 133
    return-void

    .line 128
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private dispatchWindowFocusChanged(I)V
    .locals 3
    .param p1, "hasWindowFocus"    # I

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 165
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V

    .line 166
    return-void
.end method

.method private dispatchWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "viewVisibility"    # I

    .prologue
    .line 176
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 179
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V

    .line 180
    return-void
.end method

.method private getLeClipboardServiceIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboardServiceIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.letv.leui.widget.leclipboard.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.leui.widget.leclipboardapp"

    const-string v3, "com.letv.leui.widget.text.clipboard.LeClipboardService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iput-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboardServiceIntent:Landroid/content/Intent;

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboardServiceIntent:Landroid/content/Intent;

    return-object v1
.end method

.method private onStopClipboardService()V
    .locals 3

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 237
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->getLeClipboardServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private pasteText(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mClipboardActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mClipboardActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;->onAction(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessage(Landroid/os/Message;Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "shouldRestart"    # Z

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    invoke-interface {v1, p1, p2}, Lcom/letv/leui/widget/text/clipboard/ILeClipboard;->send(Landroid/os/Message;Landroid/os/IBinder;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-eqz p3, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->bindClipboardServer(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchServerMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 216
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->pasteText(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchDismissPanel()V

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->onStopClipboardService()V

    .line 224
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mEnableDoubleTapShow:I

    .line 226
    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleTapShow"

    iget v2, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mEnableDoubleTapShow:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 229
    :pswitch_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mIsShowing:Z

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isPanelShowing(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "com.letv.leui.widget.leclipboardapp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mLeClipboard:Lcom/letv/leui/widget/text/clipboard/ILeClipboard;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 67
    iget v1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mEnableDoubleTapShow:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->isPanelShowing(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchShowPanel()V

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    .line 76
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    :pswitch_0
    return-void

    .line 78
    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchShowPanel()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchDismissPanel()V

    goto :goto_0

    .line 84
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchWindowFocusChanged(I)V

    goto :goto_0

    .line 87
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchWindowVisibilityChanged(I)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ClipData;

    invoke-direct {p0, v1, p2}, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->dispatchSaveClipData(Landroid/content/ClipData;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/letv/leui/server/clipboard/LeClipboardManagerService;->mClipboardActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;

    .line 198
    return-void
.end method
