.class Lcom/android/server/net/NetworkPolicyManagerService$19$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$19;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$19;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyLocked()V
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesLocked()V
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$19;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
