.class public Lcom/android/volley/ExecutorDelivery;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Lcom/android/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/ExecutorDelivery$1;-><init>(Lcom/android/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 4
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
    const-string v1, "post-error"

    invoke-virtual {p1, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .local v0, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    iget-object v1, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/ExecutorDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
