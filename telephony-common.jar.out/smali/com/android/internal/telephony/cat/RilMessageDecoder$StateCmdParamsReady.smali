.class Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/State;
.source "RilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/RilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessageDecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/cat/RilMessageDecoder;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/RilMessageDecoder$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/RilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$200(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCaller:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$300(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "StateCmdParamsReady mCaller is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v3

    :cond_0
    const-string v0, "StateCmdParamsReady mCaller isn\'t null and sendCmdForExecution"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mCurrentRilMessage:Lcom/android/internal/telephony/cat/RilMessage;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$700(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendCmdForExecution(Lcom/android/internal/telephony/cat/RilMessage;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$800(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # getter for: Lcom/android/internal/telephony/cat/RilMessageDecoder;->mStateStart:Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;
    invoke-static {v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$900(Lcom/android/internal/telephony/cat/RilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessageDecoder$StateStart;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$1000(Lcom/android/internal/telephony/cat/RilMessageDecoder;Lcom/android/internal/util/IState;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/RilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    # invokes: Lcom/android/internal/telephony/cat/RilMessageDecoder;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->access$1100(Lcom/android/internal/telephony/cat/RilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
