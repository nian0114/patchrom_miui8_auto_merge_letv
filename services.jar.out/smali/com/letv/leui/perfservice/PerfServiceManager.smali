.class public Lcom/letv/leui/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/letv/leui/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"


# instance fields
.field private fBoostParamVal:[I

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPerf:Landroid/util/BoostFramework;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;

    .line 39
    iput-object p1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 41
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 42
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 43
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/letv/leui/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandler:Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 46
    :cond_0
    const-string v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/letv/leui/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->fBoostParamVal:[I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/perfservice/PerfServiceManager;)Landroid/util/BoostFramework;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/perfservice/PerfServiceManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/perfservice/PerfServiceManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/perfservice/PerfServiceManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->fBoostParamVal:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/perfservice/PerfServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/letv/leui/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 79
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandler:Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 80
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 81
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method public boostEnable(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager;->mHandler:Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 67
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 68
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/letv/leui/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 55
    return-void
.end method
