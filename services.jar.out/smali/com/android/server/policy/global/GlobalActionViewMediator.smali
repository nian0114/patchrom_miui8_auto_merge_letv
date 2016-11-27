.class public Lcom/android/server/policy/global/GlobalActionViewMediator;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final HIDE:I = 0x3

.field private static final SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlobalAction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGlobalActionDonePending:Z

.field private mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActionStart:Z

.field private mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mPM:Landroid/os/PowerManager;

.field private mSystemReady:Z

.field private mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    .line 77
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/policy/global/GlobalActionViewMediator$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .line 228
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$3;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 51
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 54
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    .line 57
    invoke-static {p1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .line 60
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 61
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/policy/global/GlobalActionViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->onSystemReady()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->startQuickBoot()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    const-string v0, "GlobalAction"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    .line 186
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->destroyReceiver()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 153
    const-string v0, "GlobalAction"

    const-string v1, "ignoring handleShow because system is not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit p0

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "GlobalAction"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->show()V

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->registerReceiver()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    .line 162
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final hideLocked()V
    .locals 3

    .prologue
    .line 170
    const-string v1, "GlobalAction"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_0

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 173
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onSystemReady()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    const-string v0, "GlobalAction"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    .line 73
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->registerCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startQuickBoot()V
    .locals 5

    .prologue
    .line 201
    const-string v2, "GlobalAction"

    const-string v3, "startQuickBoot"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "GlobalAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startQuickBoot, error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final hideGlobal()V
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    monitor-exit p0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v1, "GlobalAction"

    const-string v2, "hideGlobal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 102
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isGlobalActionShowing()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    monitor-exit p0

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 122
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final showGlobal(ZZ)V
    .locals 4
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 134
    const-string v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLocked(), keyguardShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDeviceProvisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->showBeforeProvisioning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 141
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
