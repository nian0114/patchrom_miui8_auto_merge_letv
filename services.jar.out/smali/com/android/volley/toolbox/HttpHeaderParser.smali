.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 30
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .local v7, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v16, 0x0

    .local v16, "serverDate":J
    const-wide/16 v10, 0x0

    .local v10, "lastModified":J
    const-wide/16 v20, 0x0

    .local v20, "serverExpires":J
    const-wide/16 v22, 0x0

    .local v22, "softExpire":J
    const-wide/16 v4, 0x0

    .local v4, "finalExpire":J
    const-wide/16 v12, 0x0

    .local v12, "maxAge":J
    const-wide/16 v24, 0x0

    .local v24, "staleWhileRevalidate":J
    const/4 v3, 0x0

    .local v3, "hasCacheControl":Z
    const/4 v9, 0x0

    .local v9, "mustRevalidate":Z
    const/16 v18, 0x0

    .local v18, "serverEtag":Ljava/lang/String;
    const-string v27, "Date"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v16

    :cond_0
    const-string v27, "Cache-Control"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_7

    const/4 v3, 0x1

    const-string v27, ","

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .local v26, "tokens":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_7

    aget-object v27, v26, v8

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .local v19, "token":Ljava/lang/String;
    const-string v27, "no-cache"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    const-string v27, "no-store"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    :cond_1
    const/4 v2, 0x0

    .end local v8    # "i":I
    .end local v19    # "token":Ljava/lang/String;
    .end local v26    # "tokens":[Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v8    # "i":I
    .restart local v19    # "token":Ljava/lang/String;
    .restart local v26    # "tokens":[Ljava/lang/String;
    :cond_2
    const-string v27, "max-age="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    const/16 v27, 0x8

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const-string v27, "stale-while-revalidate="

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    const/16 v27, 0x17

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v24

    goto :goto_2

    :cond_5
    const-string v27, "must-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    const-string v27, "proxy-revalidate"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .end local v8    # "i":I
    .end local v19    # "token":Ljava/lang/String;
    .end local v26    # "tokens":[Ljava/lang/String;
    :cond_7
    const-string v27, "Expires"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v20

    :cond_8
    const-string v27, "Last-Modified"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "headerValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "headerValue":Ljava/lang/String;
    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    :cond_9
    const-string v27, "ETag"

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "serverEtag":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .restart local v18    # "serverEtag":Ljava/lang/String;
    if-eqz v3, :cond_c

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v12

    add-long v22, v14, v28

    if-eqz v9, :cond_b

    move-wide/from16 v4, v22

    :cond_a
    :goto_3
    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .local v2, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    move-wide/from16 v0, v22

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    iput-wide v4, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v10, v2, Lcom/android/volley/Cache$Entry;->lastModified:J

    iput-object v7, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto/16 :goto_1

    .end local v2    # "entry":Lcom/android/volley/Cache$Entry;
    :cond_b
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    add-long v4, v22, v28

    goto :goto_3

    :cond_c
    const-wide/16 v28, 0x0

    cmp-long v27, v16, v28

    if-lez v27, :cond_a

    cmp-long v27, v20, v16

    if-ltz v27, :cond_a

    sub-long v28, v20, v16

    add-long v22, v14, v28

    move-wide/from16 v4, v22

    goto :goto_3

    .restart local v8    # "i":I
    .restart local v19    # "token":Ljava/lang/String;
    .restart local v26    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v27

    goto/16 :goto_2

    :catch_1
    move-exception v27

    goto/16 :goto_2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object p1, v2, v4

    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    .end local p1    # "defaultCharset":Ljava/lang/String;
    :cond_0
    return-object p1

    .restart local v1    # "i":I
    .restart local v2    # "pair":[Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    .restart local p1    # "defaultCharset":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
