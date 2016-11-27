.class Lcom/android/server/activation/util/DomainEngine$1;
.super Ljava/lang/Object;
.source "DomainEngine.java"

# interfaces
.implements Lcom/letv/domain/DomainHelper$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/activation/util/DomainEngine;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/util/DomainEngine;


# direct methods
.method constructor <init>(Lcom/android/server/activation/util/DomainEngine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(ILjava/lang/String;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DomainEngine] onErrorResponse, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/activation/util/DomainEngine;->onRequestFinish:Z
    invoke-static {v0, v1}, Lcom/android/server/activation/util/DomainEngine;->access$002(Lcom/android/server/activation/util/DomainEngine;Z)Z

    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v0}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v0}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResponse(ILorg/json/JSONObject;)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/activation/util/DomainEngine;->onRequestFinish:Z
    invoke-static {v2, v3}, Lcom/android/server/activation/util/DomainEngine;->access$002(Lcom/android/server/activation/util/DomainEngine;Z)Z

    if-nez p1, :cond_0

    :try_start_0
    sget-object v2, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    invoke-virtual {v2}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "domain":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] onResponse, domain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # invokes: Lcom/android/server/activation/util/DomainEngine;->writeDomainSync(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/activation/util/DomainEngine;->access$100(Lcom/android/server/activation/util/DomainEngine;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    .end local v0    # "domain":Ljava/lang/String;
    :goto_0
    return-void

    .restart local v0    # "domain":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "domain":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] onResponse, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v3}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v4}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DomainEngine] onResponse, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v3

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Lcom/android/server/activation/util/DomainEngine$1;->this$0:Lcom/android/server/activation/util/DomainEngine;

    # getter for: Lcom/android/server/activation/util/DomainEngine;->mLock:[B
    invoke-static {v2}, Lcom/android/server/activation/util/DomainEngine;->access$200(Lcom/android/server/activation/util/DomainEngine;)[B

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v2
.end method
