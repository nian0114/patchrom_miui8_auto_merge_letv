.class public Lcom/android/server/activation/http/RequestParam;
.super Ljava/lang/Object;
.source "RequestParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/activation/http/RequestParam$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CONNECT_HTTP_TIME_OUT:I = 0x2710

.field private static final READ_HTTP_TIME_OUT:I = 0x1770

.field public static final RETRY_COUNT:I


# instance fields
.field private baseUrl:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isJson:Z

.field public jsonBody:Ljava/lang/String;

.field private mConnectTime:I

.field private mContentType:Ljava/lang/String;

.field public mMethod:I

.field private mReTryTime:I

.field private mReadTime:I

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;
    .param p3, "method"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/activation/http/RequestParam;->mConnectTime:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/android/server/activation/http/RequestParam;->mReadTime:I

    iput v1, p0, Lcom/android/server/activation/http/RequestParam;->mReTryTime:I

    iput p3, p0, Lcom/android/server/activation/http/RequestParam;->mMethod:I

    iput-object p2, p0, Lcom/android/server/activation/http/RequestParam;->jsonBody:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/activation/http/RequestParam;->isJson:Z

    iput v1, p0, Lcom/android/server/activation/http/RequestParam;->mReTryTime:I

    invoke-direct {p0, p1, p3}, Lcom/android/server/activation/http/RequestParam;->formatUrl(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/server/activation/http/RequestParam;->isJson:Z

    if-eqz v0, :cond_0

    const-string v0, "application/x-javascript->json"

    iput-object v0, p0, Lcom/android/server/activation/http/RequestParam;->mContentType:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/activation/http/RequestParam;->getHttpTypeStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p4, v2, v3, p2}, Lcom/android/server/activation/util/SignatureUtils;->getSignature(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    return-void

    :cond_0
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/android/server/activation/http/RequestParam;->mContentType:Ljava/lang/String;

    goto :goto_0
.end method

.method private encodeJsonParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/activation/http/RequestParam;->jsonBody:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/server/activation/util/SignatureUtils;->encodeJson(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/activation/http/RequestParam;->jsonBody:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 7
    .param p2, "paramsEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private formatUrl(Ljava/lang/String;I)V
    .locals 8
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "method"    # I

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/activation/http/RequestParam;->baseUrl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/activation/http/RequestParam;->baseUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "first":Z
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v6, 0x3

    if-ne p2, v6, :cond_3

    :cond_2
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_5

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/activation/http/RequestParam;->baseUrl:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public encodeJson()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v0, p0, Lcom/android/server/activation/http/RequestParam;->jsonBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/server/activation/util/SignatureUtils;->encodeJson(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/activation/http/RequestParam;->jsonBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encodeParams()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-object v4

    :cond_1
    const/4 v1, 0x1

    .local v1, "first":Z
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    iget v6, p0, Lcom/android/server/activation/http/RequestParam;->mMethod:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/server/activation/http/RequestParam;->mMethod:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    :cond_2
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_5

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v0, p0, Lcom/android/server/activation/http/RequestParam;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()[B
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    invoke-virtual {p0}, Lcom/android/server/activation/http/RequestParam;->getParams()Ljava/util/Map;

    move-result-object v0

    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/android/server/activation/http/RequestParam;->isJson:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/activation/http/RequestParam;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/activation/http/RequestParam;->encodeJsonParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/activation/http/RequestParam;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/activation/http/RequestParam;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    const-string v0, "%s;charset=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/activation/http/RequestParam;->mContentType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/activation/http/RequestParam;->getParamsEncoding()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectTimeoutms()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget v0, p0, Lcom/android/server/activation/http/RequestParam;->mConnectTime:I

    return v0
.end method

.method public getHttpTypeStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "method"    # I

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    packed-switch p1, :pswitch_data_0

    const-string v0, "GET"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "GET"

    goto :goto_0

    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget v0, p0, Lcom/android/server/activation/http/RequestParam;->mMethod:I

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v0, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public final getReadTimeoutms()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget v0, p0, Lcom/android/server/activation/http/RequestParam;->mReadTime:I

    return v0
.end method

.method public final getRetryTime()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget v0, p0, Lcom/android/server/activation/http/RequestParam;->mReTryTime:I

    return v0
.end method

.method protected getSignatureHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v0, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final setRetryTime(I)V
    .locals 0
    .param p1, "retryTime"    # I

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iput p1, p0, Lcom/android/server/activation/http/RequestParam;->mReTryTime:I

    return-void
.end method

.method public final toJsonStr()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<TP;>;"
    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, ""

    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/activation/http/RequestParam;->mMethod:I

    invoke-virtual {p0, v4}, Lcom/android/server/activation/http/RequestParam;->getHttpTypeStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .local v0, "first":Z
    const-string v4, " [PARAM] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->params:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_5

    const-string v4, " [HEAD] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "key":Ljava/lang/String;
    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/activation/http/RequestParam;->headers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
