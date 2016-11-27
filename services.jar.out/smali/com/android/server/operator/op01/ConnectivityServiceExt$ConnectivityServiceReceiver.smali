.class Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/operator/op01/ConnectivityServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;


# direct methods
.method private constructor <init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;Lcom/android/server/operator/op01/ConnectivityServiceExt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/operator/op01/ConnectivityServiceExt;
    .param p2, "x1"    # Lcom/android/server/operator/op01/ConnectivityServiceExt$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;-><init>(Lcom/android/server/operator/op01/ConnectivityServiceExt;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v1, "@M_CDS/ConnectivityServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received intent ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # getter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$100(Lcom/android/server/operator/op01/ConnectivityServiceExt;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    const-string v1, "com.android.internal.ACTION_SET_PACKETS_FLUSH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mIsRebooting:Z
    invoke-static {v1, v3}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$202(Lcom/android/server/operator/op01/ConnectivityServiceExt;Z)Z

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/operator/op01/ConnectivityServiceExt;->mIsRebooting:Z
    invoke-static {v1, v3}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$202(Lcom/android/server/operator/op01/ConnectivityServiceExt;Z)Z

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/operator/op01/ConnectivityServiceExt$ConnectivityServiceReceiver;->this$0:Lcom/android/server/operator/op01/ConnectivityServiceExt;

    # invokes: Lcom/android/server/operator/op01/ConnectivityServiceExt;->onSubInfoUpdated()V
    invoke-static {v1}, Lcom/android/server/operator/op01/ConnectivityServiceExt;->access$300(Lcom/android/server/operator/op01/ConnectivityServiceExt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
