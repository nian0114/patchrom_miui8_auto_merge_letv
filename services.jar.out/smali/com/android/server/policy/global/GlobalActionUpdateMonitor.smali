.class public Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
.super Ljava/lang/Object;
.source "GlobalActionUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MESSAGE_CLOSE_SYSTEM_DIALOG:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "GlobalAction"

.field private static sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;


# instance fields
.field private isRegistered:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mScreenOn:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->isRegistered:Z

    .line 44
    new-instance v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;-><init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;-><init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    return-object v0
.end method

.method private sendUpdates(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 160
    return-void
.end method


# virtual methods
.method public destroyReceiver()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->isRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->isRegistered:Z

    .line 118
    const-string v0, "GlobalAction"

    const-string v1, "unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleCloseSystemDialog()V
    .locals 4

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .line 74
    .local v0, "cb":Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;->onCloseSystemDialog()V

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "cb":Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public registerCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 141
    const-string v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 145
    const-string v1, "GlobalAction"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_1
    return-void

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->removeCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sendUpdates(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    goto :goto_1
.end method

.method public registerReceiver()V
    .locals 4

    .prologue
    .line 95
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->isRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .local v1, "screenOffFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->isRegistered:Z

    .line 108
    const-string v2, "GlobalAction"

    const-string v3, "register receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 127
    const-string v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method
