.class public Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;
.super Ljava/lang/Object;
.source "AppSnapshotWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$1;,
        Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;,
        Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;,
        Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final SNAPSHOT_OCCUPIED_FAILED:I = 0x1

.field public static final SNAPSHOT_OOM_FAILED:I = 0x2

.field public static final SNAPSHOT_REPEAT_FAILTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AppSnapshotWatcher"


# instance fields
.field private mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

.field private mWatcher:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    new-instance v0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;-><init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$1;)V

    iput-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mWatcher:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;

    return-void
.end method

.method static synthetic access$100(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;

    .prologue
    iget-object v0, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    return-object v0
.end method


# virtual methods
.method public getAppSnapshotWindow(Landroid/os/IBinder;)Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v2, p1}, Landroid/view/IWindowManager;->getAppSnapshotWindow(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .local v0, "appClient":Landroid/view/IWindow;
    if-eqz v0, :cond_0

    new-instance v2, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;

    invoke-direct {v2, p0, v0}, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;-><init>(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "appClient":Landroid/view/IWindow;
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AppSnapshotWatcher"

    const-string v3, "getAppSnapshotWindow got an exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "AppSnapshotWatcher"

    const-string v3, "Can NOT got window manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startAppSnapshot(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;)V
    .locals 4
    .param p1, "appWindow"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;
    .param p2, "callback"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    .prologue
    const-string v1, "AppSnapshotWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppSnapshot appWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mCallback:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Callback;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher;->mWatcher:Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$Watcher;

    invoke-interface {v1, v2}, Landroid/view/IWindow;->startAppSnapshot(Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppSnapshotWatcher"

    const-string v2, "startAppSnapshot got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopAppSnapshot(Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;)V
    .locals 4
    .param p1, "appWindow"    # Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;

    .prologue
    const-string v1, "AppSnapshotWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAppSnapshot appWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/letv/eui/appsnapshot/AppSnapshotWatcher$AppWindow;->window:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->stopAppSnapshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppSnapshotWatcher"

    const-string v2, "stopAppSnapshot got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
