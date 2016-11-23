.class public Lcom/letv/leui/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/letv/leui/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/letv/leui/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    .line 17
    iput v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->inited:I

    .line 19
    iput v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->setTid:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 46
    invoke-direct {p0}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    .line 17
    iput v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->inited:I

    .line 19
    iput v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->setTid:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 40
    iput-object p1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    iget v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 28
    const-string v1, "perfboostservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 30
    invoke-static {v0}, Lcom/letv/leui/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    .line 31
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x1

    iput v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->inited:I

    .line 37
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 34
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] "

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

    .line 73
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PerfServiceWrapper] ERR: "

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

    .line 77
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 63
    :try_start_0
    invoke-direct {p0}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->init()V

    .line 64
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/letv/leui/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->init()V

    .line 53
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/letv/leui/perfservice/PerfServiceWrapper;->sService:Lcom/letv/leui/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/letv/leui/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
