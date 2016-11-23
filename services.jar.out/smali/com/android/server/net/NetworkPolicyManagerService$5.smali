.class Lcom/android/server/net/NetworkPolicyManagerService$5;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 726
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "realtime_speed"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 727
    .local v1, "newvalue":I
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real time speed control change..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 729
    .local v0, "data":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 731
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    const-string v2, "switch"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 739
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string v3, "1.3.3.1"

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->reportAgnes(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v2, v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 740
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 741
    return-void

    .line 733
    :cond_1
    if-ne v6, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->isNetworkAviailable(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 736
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$5;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 737
    :cond_2
    const-string v2, "switch"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
