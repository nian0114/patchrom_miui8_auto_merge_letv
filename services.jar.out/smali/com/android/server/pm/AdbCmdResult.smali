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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    .line 14
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0

    .line 32
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    iget-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    return v0

    .line 32
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

    .line 17
    monitor-enter p0

    .line 18
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    .line 19
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
