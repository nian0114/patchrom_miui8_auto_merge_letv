.class Lcom/android/server/net/NetworkStatsService$1;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 478
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUidFreeComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # getter for: Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    monitor-exit v1

    return-object v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 623
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 624
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 625
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 626
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 517
    new-instance v8, Landroid/net/NetworkStats;

    sub-long v0, p4, p2

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 518
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 520
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    return-object v8

    .line 522
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getHistoryForFreeflow(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForFreeflow(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 601
    if-nez p4, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 604
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 613
    if-nez p4, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    goto :goto_0
.end method

.method public getRelevantUids()[I
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v10

    .line 557
    .local v10, "stats":Landroid/net/NetworkStats;
    const/4 v13, 0x0

    .line 558
    .local v13, "uidentry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .local v8, "ind":I
    :goto_0
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 559
    invoke-virtual {v10, v8, v13}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v13

    .line 560
    iget v0, v13, Landroid/net/NetworkStats$Entry;->uid:I

    if-nez v0, :cond_7

    .line 564
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidFreeComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v11

    .line 565
    .local v11, "statsFree":Landroid/net/NetworkStats;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 566
    new-instance v9, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 567
    .local v9, "result":Landroid/net/NetworkStats;
    const/4 v6, 0x0

    .line 568
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 569
    invoke-virtual {v11, v7, v6}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 570
    iget v0, v6, Landroid/net/NetworkStats$Entry;->uid:I

    if-nez v0, :cond_8

    .line 571
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 572
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 574
    :cond_1
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 575
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 577
    :cond_2
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 578
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 580
    :cond_3
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 581
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 583
    :cond_4
    invoke-virtual {v9, v6}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 584
    invoke-virtual {v10, v9}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 589
    .end local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v7    # "i":I
    .end local v9    # "result":Landroid/net/NetworkStats;
    :cond_5
    if-eqz p6, :cond_6

    .line 590
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$1;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v12

    .line 592
    .local v12, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v10, v12}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 594
    .end local v12    # "tagStats":Landroid/net/NetworkStats;
    :cond_6
    return-object v10

    .line 558
    .end local v11    # "statsFree":Landroid/net/NetworkStats;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 568
    .restart local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v7    # "i":I
    .restart local v9    # "result":Landroid/net/NetworkStats;
    .restart local v11    # "statsFree":Landroid/net/NetworkStats;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public getSummaryForFreeflow(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForFreeflow(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$1;->mCallingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$1;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    # invokes: Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
