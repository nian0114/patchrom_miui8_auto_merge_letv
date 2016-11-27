.class Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearSystemCacheThread"
.end annotation


# instance fields
.field private local_observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->local_observer:Landroid/content/pm/IPackageDataObserver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    .local v2, "retCode":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mClearCacheLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/cache/backup/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "cachekDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v0    # "cachekDir":Ljava/io/File;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->local_observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->local_observer:Landroid/content/pm/IPackageDataObserver;

    const/4 v5, 0x0

    if-ltz v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    return-void

    .restart local v0    # "cachekDir":Ljava/io/File;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .end local v0    # "cachekDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove failed,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "RemoveException when invoking call back"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected setObserver(Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ClearSystemCacheThread;->local_observer:Landroid/content/pm/IPackageDataObserver;

    return-void
.end method
