.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2221
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2224
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2323
    :cond_0
    :goto_0
    return-void

    .line 2226
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/String;

    .line 2227
    .local v30, "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternetPermissionCheckedProcesses:Ljava/util/HashSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/ConnectivityManager;

    .line 2230
    .local v15, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    .line 2231
    .local v20, "info":Landroid/net/NetworkInfo;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2233
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->checkInternetPermission(I)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternetPermissionCheckedProcesses:Ljava/util/HashSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2239
    .end local v15    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v30    # "processName":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 2240
    .local v32, "start":J
    const/16 v26, 0x0

    .line 2241
    .local v26, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2242
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_2

    .line 2243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2244
    new-instance v27, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .end local v26    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v27, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v26, v27

    .line 2246
    .end local v27    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v26    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    if-eqz v26, :cond_8

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2249
    const-wide/16 v12, 0x0

    .line 2250
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 2251
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v14

    .line 2252
    .local v14, "N":I
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_6

    .line 2253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v31

    .line 2254
    .local v31, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v31

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_3

    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v8, 0x2710

    if-lt v2, v8, :cond_4

    .line 2252
    :cond_3
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 2246
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v21    # "j":I
    .end local v31    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2258
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v21    # "j":I
    .restart local v31    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2259
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v31

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 2261
    monitor-exit v8

    goto :goto_2

    .line 2263
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    .line 2266
    .end local v14    # "N":I
    .end local v21    # "j":I
    .end local v31    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2263
    .restart local v14    # "N":I
    .restart local v21    # "j":I
    .restart local v31    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2264
    :try_start_7
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v8

    add-long/2addr v12, v8

    goto :goto_2

    .line 2266
    .end local v31    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_6
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2267
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 2269
    :try_start_8
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_7

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Collected native and kernel memory in "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v32

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "ms"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_7
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v16

    .line 2272
    .local v16, "cachedKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v18

    .line 2273
    .local v18, "freeKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v36

    .line 2274
    .local v36, "zramKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v22

    .line 2275
    .local v22, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v16

    const-wide/16 v8, 0x400

    mul-long v4, v18, v8

    const-wide/16 v8, 0x400

    mul-long v6, v36, v8

    const-wide/16 v8, 0x400

    mul-long v8, v8, v22

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v36

    move-wide/from16 v10, v22

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2279
    monitor-exit v35
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 2282
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v16    # "cachedKb":J
    .end local v18    # "freeKb":J
    .end local v21    # "j":I
    .end local v22    # "kernelKb":J
    .end local v36    # "zramKb":J
    :cond_8
    const/16 v28, 0x0

    .line 2283
    .local v28, "num":I
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v34, v0

    .line 2289
    .local v34, "tmp":[J
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2290
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_c

    .line 2291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Collected PSS of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " processes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v32

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2295
    monitor-exit v3

    goto/16 :goto_0

    .line 2308
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 2279
    .end local v28    # "num":I
    .end local v34    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v21    # "j":I
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v35
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2

    .line 2297
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v21    # "j":I
    .restart local v28    # "num":I
    .restart local v34    # "tmp":[J
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2298
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2299
    .local v5, "procState":I
    iget-wide v0, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v24, v0

    .line 2300
    .local v24, "lastPssTime":J
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_e

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v5, v2, :cond_e

    const-wide/16 v8, 0x3e8

    add-long v8, v8, v24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-gez v2, :cond_e

    .line 2303
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v29, v0

    .line 2308
    .local v29, "pid":I
    :goto_4
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2309
    if-eqz v4, :cond_9

    .line 2310
    const/4 v2, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    .line 2311
    .local v6, "pss":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 2312
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_d

    :try_start_c
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_d

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v5, :cond_d

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v29

    if-ne v2, v0, :cond_d

    iget-wide v2, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v2, v24

    if-nez v2, :cond_d

    .line 2314
    add-int/lit8 v28, v28, 0x1

    .line 2315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v8, v34, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V

    .line 2318
    :cond_d
    monitor-exit v35

    goto/16 :goto_3

    :catchall_5
    move-exception v2

    monitor-exit v35
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    .line 2305
    .end local v6    # "pss":J
    .end local v29    # "pid":I
    :cond_e
    const/4 v4, 0x0

    .line 2306
    const/16 v29, 0x0

    .restart local v29    # "pid":I
    goto :goto_4

    .line 2224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
