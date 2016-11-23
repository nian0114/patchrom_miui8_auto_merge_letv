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

.field private static final PLATFORM_MTK:Ljava/lang/String; = "flatform_mtk"

.field private static final PLATFORM_OTHER:Ljava/lang/String; = "platform_other"

.field private static final PLATFORM_QC:Ljava/lang/String; = "flatform_qc"

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

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    .line 83
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/policy/global/GlobalActionViewMediator$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    .line 240
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .line 254
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$3;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 57
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 60
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    .line 63
    invoke-static {p1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .line 66
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 67
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/policy/global/GlobalActionViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 68
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->onSystemReady()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->startQuickBoot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->getCurrentPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPlatform(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Context is null when getting current platform."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_0
    const-string v0, "flatform_qc"

    .line 225
    .local v0, "platform":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 226
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    const-string v2, "common.platform_is_qcom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v0, "flatform_qc"

    .line 233
    :goto_0
    const-string v2, "GlobalAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPlatform(), platform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0

    .line 228
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "common.platform_is_mtk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const-string v0, "flatform_mtk"

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "platform_other"

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    const-string v0, "GlobalAction"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    .line 192
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->destroyReceiver()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
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
    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 159
    const-string v0, "GlobalAction"

    const-string v1, "ignoring handleShow because system is not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    monitor-exit p0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    const-string v0, "GlobalAction"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->show()V

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->registerReceiver()V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    .line 168
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
    .line 176
    const-string v1, "GlobalAction"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_0

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 179
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 180
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onSystemReady()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    const-string v0, "GlobalAction"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    .line 79
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->registerCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
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
    .line 207
    const-string v2, "GlobalAction"

    const-string v3, "startQuickBoot"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
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
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    monitor-exit p0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v1, "GlobalAction"

    const-string v2, "hideGlobal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
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
    .line 198
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 200
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
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    monitor-exit p0

    .line 132
    :goto_0
    return-void

    .line 125
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

    .line 126
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
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
    .line 140
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

    .line 142
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->showBeforeProvisioning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 147
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
