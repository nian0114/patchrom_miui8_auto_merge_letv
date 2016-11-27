.class public Lcom/android/server/pm/AdbCmdResult;
.super Ljava/lang/Object;
.source "AdbCmdResult.java"


# instance fields
.field mHasResult:Z

.field mResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(Z)V
    .locals 2
    .param p1, "res"    # Z

    .prologue
    const/4 v0, 0x1

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
