.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDeleteObserver"
.end annotation


# instance fields
.field final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mResult:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V
    .locals 1

    .prologue
    .line 5135
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 5136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5157
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5158
    :try_start_0
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mResult:I

    .line 5159
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5160
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5161
    monitor-exit v1

    .line 5162
    return-void

    .line 5161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 5140
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5142
    monitor-exit v1

    .line 5143
    return-void

    .line 5142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForCompletion()V
    .locals 2

    .prologue
    .line 5146
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5147
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 5149
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5150
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5152
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 5153
    return-void

    .line 5152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
