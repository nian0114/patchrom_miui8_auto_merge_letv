.class public Lcom/letv/leui/util/LeDomainManager;
.super Ljava/lang/Object;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeDomainManager$QueryHandler;,
        Lcom/letv/leui/util/LeDomainManager$InnerHandler;,
        Lcom/letv/leui/util/LeDomainManager$Callback;,
        Lcom/letv/leui/util/LeDomainManager$QueryParam;,
        Lcom/letv/leui/util/LeDomainManager$DomainResult;,
        Lcom/letv/leui/util/LeDomainManager$DomainEngine;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LeDomainManager"


# instance fields
.field private final mInnerHandler:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

.field private final mPid:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "LeDomainManager"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/util/LeDomainManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/util/LeDomainManager;->mPid:I

    new-instance v0, Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    invoke-direct {v0, p1}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/letv/leui/util/LeDomainManager;->mInnerHandler:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    return-void
.end method

.method private blockingGetDomain(Lcom/letv/leui/util/LeDomainManager$DomainEngine;)Ljava/util/Map;
    .locals 4
    .param p1, "engine"    # Lcom/letv/leui/util/LeDomainManager$DomainEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/util/LeDomainManager$DomainEngine;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/letv/leui/util/LeDomainManager;->warnInUiThread()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/letv/leui/util/LeDomainManager$DomainResult;

    invoke-direct {v1, p0}, Lcom/letv/leui/util/LeDomainManager$DomainResult;-><init>(Lcom/letv/leui/util/LeDomainManager;)V

    .local v1, "r":Lcom/letv/leui/util/LeDomainManager$DomainResult;
    new-instance v2, Lcom/letv/leui/util/LeDomainManager$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/letv/leui/util/LeDomainManager$3;-><init>(Lcom/letv/leui/util/LeDomainManager;Lcom/letv/leui/util/LeDomainManager$DomainResult;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {p1, v2}, Lcom/letv/leui/util/LeDomainManager$DomainEngine;->performRequest(Lcom/letv/leui/util/LeDomainManager$Callback;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    invoke-virtual {v1}, Lcom/letv/leui/util/LeDomainManager$DomainResult;->hasException()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    iget-object v3, v1, Lcom/letv/leui/util/LeDomainManager$DomainResult;->exception:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lcom/letv/leui/util/LeDomainManager$DomainResult;->map:Ljava/util/Map;

    return-object v2
.end method

.method private varargs connectDomainServerIfNeed(Ljava/lang/String;Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "marker"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/letv/leui/util/LeDomainManager$Callback;
    .param p4, "labels"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/letv/leui/util/LeDomainManager$QueryParam;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/util/LeDomainManager$QueryParam;-><init>(Lcom/letv/leui/util/LeDomainManager;Ljava/lang/String;Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V

    .local v0, "param":Lcom/letv/leui/util/LeDomainManager$QueryParam;
    iget-object v1, p0, Lcom/letv/leui/util/LeDomainManager;->mInnerHandler:Lcom/letv/leui/util/LeDomainManager$InnerHandler;

    invoke-virtual {v1, v0}, Lcom/letv/leui/util/LeDomainManager$InnerHandler;->sendQueryParam(Lcom/letv/leui/util/LeDomainManager$QueryParam;)V

    return-void
.end method

.method private getDomainByLabel(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "labels"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/letv/leui/util/DomainContract$RegionDomain;->CONTENT_URI_VIEW:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "label"

    aput-object v3, v2, v12

    const-string v3, "domain"

    aput-object v3, v2, v4

    const-string v3, "region = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "label":Ljava/lang/String;
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "domain":Ljava/lang/String;
    invoke-interface {v11, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v7    # "domain":Ljava/lang/String;
    .end local v10    # "label":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    array-length v0, p2

    new-array v8, v0, [Ljava/lang/String;

    .local v8, "domains":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_1

    aget-object v0, p2, v9

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-object v8
.end method

.method private getLabels(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/letv/leui/util/LeDomainManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/letv/leui/util/DomainContract$RegionDomain;->CONTENT_URI_VIEW:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "label"

    aput-object v3, v2, v8

    const-string v3, "region = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static warnInUiThread()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call this method on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs blockingGetGroupDomain(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "labels"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/letv/leui/util/LeDomainManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/util/LeDomainManager$2;-><init>(Lcom/letv/leui/util/LeDomainManager;Ljava/lang/String;[Ljava/lang/String;)V

    .local v0, "engine":Lcom/letv/leui/util/LeDomainManager$DomainEngine;
    invoke-direct {p0, v0}, Lcom/letv/leui/util/LeDomainManager;->blockingGetDomain(Lcom/letv/leui/util/LeDomainManager$DomainEngine;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public varargs blockingGetRegionDomain(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "labels"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/letv/leui/util/LeDomainManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/util/LeDomainManager$1;-><init>(Lcom/letv/leui/util/LeDomainManager;Ljava/lang/String;[Ljava/lang/String;)V

    .local v0, "engine":Lcom/letv/leui/util/LeDomainManager$DomainEngine;
    invoke-direct {p0, v0}, Lcom/letv/leui/util/LeDomainManager;->blockingGetDomain(Lcom/letv/leui/util/LeDomainManager$DomainEngine;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentRegion()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/util/LeDomainManager;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "leui_country_area_region_settings"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "regionValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/letv/leui/util/LeSystemProperties;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDomain(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "labels"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/util/LeDomainManager;->getCurrentRegion()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeDomainManager;->getLabels(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v3, p0, Lcom/letv/leui/util/LeDomainManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "trigger"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v3, "LeDomainManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/util/LeDomainManager;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/letv/leui/util/LeDomainManager;->getDomainByLabel(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "domains":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_3

    sget-boolean v3, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "LeDomainManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget-object v3, p2, v1

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public varargs getDomainByGroup(Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V
    .locals 3
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/letv/leui/util/LeDomainManager$Callback;
    .param p3, "labels"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "imei must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t valid, please checkout again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-boolean v0, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LeDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request domain by group, imei ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "group"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/letv/leui/util/LeDomainManager;->connectDomainServerIfNeed(Ljava/lang/String;Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs getDomainByRegion(Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V
    .locals 3
    .param p1, "region"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/letv/leui/util/LeDomainManager$Callback;
    .param p3, "labels"    # [Ljava/lang/String;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/util/LeDomainManager;->getCurrentRegion()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-boolean v0, Lcom/letv/leui/util/LeDomainManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LeDomainManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request domain by region, region ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "region"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/letv/leui/util/LeDomainManager;->connectDomainServerIfNeed(Ljava/lang/String;Ljava/lang/String;Lcom/letv/leui/util/LeDomainManager$Callback;[Ljava/lang/String;)V

    return-void
.end method
