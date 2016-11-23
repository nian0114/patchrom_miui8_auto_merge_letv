.class Lcom/android/server/am/BackAppResourcePolicyManager$1;
.super Ljava/lang/Thread;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BackAppResourcePolicyManager;->handlePendingBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BackAppResourcePolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 594
    const/4 v7, 0x0

    .line 596
    .local v7, "pendingBroadcastSize":I
    :cond_0
    :goto_0
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v10, :cond_1

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v10, :cond_2

    :cond_1
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LIMIT_APP: mPendingBroadcasts.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_2
    sget-object v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v7, v10, :cond_4

    .line 598
    :cond_3
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    monitor-enter v11

    .line 600
    :try_start_0
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: before mObject wait, size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wait."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V

    .line 602
    const/4 v7, 0x0

    .line 603
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: after mObject wait, size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", wake up."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :goto_1
    :try_start_1
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 607
    :cond_4
    sget-object v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v7, v10, :cond_0

    .line 608
    sget-object v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 609
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkNetworkConnect()Z
    invoke-static {v10}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$100(Lcom/android/server/am/BackAppResourcePolicyManager;)Z

    move-result v6

    .line 610
    .local v6, "isConnetNetwork":Z
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v10, :cond_6

    :cond_5
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LIMIT_APP: check network connect, isConnetNetwork = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/BackAppResourcePolicyManager;->removePendingBroadcasts()Ljava/util/ArrayList;

    move-result-object v9

    .line 613
    .local v9, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v2, "google_rs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    if-eqz v6, :cond_10

    .line 615
    if-eqz v9, :cond_7

    .line 616
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/BroadcastRecord;

    .line 617
    .local v8, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    const-string v11, "com.google.android"

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    invoke-static {v10, v8, v11, v14}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$200(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v10, v8}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    goto :goto_2

    .line 622
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Ljava/util/ArrayList;)Z
    invoke-static {v10, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/util/ArrayList;)Z

    move-result v5

    .line 623
    .local v5, "isConnect":Z
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v10, :cond_8

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v10, :cond_9

    :cond_8
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LIMIT_APP: check oversea status, isConnect = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", google_rs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_9
    if-eqz v5, :cond_f

    .line 625
    const/4 v4, 0x1

    .line 626
    .local v4, "isAvailable":Z
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    iget-object v10, v10, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 627
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_d

    .line 628
    const/4 v4, 0x0

    .line 635
    :cond_a
    :goto_3
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-nez v10, :cond_b

    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v10, :cond_c

    :cond_b
    const-string v10, "BackAppResourcePolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LIMIT_APP: get active network info, isAvailable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_c
    if-eqz v4, :cond_0

    .line 637
    const/4 v10, 0x1

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v10}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    .line 638
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcasts(Ljava/util/ArrayList;)V
    invoke-static {v10, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$600(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 630
    :cond_d
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 631
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-nez v10, :cond_a

    .line 632
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 641
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v4    # "isAvailable":Z
    :cond_f
    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v14}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    goto/16 :goto_0

    .line 645
    .end local v5    # "isConnect":Z
    :cond_10
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->clearPendingBroadcast()V
    invoke-static {v10}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$700(Lcom/android/server/am/BackAppResourcePolicyManager;)V

    .line 646
    iget-object v10, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcasts(Ljava/util/ArrayList;)V
    invoke-static {v10, v9}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$600(Lcom/android/server/am/BackAppResourcePolicyManager;Ljava/util/ArrayList;)V

    .line 647
    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v14}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    goto/16 :goto_0

    .line 604
    .end local v2    # "google_rs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v6    # "isConnetNetwork":Z
    .end local v9    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method
