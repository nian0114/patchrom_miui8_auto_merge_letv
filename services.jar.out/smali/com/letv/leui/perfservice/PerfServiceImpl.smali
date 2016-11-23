.class public Lcom/letv/leui/perfservice/PerfServiceImpl;
.super Lcom/letv/leui/perfservice/IPerfService$Stub;
.source "PerfServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private perfServiceMgr:Lcom/letv/leui/perfservice/IPerfServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/perfservice/IPerfServiceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/letv/leui/perfservice/IPerfServiceManager;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/letv/leui/perfservice/IPerfService$Stub;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/letv/leui/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/letv/leui/perfservice/IPerfServiceManager;

    .line 19
    iput-object p1, p0, Lcom/letv/leui/perfservice/PerfServiceImpl;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "@M_PerfService"

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

    .line 35
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v0, "@M_PerfService"

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

    .line 39
    return-void
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/letv/leui/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/letv/leui/perfservice/IPerfServiceManager;->boostDisable(I)V

    .line 30
    return-void
.end method

.method public boostEnable(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceImpl;->perfServiceMgr:Lcom/letv/leui/perfservice/IPerfServiceManager;

    invoke-interface {v0, p1}, Lcom/letv/leui/perfservice/IPerfServiceManager;->boostEnable(I)V

    .line 25
    return-void
.end method
