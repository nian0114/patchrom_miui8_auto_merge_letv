.class Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I


# instance fields
.field final synthetic this$0:Lcom/letv/leui/perfservice/PerfServiceManager;


# direct methods
.method public constructor <init>(Lcom/letv/leui/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    # getter for: Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;
    invoke-static {v1}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$000(Lcom/letv/leui/perfservice/PerfServiceManager;)Landroid/util/BoostFramework;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    # getter for: Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;
    invoke-static {v1}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$000(Lcom/letv/leui/perfservice/PerfServiceManager;)Landroid/util/BoostFramework;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    # getter for: Lcom/letv/leui/perfservice/PerfServiceManager;->fBoostParamVal:[I
    invoke-static {v3}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$100(Lcom/letv/leui/perfservice/PerfServiceManager;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/letv/leui/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$200(Lcom/letv/leui/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :try_start_1
    const-string v1, "PerfServiceManager"

    const-string v2, "enable mperf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    # getter for: Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;
    invoke-static {v1}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$000(Lcom/letv/leui/perfservice/PerfServiceManager;)Landroid/util/BoostFramework;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    :try_start_2
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/letv/leui/perfservice/PerfServiceManager;

    # getter for: Lcom/letv/leui/perfservice/PerfServiceManager;->mPerf:Landroid/util/BoostFramework;
    invoke-static {v1}, Lcom/letv/leui/perfservice/PerfServiceManager;->access$000(Lcom/letv/leui/perfservice/PerfServiceManager;)Landroid/util/BoostFramework;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "PerfServiceManager"

    const-string v2, "disable perflock exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "PerfServiceManager"

    const-string v2, "disable mperf is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
