.class Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectivityChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 171
    const-string v7, "networkType"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 175
    .local v4, "networkType":I
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 177
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 178
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 180
    .local v6, "userid":I
    if-nez v1, :cond_1

    .line 181
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v7, v9}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 182
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v7, v9}, Lcom/android/server/job/controllers/ConnectivityController;->access$102(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 184
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateJobBlockStatus(ILandroid/content/Context;)Z
    invoke-static {v7, v11, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/content/Context;)Z

    .line 186
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V
    invoke-static {v7, v6}, Lcom/android/server/job/controllers/ConnectivityController;->access$300(Lcom/android/server/job/controllers/ConnectivityController;I)V

    .line 214
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v4    # "networkType":I
    .end local v6    # "userid":I
    :cond_0
    :goto_0
    const-string v7, "JobScheduler.Conn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive action in intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", connect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v9}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", unmeter:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v9}, Lcom/android/server/job/controllers/ConnectivityController;->access$000(Lcom/android/server/job/controllers/ConnectivityController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 187
    .restart local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v2    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v4    # "networkType":I
    .restart local v6    # "userid":I
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v4, :cond_0

    .line 188
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v7, v9}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 189
    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-string v7, "noConnectivity"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v8

    :goto_1
    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v10, v7}, Lcom/android/server/job/controllers/ConnectivityController;->access$102(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 191
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # getter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkConnected:Z
    invoke-static {v7}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 192
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v10

    if-nez v10, :cond_4

    :goto_2
    # setter for: Lcom/android/server/job/controllers/ConnectivityController;->mNetworkUnmetered:Z
    invoke-static {v7, v8}, Lcom/android/server/job/controllers/ConnectivityController;->access$002(Lcom/android/server/job/controllers/ConnectivityController;Z)Z

    .line 195
    :cond_2
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateJobBlockStatus(ILandroid/content/Context;)Z
    invoke-static {v7, v11, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/content/Context;)Z

    .line 197
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobs(I)V
    invoke-static {v7, v6}, Lcom/android/server/job/controllers/ConnectivityController;->access$300(Lcom/android/server/job/controllers/ConnectivityController;I)V

    goto :goto_0

    :cond_3
    move v7, v9

    .line 189
    goto :goto_1

    :cond_4
    move v8, v9

    .line 192
    goto :goto_2

    .line 200
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v4    # "networkType":I
    .end local v6    # "userid":I
    :cond_5
    const-string v7, "NETWORKPOLICY_UID_RULE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    const-string v7, "uid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 202
    .local v5, "uid":I
    const-string v7, "check"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 203
    .local v3, "isBlocked":Z
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 204
    .restart local v6    # "userid":I
    const-string v7, "JobScheduler.Conn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "receive action , get uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", network blocked :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->updateJobBlockStatus(ILandroid/content/Context;)Z
    invoke-static {v7, v5, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 206
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$ConnectivityChangedReceiver;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v7, v7, Lcom/android/server/job/controllers/ConnectivityController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v7}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto/16 :goto_0
.end method
