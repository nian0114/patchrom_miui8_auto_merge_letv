.class public Lcom/android/server/activation/util/DomainEngine;
.super Ljava/lang/Object;
.source "DomainEngine.java"


# static fields
.field private static mHelper:Lcom/android/server/activation/util/DomainEngine;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mDomainResponseListener:Lcom/letv/domain/DomainHelper$ResponseListener;

.field private final mLock:[B

.field private onRequestFinish:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/activation/util/DomainEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/activation/util/DomainEngine;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/activation/util/DomainEngine;->onRequestFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/activation/util/DomainEngine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/util/DomainEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/activation/util/DomainEngine;->writeDomainSync(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/activation/util/DomainEngine;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/activation/util/DomainEngine;

    .prologue
    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    return-object v0
.end method

.method private static analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "respond"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .local v0, "bean":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] analysisRespond e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final fetchDomainLocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine;->mAppContext:Landroid/content/Context;

    if-nez v2, :cond_2

    const-string v2, "[DomainEngine] fetchDomainLocked context is null, why...."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/letv/domain/DomainRequest;

    invoke-direct {v0}, Lcom/letv/domain/DomainRequest;-><init>()V

    .local v0, "domainRequest":Lcom/letv/domain/DomainRequest;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/letv/domain/Service;

    sget-object v3, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/letv/domain/DomainRequest;->setServices([Lcom/letv/domain/Service;)V

    iput-boolean v4, p0, Lcom/android/server/activation/util/DomainEngine;->onRequestFinish:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] fetchDomainLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/activation/util/DomainEngine;->mDomainResponseListener:Lcom/letv/domain/DomainHelper$ResponseListener;

    invoke-static {v2, v0, v3}, Lcom/letv/domain/DomainHelper;->requestDomainAddress(Landroid/content/Context;Lcom/letv/domain/DomainRequest;Lcom/letv/domain/DomainHelper$ResponseListener;)V

    iget-boolean v2, p0, Lcom/android/server/activation/util/DomainEngine;->onRequestFinish:Z

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DomainEngine] fetchDomainLocked, e: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private formatUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    .end local p1    # "domain":Ljava/lang/String;
    .local v0, "domain":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "domain":Ljava/lang/String;
    .restart local p1    # "domain":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .end local p1    # "domain":Ljava/lang/String;
    .restart local v0    # "domain":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/activation/util/DomainEngine;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/activation/util/DomainEngine;->mHelper:Lcom/android/server/activation/util/DomainEngine;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/server/activation/util/DomainEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/activation/util/DomainEngine;->mHelper:Lcom/android/server/activation/util/DomainEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/activation/util/DomainEngine;

    invoke-direct {v0}, Lcom/android/server/activation/util/DomainEngine;-><init>()V

    sput-object v0, Lcom/android/server/activation/util/DomainEngine;->mHelper:Lcom/android/server/activation/util/DomainEngine;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/server/activation/util/DomainEngine;->mHelper:Lcom/android/server/activation/util/DomainEngine;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final writeDomainSync(Ljava/lang/String;)Z
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-class v2, Lcom/android/server/activation/bean/DomainBean;

    invoke-static {p1, v2}, Lcom/android/server/activation/util/DomainEngine;->analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/activation/bean/DomainBean;

    .local v0, "bean":Lcom/android/server/activation/bean/DomainBean;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/activation/bean/DomainBean;->domain:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/activation/bean/DomainBean;->domain:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/activation/util/DomainEngine;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] writeDomainSync, host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    monitor-enter v2

    :try_start_0
    sput-object p1, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DomainEngine] init, domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/activation/util/DomainEngine;->mAppContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/activation/util/DomainEngine$1;

    invoke-direct {v0, p0}, Lcom/android/server/activation/util/DomainEngine$1;-><init>(Lcom/android/server/activation/util/DomainEngine;)V

    iput-object v0, p0, Lcom/android/server/activation/util/DomainEngine;->mDomainResponseListener:Lcom/letv/domain/DomainHelper$ResponseListener;

    goto :goto_0
.end method

.method public final readDomainSync()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/activation/util/DomainEngine;->mLock:[B

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/activation/util/DomainEngine;->fetchDomainLocked()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
