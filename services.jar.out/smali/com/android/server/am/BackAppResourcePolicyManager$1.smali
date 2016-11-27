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
    iput-object p1, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x0

    .local v9, "pendingBroadcastSize":I
    :cond_0
    :goto_0
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_1

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: mPendingBroadcasts.size() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v9, v11, :cond_5

    :cond_2
    sget-object v12, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_3

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LIMIT_APP: before mObject wait, size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", wait."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mObject:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V

    const/4 v9, 0x0

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_4

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_4

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LIMIT_APP: after mObject wait, size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", wake up."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    :try_start_1
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    :cond_5
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v9, v11, :cond_0

    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkNetworkConnect()Z
    invoke-static {v11}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$100(Lcom/android/server/am/BackAppResourcePolicyManager;)Z

    move-result v8

    .local v8, "isConnetNetwork":Z
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_6

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_6

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: check network connect, isConnetNetwork = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v10, 0x0

    .local v10, "r":Lcom/android/server/am/BroadcastRecord;
    const/4 v2, 0x0

    .local v2, "_r":Lcom/android/server/am/BroadcastRecord;
    const/4 v5, 0x0

    .local v5, "google_r":Lcom/android/server/am/BroadcastRecord;
    const/4 v1, 0x0

    .local v1, "_google_r":Lcom/android/server/am/BroadcastRecord;
    if-eqz v8, :cond_13

    sget-object v12, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_2
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_e

    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    move-object v2, v0

    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    move-object v10, v0

    :cond_7
    :goto_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_8

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    const-string v12, "com.google.android"

    const/4 v13, 0x0

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    invoke-static {v11, v10, v12, v13}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$200(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v10}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    :cond_8
    if-eqz v2, :cond_9

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    const-string v12, "com.google.android"

    const/4 v13, 0x0

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkedRemovePendingBrocast(Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;
    invoke-static {v11, v2, v12, v13}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$200(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;Z)Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v2}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    :cond_9
    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->checkOverseasNetworkConnect(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$400(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_a
    const/4 v7, 0x1

    .local v7, "isConnect":Z
    :goto_3
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_b

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_b

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: check oversea status, isConnect = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", google_r = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", _google_r = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v7, :cond_12

    const/4 v6, 0x1

    .local v6, "isAvailable":Z
    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    iget-object v11, v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_10

    const/4 v6, 0x0

    :cond_c
    :goto_4
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v11, :cond_d

    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-eqz v11, :cond_d

    const-string v11, "BackAppResourcePolicyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "LIMIT_APP: get active network info, isAvailable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-eqz v6, :cond_0

    const/4 v11, 0x1

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v11}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v5}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    iget-object v11, p0, Lcom/android/server/am/BackAppResourcePolicyManager$1;->this$0:Lcom/android/server/am/BackAppResourcePolicyManager;

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->syncPendingBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)Z
    invoke-static {v11, v1}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$300(Lcom/android/server/am/BackAppResourcePolicyManager;Lcom/android/server/am/BroadcastRecord;)Z

    goto/16 :goto_0

    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "isAvailable":Z
    .end local v7    # "isConnect":Z
    :cond_e
    :try_start_3
    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    sget-object v11, Lcom/android/server/am/BackAppResourcePolicyManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    move-object v10, v0

    goto/16 :goto_2

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_3

    .restart local v4    # "cm":Landroid/net/ConnectivityManager;
    .restart local v6    # "isAvailable":Z
    .restart local v7    # "isConnect":Z
    :cond_10
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .local v3, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_c

    :cond_11
    const/4 v6, 0x0

    goto :goto_4

    .end local v3    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "cm":Landroid/net/ConnectivityManager;
    .end local v6    # "isAvailable":Z
    :cond_12
    const/4 v11, 0x0

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v11}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    goto/16 :goto_0

    .end local v7    # "isConnect":Z
    :cond_13
    const/4 v11, 0x0

    # invokes: Lcom/android/server/am/BackAppResourcePolicyManager;->setOverseaNetStatus(Z)V
    invoke-static {v11}, Lcom/android/server/am/BackAppResourcePolicyManager;->access$500(Z)V

    goto/16 :goto_0

    .end local v1    # "_google_r":Lcom/android/server/am/BroadcastRecord;
    .end local v2    # "_r":Lcom/android/server/am/BroadcastRecord;
    .end local v5    # "google_r":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "isConnetNetwork":Z
    .end local v10    # "r":Lcom/android/server/am/BroadcastRecord;
    :catch_0
    move-exception v11

    goto/16 :goto_1
.end method
