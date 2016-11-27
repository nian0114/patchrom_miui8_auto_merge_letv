.class Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;
.super Landroid/os/Handler;
.source "LetvThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_APP_RESUMED:I = 0x0

.field private static final MESSAGE_TIMER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvThermalSwitchManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/LetvThermalSwitchManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    return-void
.end method

.method private checkIsDTM()Z
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v0}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimer(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 250
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 251
    .local v0, "msg":Landroid/os/Message;
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->removeMessages(I)V

    .line 256
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 174
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 178
    .local v0, "dtm":Z
    const/4 v3, 0x0

    .line 179
    .local v3, "switchToTP":Z
    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch to TP, thermal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dtm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "showToast":Z
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$300(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager;

    move-result-object v5

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$400(Lcom/android/server/am/LetvThermalSwitchManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    const/4 v1, 0x1

    .line 185
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mShouldShowNotice:Z
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$402(Lcom/android/server/am/LetvThermalSwitchManager;Z)Z

    .line 187
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v4, v6, :cond_5

    .line 188
    if-ne v7, v0, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 191
    const/4 v3, 0x1

    .line 206
    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager;->showToastNotice()V
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$500(Lcom/android/server/am/LetvThermalSwitchManager;)V

    .line 209
    :cond_3
    if-eqz v3, :cond_0

    .line 210
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager;->changeToThermalProtection()V
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$600(Lcom/android/server/am/LetvThermalSwitchManager;)V

    .line 211
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$300(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager;

    move-result-object v5

    monitor-enter v5

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 213
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V

    .line 214
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 215
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 193
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    goto :goto_1

    .line 206
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 195
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v4, v6, :cond_2

    .line 196
    if-ne v7, v0, :cond_6

    .line 198
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 199
    const/4 v3, 0x1

    goto :goto_1

    .line 202
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->stopTimer()V

    .line 203
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->startTimer(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 222
    .end local v0    # "dtm":Z
    .end local v1    # "showToast":Z
    .end local v3    # "switchToTP":Z
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->checkIsDTM()Z

    move-result v0

    .line 223
    .restart local v0    # "dtm":Z
    const/4 v2, 0x0

    .line 224
    .local v2, "switchToDTM":Z
    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switch to DTM, thermal state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dtm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$300(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager;

    move-result-object v5

    monitor-enter v5

    .line 227
    :try_start_4
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Disabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    if-ne v4, v6, :cond_7

    .line 228
    if-ne v7, v0, :cond_8

    .line 230
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 237
    :cond_7
    :goto_2
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 238
    if-eqz v2, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$700(Lcom/android/server/am/LetvThermalSwitchManager;)V

    .line 240
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mHost:Lcom/android/server/am/LetvThermalSwitchManager;
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$300(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager;

    move-result-object v5

    monitor-enter v5

    .line 241
    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 242
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 233
    :cond_8
    :try_start_6
    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$ThermalThreadHandler;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v6, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabling:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    .line 234
    const/4 v2, 0x1

    goto :goto_2

    .line 237
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
