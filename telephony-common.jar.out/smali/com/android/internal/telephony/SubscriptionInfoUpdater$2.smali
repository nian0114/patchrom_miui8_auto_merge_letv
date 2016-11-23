.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, -0x1

    .line 190
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v10, "[Receiver]+"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 196
    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v8

    .line 198
    .local v8, "subIdList":[I
    move-object v1, v8

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v7, v1, v2

    .line 199
    .local v7, "subId":I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubName(I)V
    invoke-static {v9, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "subId":I
    .end local v8    # "subIdList":[I
    :cond_0
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 209
    :cond_2
    const-string v9, "phone"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 211
    .local v6, "slotId":I
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slotId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 212
    if-eq v6, v12, :cond_1

    .line 216
    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "simStatus":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 219
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 220
    const-string v9, "ABSENT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 221
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x4

    invoke-virtual {v10, v11, v6, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 240
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v10, "[Receiver]-"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_4
    const-string v9, "UNKNOWN"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x7

    invoke-virtual {v10, v11, v6, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 224
    :cond_5
    const-string v9, "CARD_IO_ERROR"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 225
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x6

    invoke-virtual {v10, v11, v6, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 227
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_7
    const-string v9, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 230
    const-string v9, "LOCKED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 231
    const-string v9, "reason"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "reason":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x5

    invoke-virtual {v10, v11, v6, v12, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 234
    .end local v4    # "reason":Ljava/lang/String;
    :cond_8
    const-string v9, "LOADED"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 235
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v10, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v6, v12}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 237
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring simStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
