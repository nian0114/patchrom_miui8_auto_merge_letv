.class Lcom/letv/leui/util/LeDomainManager$InnerHandler;
.super Landroid/os/Handler;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeDomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# static fields
.field private static final REQUEST:I = 0x64


# instance fields
.field private final mMarkerToLabelAndDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResolverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenToQueryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/util/LeDomainManager$QueryParam;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mResolverWeakReference:Ljava/lang/ref/WeakReference;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    .line 265
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mMarkerToLabelAndDomains:Ljava/util/Map;

    .line 266
    return-void
.end method

.method private getDomainFromCache(Ljava/util/Map;Lcom/letv/leui/util/LeDomainManager$QueryParam;)V
    .locals 4
    .param p2, "p"    # Lcom/letv/leui/util/LeDomainManager$QueryParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/letv/leui/util/LeDomainManager$QueryParam;",
            ")V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "labelToDomains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p2, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mLabels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 292
    iget-object v3, p2, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mCallback:Lcom/letv/leui/util/LeDomainManager$Callback;

    invoke-interface {v3, p1}, Lcom/letv/leui/util/LeDomainManager$Callback;->onSuccess(Ljava/util/Map;)V

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p2, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mLabels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 296
    .local v1, "label":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 299
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 302
    .end local v1    # "label":Ljava/lang/String;
    :cond_2
    iget-object v3, p2, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mCallback:Lcom/letv/leui/util/LeDomainManager$Callback;

    invoke-interface {v3, v2}, Lcom/letv/leui/util/LeDomainManager$Callback;->onSuccess(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mResolverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentResolver;

    .line 309
    .local v11, "resolver":Landroid/content/ContentResolver;
    if-nez v11, :cond_0

    .line 310
    const-string v13, "LeDomainManager"

    const-string v14, "content resolver is null"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    goto :goto_0

    .line 358
    :sswitch_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 359
    .local v12, "token":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    const-string v14, "errorMsg"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "errorMsg":Ljava/lang/String;
    sget-boolean v13, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v13, :cond_1

    .line 361
    const-string v13, "LeDomainManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get failure result from domain server, the token is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", error is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->sendResult(ILjava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v12    # "token":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;

    .line 317
    .local v7, "param":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mMarkerToLabelAndDomains:Ljava/util/Map;

    iget-object v14, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mMarkerToLabelAndDomains:Ljava/util/Map;

    iget-object v14, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->getDomainFromCache(Ljava/util/Map;Lcom/letv/leui/util/LeDomainManager$QueryParam;)V

    goto :goto_0

    .line 322
    :cond_2
    sget-boolean v13, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v13, :cond_3

    .line 323
    const-string v13, "LeDomainManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handle "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/letv/leui/util/LeDomainManager$QueryParam;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    invoke-virtual {v7}, Lcom/letv/leui/util/LeDomainManager$QueryParam;->createToken()I

    move-result v12

    .line 325
    .restart local v12    # "token":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 326
    sget-boolean v13, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 327
    const-string v13, "LeDomainManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is already in flight"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 329
    .local v9, "params":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 332
    .end local v9    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    :cond_5
    sget-boolean v13, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v13, :cond_6

    .line 333
    const-string v13, "LeDomainManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "connect to domain and valid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", the token is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v6, Landroid/os/Messenger;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 340
    .local v6, "messenger":Landroid/os/Messenger;
    new-instance v1, Landroid/os/Bundle;

    const/4 v13, 0x3

    invoke-direct {v1, v13}, Landroid/os/Bundle;-><init>(I)V

    .line 341
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v13, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v13, "token"

    invoke-virtual {v1, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v13, "messenger"

    invoke-virtual {v1, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 344
    sget-object v13, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    iget-object v14, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMethod:Ljava/lang/String;

    iget-object v15, v7, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mMarker:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 345
    .local v2, "call":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 346
    const-string v13, "LeDomainManager"

    const-string v14, "success connected domain server"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :cond_7
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 349
    .local v5, "message":Landroid/os/Message;
    iput v12, v5, Landroid/os/Message;->arg1:I

    .line 350
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    const/4 v13, 0x2

    invoke-direct {v1, v13}, Landroid/os/Bundle;-><init>(I)V

    .line 351
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v13, "errorMsg"

    const-string v14, "failure connected domain server"

    invoke-virtual {v1, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 366
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "call":Landroid/os/Bundle;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "messenger":Landroid/os/Messenger;
    .end local v7    # "param":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    .end local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    .end local v12    # "token":I
    :sswitch_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 367
    .restart local v12    # "token":I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/Bundle;

    const-string v14, "marker"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "marker":Ljava/lang/String;
    sget-boolean v13, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 369
    const-string v13, "LeDomainManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get success result from domain server, the token is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_8
    new-instance v10, Lcom/letv/leui/util/LeDomainManager$QueryHandler;

    move-object/from16 v0, p0

    invoke-direct {v10, v11, v0, v4}, Lcom/letv/leui/util/LeDomainManager$QueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/letv/leui/util/LeDomainManager$InnerHandler;Ljava/lang/String;)V

    .line 371
    .local v10, "queryHandler":Lcom/letv/leui/util/LeDomainManager$QueryHandler;
    invoke-virtual {v10}, Lcom/letv/leui/util/LeDomainManager$QueryHandler;->onDomainReady()V

    goto/16 :goto_0

    .line 314
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_2
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public sendQueryParam(Lcom/letv/leui/util/LeDomainManager$QueryParam;)V
    .locals 2
    .param p1, "param"    # Lcom/letv/leui/util/LeDomainManager$QueryParam;

    .prologue
    const/16 v1, 0x64

    .line 269
    invoke-virtual {p0, v1}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "message":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 271
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    return-void
.end method

.method public sendResult(ILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 285
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/LeDomainManager$QueryParam;

    .line 286
    .local v1, "p":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    iget-object v3, v1, Lcom/letv/leui/util/LeDomainManager$QueryParam;->mCallback:Lcom/letv/leui/util/LeDomainManager$Callback;

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/letv/leui/util/LeDomainManager$Callback;->onFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 288
    .end local v1    # "p":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    :cond_0
    return-void
.end method

.method public sendResult(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "marker"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "labelToDomains":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mMarkerToLabelAndDomains:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->mTokenToQueryParams:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 278
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/util/LeDomainManager$QueryParam;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/util/LeDomainManager$QueryParam;

    .line 279
    .local v1, "p":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    invoke-direct {p0, p2, v1}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->getDomainFromCache(Ljava/util/Map;Lcom/letv/leui/util/LeDomainManager$QueryParam;)V

    goto :goto_0

    .line 281
    .end local v1    # "p":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    :cond_0
    return-void
.end method
