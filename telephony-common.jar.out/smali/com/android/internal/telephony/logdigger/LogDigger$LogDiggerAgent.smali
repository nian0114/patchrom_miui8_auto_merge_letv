.class Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;
.super Landroid/os/Handler;
.source "LogDigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/logdigger/LogDigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogDiggerAgent"
.end annotation


# static fields
.field private static final EVENT_COLLECT_INFO:I = 0x1

.field protected static mHandlerThread:Landroid/os/HandlerThread;

.field protected static sigleLogDigger:Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    return-void
.end method

.method private collectInfoExec(Lcom/android/internal/telephony/logdigger/PhoneModel;)V
    .locals 2
    .param p1, "pModel"    # Lcom/android/internal/telephony/logdigger/PhoneModel;

    .prologue
    .line 82
    :try_start_0
    # getter for: Lcom/android/internal/telephony/logdigger/LogDigger;->mLogName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/logdigger/LogDigger;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/logdigger/MLogCollector;->getInstance(Ljava/lang/String;)Lcom/android/internal/telephony/logdigger/MLogCollector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/logdigger/MLogCollector;->read(Lcom/android/internal/telephony/logdigger/PhoneModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->sigleLogDigger:Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LogDiggerAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->mHandlerThread:Landroid/os/HandlerThread;

    .line 55
    sget-object v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    new-instance v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;

    sget-object v1, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->sigleLogDigger:Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->sigleLogDigger:Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;

    return-object v0
.end method

.method private onCollectInfo(Lcom/android/internal/telephony/logdigger/PhoneModel;)V
    .locals 0
    .param p1, "pModel"    # Lcom/android/internal/telephony/logdigger/PhoneModel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->collectInfoExec(Lcom/android/internal/telephony/logdigger/PhoneModel;)V

    .line 67
    return-void
.end method


# virtual methods
.method public CollectInfo(Lcom/android/internal/telephony/PhoneBase;III)V
    .locals 2
    .param p1, "pb"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "category"    # I
    .param p3, "type"    # I
    .param p4, "cause"    # I

    .prologue
    .line 62
    const/4 v0, 0x1

    new-instance v1, Lcom/android/internal/telephony/logdigger/PhoneModel;

    invoke-direct {v1, p2, p3, p4, p1}, Lcom/android/internal/telephony/logdigger/PhoneModel;-><init>(IIILcom/android/internal/telephony/PhoneBase;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->sendMessage(Landroid/os/Message;)Z

    .line 63
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    const-string v0, "LogDigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-handled message ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/logdigger/PhoneModel;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->onCollectInfo(Lcom/android/internal/telephony/logdigger/PhoneModel;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
