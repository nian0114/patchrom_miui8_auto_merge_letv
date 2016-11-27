.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 530
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 531
    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 535
    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    .line 536
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 542
    .local v16, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 543
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    .line 544
    .local v17, "probablyDone":Z
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    if-eqz v17, :cond_a

    .line 546
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_1

    const-string v21, "TaskPersister"

    const-string v22, "Looking for obsolete files."

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->clear()V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    .line 549
    :try_start_1
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_2

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mRecents="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v21

    add-int/lit8 v20, v21, -0x1

    .local v20, "taskNdx":I
    :goto_1
    if-ltz v20, :cond_9

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mRecentTasks:Lcom/android/server/am/RecentTasks;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    .line 552
    .local v19, "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_3

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LazyTaskWriter: task="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " persistable="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_3
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v21

    if-nez v21, :cond_8

    .line 555
    :cond_5
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_6

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "adding to persistentTaskIds task="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_6
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 550
    :cond_7
    :goto_2
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_1

    .line 544
    .end local v17    # "probablyDone":Z
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskNdx":I
    :catchall_0
    move-exception v21

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 558
    .restart local v17    # "probablyDone":Z
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v20    # "taskNdx":I
    :cond_8
    :try_start_3
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_7

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "omitting from persistentTaskIds task="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 562
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskNdx":I
    :catchall_1
    move-exception v21

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21

    .restart local v20    # "taskNdx":I
    :cond_9
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 568
    .end local v20    # "taskNdx":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 569
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v21, v24, v26

    if-eqz v21, :cond_b

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$402(Lcom/android/server/am/TaskPersister;J)J

    .line 572
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_b

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Next write time may be in 500 msec. ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v21, v24, v26

    if-eqz v21, :cond_c

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$402(Lcom/android/server/am/TaskPersister;J)J

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 583
    :cond_c
    :try_start_6
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_d

    const-string v21, "TaskPersister"

    const-string v23, "LazyTaskWriter: waiting indefinitely."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 585
    :catch_0
    move-exception v21

    goto :goto_3

    .line 590
    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 592
    .local v13, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 593
    .local v14, "now":J
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_f

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LazyTaskWriter: now="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mNextWriteTime="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mWriteQueue.size="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " item="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-wide v24

    cmp-long v21, v14, v24

    if-gez v21, :cond_11

    .line 597
    :try_start_8
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_10

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "LazyTaskWriter: waiting "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v14

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v23 .. v23}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 602
    :goto_5
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    goto :goto_4

    .line 606
    :cond_11
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 608
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_15

    move-object v12, v13

    .line 609
    check-cast v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 610
    .local v12, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v9, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 611
    .local v9, "filename":Ljava/lang/String;
    iget-object v6, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 612
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_12

    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "writing bitmap: filename="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isIcon="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mIsIcon:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_12
    const/4 v10, 0x0

    .line 615
    .local v10, "imageFile":Ljava/io/FileOutputStream;
    :try_start_a
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 616
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .local v11, "imageFile":Ljava/io/FileOutputStream;
    :try_start_b
    iget-boolean v0, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mIsIcon:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    .line 617
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_13

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mThumbnailHeight:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mThumbnailWidth:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$600(Lcom/android/server/am/TaskPersister;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 622
    :goto_6
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x3c

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 629
    :goto_7
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v10, v11

    .line 630
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 606
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v14    # "now":J
    :catchall_2
    move-exception v21

    :try_start_c
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v21

    .line 620
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v14    # "now":J
    :cond_13
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mThumbnailWidth:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$600(Lcom/android/server/am/TaskPersister;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mThumbnailHeight:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$500(Lcom/android/server/am/TaskPersister;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_6

    .line 624
    :cond_14
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    .line 626
    :catch_1
    move-exception v7

    move-object v10, v11

    .line 627
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    :goto_8
    :try_start_e
    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveImage: unable to save "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 629
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v21

    :goto_9
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    .line 631
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_15
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 633
    const/16 v18, 0x0

    .line 634
    .local v18, "stringWriter":Ljava/io/StringWriter;
    check-cast v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    .line 635
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_16

    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Writing task="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    monitor-enter v22

    .line 637
    :try_start_f
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v21, v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v21, :cond_18

    .line 640
    :try_start_10
    sget-boolean v21, Lcom/android/server/am/TaskPersister;->DEBUG:Z

    if-eqz v21, :cond_17

    const-string v21, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Saving task="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$700(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-result-object v18

    .line 646
    :cond_18
    :goto_a
    :try_start_11
    monitor-exit v22
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 647
    if-eqz v18, :cond_0

    .line 649
    const/4 v8, 0x0

    .line 650
    .local v8, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 652
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_12
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "_task"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".xml"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 654
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_13
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 655
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 656
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 657
    invoke-virtual {v5, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_0

    .line 658
    :catch_2
    move-exception v7

    move-object v4, v5

    .line 659
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v7, "e":Ljava/io/IOException;
    :goto_b
    if-eqz v8, :cond_19

    .line 660
    invoke-virtual {v4, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 662
    :cond_19
    const-string v21, "TaskPersister"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to open "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for persisting. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v21

    :try_start_14
    monitor-exit v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v21

    .line 658
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v8    # "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    goto :goto_b

    .line 643
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v21

    goto/16 :goto_a

    .line 642
    :catch_5
    move-exception v21

    goto/16 :goto_a

    .line 629
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v21

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 626
    :catch_6
    move-exception v7

    goto/16 :goto_8

    .line 600
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v21

    goto/16 :goto_5
.end method
