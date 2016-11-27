.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v5, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "InCallService Frame"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v5, Landroid/telecom/Phone;

    new-instance v6, Landroid/telecom/InCallAdapter;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v6, v3}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v5, v6}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    # setter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4, v5}, Landroid/telecom/InCallService;->access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v4, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v4}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->onMergeFailed(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/ParcelableCall;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .local v1, "callId":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "remaining":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .end local v1    # "callId":Ljava/lang/String;
    .end local v2    # "remaining":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/CallAudioState;

    invoke-virtual {v4, v3}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :sswitch_7
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v5}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :sswitch_8
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Phone;->internalOnSsnForwarded()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/Phone;->internalCallRedialChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v4

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/telecom/Phone;->internalUpdateRecordState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    iget-object v3, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;
    invoke-static {v3}, Landroid/telecom/InCallService;->access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Phone;->internalOnStorageFull()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x9 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_b
    .end sparse-switch
.end method
