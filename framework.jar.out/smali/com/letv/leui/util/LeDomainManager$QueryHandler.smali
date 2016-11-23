.class Lcom/letv/leui/util/LeDomainManager$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeDomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# static fields
.field private static final sToken:I


# instance fields
.field private final mMarker:Ljava/lang/String;

.field private final mTarget:Lcom/letv/leui/util/LeDomainManager$InnerHandler;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/letv/leui/util/LeDomainManager$InnerHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "target"    # Lcom/letv/leui/util/LeDomainManager$InnerHandler;
    .param p3, "marker"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 387
    iput-object p2, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mTarget:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    .line 388
    iput-object p3, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    .line 389
    return-void
.end method


# virtual methods
.method public onDomainReady()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 392
    const-string v0, "LeDomainManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start query region domain view, marker is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v3, Lcom/letv/leui/util/DomainContract$RegionDomain;->CONTENT_URI_VIEW:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "label"

    aput-object v0, v4, v1

    const-string v0, "domain"

    aput-object v0, v4, v6

    const-string v5, "region = ?"

    new-array v6, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    aput-object v0, v6, v1

    move-object v0, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 400
    if-nez p3, :cond_0

    .line 401
    const-string v3, "LeDomainManager"

    const-string v4, "cursor is null when query region domain view"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mTarget:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    iget-object v4, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->sendResult(Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "label":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "domain":Ljava/lang/String;
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 416
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 412
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    sget-boolean v3, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 413
    const-string v3, "LeDomainManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish query ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mTarget:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    iget-object v4, p0, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->mMarker:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->sendResult(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
