.class public Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;
.super Ljava/lang/Object;
.source "LeClipboardManager.java"


# static fields
.field private static final DEBUG:Z = false

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

.field private static final TAG:Ljava/lang/String; = "LeClipboard"

.field private static sLeClipboardService:Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private handle:Landroid/os/Handler;

.field private mActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;

.field private final mContext:Landroid/content/Context;

.field private mMessager:Landroid/os/Messenger;

.field private mRoots:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sStaticLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$1;-><init>(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->handle:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->handle:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mMessager:Landroid/os/Messenger;

    .line 188
    new-instance v0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager$2;-><init>(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;)V

    iput-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;

    .line 33
    iput-object p1, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->parseText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mMessager:Landroid/os/Messenger;

    return-object v0
.end method

.method private static getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;
    .locals 3

    .prologue
    .line 311
    sget-object v2, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 312
    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sLeClipboardService:Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    if-eqz v1, :cond_0

    .line 313
    sget-object v1, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sLeClipboardService:Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    monitor-exit v2

    .line 317
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 315
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "leclipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 316
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v1

    sput-object v1, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sLeClipboardService:Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    .line 317
    sget-object v1, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->sLeClipboardService:Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    monitor-exit v2

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "paste"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iget-object v2, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 157
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "focusView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 163
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "focusView":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->pasteText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 167
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private pasteText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "paste"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 171
    .local v4, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 172
    .local v1, "min":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 174
    .local v0, "max":I
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 176
    .local v3, "selStart":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 178
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 182
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_0
    if-eqz p2, :cond_1

    instance-of v5, v4, Landroid/text/Editable;

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 183
    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 184
    check-cast v4, Landroid/text/Editable;

    .end local v4    # "text":Ljava/lang/CharSequence;
    invoke-interface {v4, v1, v0, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method public enableDoubleTapShowing(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V

    .line 71
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 72
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 73
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 74
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLeClipboard(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 227
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->setRootView(Landroid/view/View;)V

    .line 229
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V

    .line 231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 233
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isLeClipboardShowing()Z
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->isPanelShowing(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 280
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 288
    :goto_0
    return v1

    .line 282
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V

    .line 283
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->onDoubleTap(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Landroid/content/Context;I)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "hasWindowFocus"    # I

    .prologue
    .line 248
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 250
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 251
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 252
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onWindowVisibility(Landroid/content/Context;I)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "viewVisibility"    # I

    .prologue
    .line 264
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 272
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 266
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 267
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 268
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDoubleTapShow(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 308
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 302
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 303
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setLePrimaryClip(Landroid/content/Context;Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v8

    if-nez v8, :cond_0

    .line 65
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v6, ""

    .line 43
    .local v6, "paste":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 44
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 45
    invoke-virtual {p2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 46
    .local v7, "text":Ljava/lang/CharSequence;
    instance-of v8, v7, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 47
    :goto_2
    if-eqz v6, :cond_4

    .line 52
    .end local v3    # "i":I
    .end local v7    # "text":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 53
    .local v1, "description":Landroid/content/ClipDescription;
    const/4 v4, 0x0

    .line 54
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    .line 57
    :cond_2
    invoke-static {v4, v6}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 58
    .local v0, "data":Landroid/content/ClipData;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 59
    .local v5, "msg":Landroid/os/Message;
    const/4 v8, 0x6

    iput v8, v5, Landroid/os/Message;->what:I

    .line 60
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v5, v9}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "description":Landroid/content/ClipDescription;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "paste":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v6    # "paste":Ljava/lang/CharSequence;
    .restart local v7    # "text":Ljava/lang/CharSequence;
    :cond_3
    move-object v6, v7

    .line 46
    goto :goto_2

    .line 44
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mRoots:Ljava/lang/ref/WeakReference;

    .line 149
    :cond_1
    return-void
.end method

.method public showLeClipboard(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mActionListener:Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener$Stub;

    invoke-interface {v2, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->setActionListener(Lcom/letv/leui/widget/text/clipboard/ILeClipboardActionListener;)V

    .line 211
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 212
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 213
    invoke-static {}, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->getLeClipboardManagerService()Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/text/clipboard/LeClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/letv/leui/widget/text/clipboard/ILeClipboardManagerService;->send(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
