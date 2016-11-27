.class Lcom/letv/leui/util/LeDomainManager$3;
.super Ljava/lang/Object;
.source "LeDomainManager.java"

# interfaces
.implements Lcom/letv/leui/util/LeDomainManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeDomainManager;->blockingGetDomain(Lcom/letv/leui/util/LeDomainManager$DomainEngine;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/LeDomainManager;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$r:Lcom/letv/leui/util/LeDomainManager$DomainResult;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/LeDomainManager;Lcom/letv/leui/util/LeDomainManager$DomainResult;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/LeDomainManager$3;->this$0:Lcom/letv/leui/util/LeDomainManager;

    iput-object p2, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$r:Lcom/letv/leui/util/LeDomainManager$DomainResult;

    iput-object p3, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$r:Lcom/letv/leui/util/LeDomainManager$DomainResult;

    iput-object p1, v0, Lcom/letv/leui/util/LeDomainManager$DomainResult;->exception:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$r:Lcom/letv/leui/util/LeDomainManager$DomainResult;

    iput-object p1, v0, Lcom/letv/leui/util/LeDomainManager$DomainResult;->map:Ljava/util/Map;

    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
