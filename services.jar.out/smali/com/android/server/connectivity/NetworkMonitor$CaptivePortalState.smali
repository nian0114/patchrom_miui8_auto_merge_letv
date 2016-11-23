.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v1

    if-nez v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "android.net.netmon.launchCaptivePortalApp"

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    const v6, 0x8200b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1002(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200a

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 598
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200c

    const/4 v3, 0x0

    const-wide/32 v4, 0x927c0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200c

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 607
    return-void
.end method
