.class Lcom/android/server/net/NetworkPolicyManagerService$21;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 3602
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, -0x3e8

    .line 3605
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3606
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mTime:Landroid/util/TrustedTime;
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;

    move-result-object v6

    invoke-interface {v6}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3608
    :cond_0
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3609
    :try_start_0
    const-string v7, "subId"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "subId"

    const-wide/16 v8, -0x3e8

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3610
    .local v2, "subId":J
    :goto_0
    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 3611
    monitor-exit v6

    .line 3629
    :goto_1
    return-void

    .end local v2    # "subId":J
    :cond_1
    move-wide v2, v4

    .line 3609
    goto :goto_0

    .line 3615
    .restart local v2    # "subId":J
    :cond_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_5

    .line 3616
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 3618
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->isTemplateRelevant(JLandroid/net/NetworkTemplate;)Z
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2100(Lcom/android/server/net/NetworkPolicyManagerService;JLandroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3615
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3622
    :cond_4
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->resetBytesLocked(JLandroid/net/NetworkPolicy;)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;JLandroid/net/NetworkPolicy;)V

    .line 3623
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3624
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3625
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    goto :goto_3

    .line 3627
    .end local v0    # "i":I
    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    .end local v2    # "subId":J
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i":I
    .restart local v2    # "subId":J
    :cond_5
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3628
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->reportDatausageMonthlyRunner:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
