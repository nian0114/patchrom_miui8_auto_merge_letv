.class Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 691
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 716
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 696
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J
    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$302(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 697
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_rx:J
    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$402(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 698
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J
    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$502(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 699
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->old_KB_tx:J
    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$602(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 700
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_tx:J
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->cur_KB_rx:J
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->formatRealtimeSpeed(Landroid/content/Context;JZ)Ljava/lang/String;
    invoke-static {v3, v4, v5, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "formatespeed":Ljava/lang/String;
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real time onreceive...cur_kb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPDATE_REALTIME_SPEED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v2, "sIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 705
    :cond_0
    const-string v3, "realtime_speed"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService$4;->sendEmptyMessageDelayed(IJ)Z

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->lastNetworkShowSpeedTime:J
    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$802(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    goto/16 :goto_0

    .line 707
    :cond_2
    const-string v3, "realtime_speed"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
