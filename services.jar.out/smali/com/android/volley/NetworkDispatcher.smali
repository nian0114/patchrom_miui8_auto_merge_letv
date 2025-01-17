.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .locals 1
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "cache"    # Lcom/android/volley/Cache;
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "startTimeMs":J
    :try_start_0
    iget-object v7, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_1
    const-string v7, "network-queue-take"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "network-discard-cancelled"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "volleyError":Lcom/android/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    invoke-direct {p0, v2, v6}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v6    # "volleyError":Lcom/android/volley/VolleyError;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v7, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v7, :cond_0

    return-void

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V

    iget-object v7, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v7, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string v7, "network-http-complete"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "not-modified"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Unhandled exception %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "volleyError":Lcom/android/volley/VolleyError;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Lcom/android/volley/VolleyError;->setNetworkTimeMs(J)V

    iget-object v7, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v7, v2, v6}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "volleyError":Lcom/android/volley/VolleyError;
    .restart local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_2
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .local v3, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string v7, "network-parse-complete"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v7, v8, v9}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    const-string v7, "network-cache-written"

    invoke-virtual {v2, v7}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    iget-object v7, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v7, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
