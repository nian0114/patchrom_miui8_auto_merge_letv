.class Lcom/letv/tracker/agnes/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    }
.end annotation


# static fields
.field private static final CACHE_MSG:Ljava/lang/String; = "Has not connected to service yet, cache it : "

.field private static final REP_FAILED:Ljava/lang/String; = "Report failed "

.field private static final TAG:Ljava/lang/String; = "AgnesClient_ReportManager"

.field protected static isConnected:Z

.field private static sInstance:Lcom/letv/tracker/agnes/ReportManager;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private ext:I

.field private intent:Landroid/content/Intent;

.field private isBind:Z

.field private mContext:Landroid/content/Context;

.field private mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

.field private msgQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/letv/tracker/agnes/ReportManager$SavedMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    .line 62
    new-instance v0, Lcom/letv/tracker/agnes/ReportManager$1;

    invoke-direct {v0, p0}, Lcom/letv/tracker/agnes/ReportManager$1;-><init>(Lcom/letv/tracker/agnes/ReportManager;)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->conn:Landroid/content/ServiceConnection;

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/android/letv/agnes/service/beans/IReportService;)Lcom/android/letv/agnes/service/beans/IReportService;
    .locals 0
    .param p0, "x0"    # Lcom/letv/tracker/agnes/ReportManager;
    .param p1, "x1"    # Lcom/android/letv/agnes/service/beans/IReportService;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/letv/tracker/agnes/ReportManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/tracker/agnes/ReportManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    return p1
.end method

.method static synthetic access$202(Lcom/letv/tracker/agnes/ReportManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/letv/tracker/agnes/ReportManager;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method private connectToService()V
    .locals 5

    .prologue
    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 116
    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.letv.agnes.REPORT_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    const-string v2, "com.letv.agnes"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/letv/tracker/agnes/ReportManager;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iget-boolean v1, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v1, :cond_1

    .line 133
    const-string v1, "AgnesClient_ReportManager"

    const-string v2, ""

    const-string v3, "Cannot bind to agnes service!"

    invoke-static {v1, v2, v3}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AgnesClient_ReportManager"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot connect to service:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v1, "AgnesClient_ReportManager"

    const-string v2, ""

    const-string v3, "mContext is null"

    invoke-static {v1, v2, v3}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getExt()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Agnes;->getConfig()Lcom/letv/tracker/agnes/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getExt()I

    move-result v0

    iput v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    .line 141
    :cond_0
    iget v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    return v0
.end method

.method static getInstance()Lcom/letv/tracker/agnes/ReportManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/letv/tracker/agnes/ReportManager;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/ReportManager;-><init>()V

    sput-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    return-object v0
.end method


# virtual methods
.method public onReport(Lcom/android/letv/agnes/service/beans/IApp;)V
    .locals 8
    .param p1, "app"    # Lcom/android/letv/agnes/service/beans/IApp;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 201
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 205
    :cond_0
    iget-boolean v2, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v2, :cond_1

    .line 206
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, "Report failed "

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 207
    :cond_1
    sget-boolean v2, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v2, :cond_2

    .line 209
    :try_start_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 210
    .local v1, "putS":Z
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has not connected to service yet, cache it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v1    # "putS":Z
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/letv/agnes/service/beans/IReportService;->reportApp(ILcom/android/letv/agnes/service/beans/IApp;)V

    .line 217
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/letv/agnes/service/beans/IApp;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iput-boolean v6, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 221
    sput-boolean v6, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 222
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 223
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0
.end method

.method public onReport(Lcom/android/letv/agnes/service/beans/IEvent;)V
    .locals 8
    .param p1, "eve"    # Lcom/android/letv/agnes/service/beans/IEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 229
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 233
    :cond_0
    iget-boolean v2, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v2, :cond_1

    .line 234
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, "Report failed "

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-boolean v2, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v2, :cond_2

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 238
    .local v1, "putS":Z
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has not connected to service yet, cache it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1    # "putS":Z
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/letv/agnes/service/beans/IReportService;->reportEvent(ILcom/android/letv/agnes/service/beans/IEvent;)V

    .line 245
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/letv/agnes/service/beans/IEvent;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iput-boolean v6, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 249
    sput-boolean v6, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 250
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 251
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0
.end method

.method public onReport(Lcom/android/letv/agnes/service/beans/IMusicPlay;)V
    .locals 8
    .param p1, "musicPlay"    # Lcom/android/letv/agnes/service/beans/IMusicPlay;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 285
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 289
    :cond_0
    iget-boolean v2, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v2, :cond_1

    .line 290
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, "Report failed "

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 291
    :cond_1
    sget-boolean v2, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v2, :cond_2

    .line 293
    :try_start_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 294
    .local v1, "putS":Z
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has not connected to service yet, cache it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "putS":Z
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/letv/agnes/service/beans/IReportService;->reportMusicPlay(ILcom/android/letv/agnes/service/beans/IMusicPlay;)V

    .line 301
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report music play : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    iput-boolean v6, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 305
    sput-boolean v6, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 306
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 307
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0
.end method

.method public onReport(Lcom/android/letv/agnes/service/beans/IVideoPlay;)V
    .locals 8
    .param p1, "videoPlay"    # Lcom/android/letv/agnes/service/beans/IVideoPlay;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 257
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 261
    :cond_0
    iget-boolean v2, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v2, :cond_1

    .line 262
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, "Report failed "

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 263
    :cond_1
    sget-boolean v2, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v2, :cond_2

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 266
    .local v1, "putS":Z
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has not connected to service yet, cache it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v1    # "putS":Z
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/letv/agnes/service/beans/IReportService;->reportVideoPlay(ILcom/android/letv/agnes/service/beans/IVideoPlay;)V

    .line 273
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report video play : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    iput-boolean v6, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 277
    sput-boolean v6, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 278
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 279
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0
.end method

.method public onReport(Lcom/android/letv/agnes/service/beans/IWidget;)V
    .locals 8
    .param p1, "widget"    # Lcom/android/letv/agnes/service/beans/IWidget;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 313
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 317
    :cond_0
    iget-boolean v2, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-nez v2, :cond_1

    .line 318
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, "Report failed "

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 319
    :cond_1
    sget-boolean v2, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v2, :cond_2

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v4, 0x7

    invoke-direct {v3, v4, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 322
    .local v1, "putS":Z
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Has not connected to service yet, cache it : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "putS":Z
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v3

    invoke-interface {v2, v3, p1}, Lcom/android/letv/agnes/service/beans/IReportService;->reportWidget(ILcom/android/letv/agnes/service/beans/IWidget;)V

    .line 329
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report widget : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/letv/agnes/service/beans/IWidget;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "AgnesClient_ReportManager"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    iput-boolean v6, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 333
    sput-boolean v6, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 334
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 335
    iput-object v7, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/android/letv/agnes/service/beans/IReportService;

    goto :goto_0
.end method

.method public proccessMsgInQueue()V
    .locals 9

    .prologue
    .line 397
    :goto_0
    :pswitch_0
    sget-boolean v5, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v5, :cond_0

    .line 398
    const/4 v3, 0x0

    .line 400
    .local v3, "msg":Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    :try_start_0
    iget-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_1
    if-nez v3, :cond_1

    .line 444
    .end local v3    # "msg":Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    :cond_0
    return-void

    .line 401
    .restart local v3    # "msg":Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v5, "AgnesClient_ReportManager"

    const-string v6, ""

    const-string v7, "Failed to get message from cached queue!"

    invoke-static {v5, v6, v7, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 408
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getType()I

    move-result v4

    .line 409
    .local v4, "type":I
    const-string v5, "AgnesClient_ReportManager"

    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Process msg in cached queue "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 419
    :pswitch_1
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/letv/agnes/service/beans/IApp;

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/letv/agnes/service/beans/IEvent;

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IEvent;)V

    goto :goto_0

    .line 425
    :pswitch_3
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/letv/agnes/service/beans/IVideoPlay;

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IVideoPlay;)V

    goto :goto_0

    .line 428
    :pswitch_4
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/letv/agnes/service/beans/IMusicPlay;

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IMusicPlay;)V

    goto :goto_0

    .line 431
    :pswitch_5
    invoke-virtual {v3}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/letv/agnes/service/beans/IWidget;

    invoke-virtual {p0, v5}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IWidget;)V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 112
    return-void
.end method
