.class final Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivePlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/activation/ActivePlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "letvNetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/ActivePlugInImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;
    .param p2, "x1"    # Lcom/android/server/activation/ActivePlugInImpl$1;

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 817
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->isActiveHalf()Z
    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->access$500(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->unregisterNetReceiver()V
    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->access$600(Lcom/android/server/activation/ActivePlugInImpl;)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # getter for: Lcom/android/server/activation/ActivePlugInImpl;->mNetConnected:Z
    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->access$700(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v1

    .line 825
    .local v1, "oldConnected":Z
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->isNetworkAvailable()Z
    invoke-static {v2}, Lcom/android/server/activation/ActivePlugInImpl;->access$800(Lcom/android/server/activation/ActivePlugInImpl;)Z

    move-result v0

    .line 826
    .local v0, "isNewConnected":Z
    if-eq v1, v0, :cond_0

    .line 830
    iget-object v2, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    iget-object v3, p0, Lcom/android/server/activation/ActivePlugInImpl$letvNetworkReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # ++operator for: Lcom/android/server/activation/ActivePlugInImpl;->mNetChangeCount:I
    invoke-static {v3}, Lcom/android/server/activation/ActivePlugInImpl;->access$904(Lcom/android/server/activation/ActivePlugInImpl;)I

    move-result v3

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->handleConnectState(IZ)V
    invoke-static {v2, v3, v0}, Lcom/android/server/activation/ActivePlugInImpl;->access$1000(Lcom/android/server/activation/ActivePlugInImpl;IZ)V

    goto :goto_0
.end method
