.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "HttpClientStack.java"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    }
.end annotation


# static fields
.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field protected final mClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private static addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p1, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/volley/Request;->getMethod()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unknown request method."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBody()[B

    move-result-object v2

    .local v2, "postBody":[B
    if-eqz v2, :cond_0

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .local v3, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .local v0, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "postBody":[B
    .end local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v3

    .restart local v2    # "postBody":[B
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "postBody":[B
    :pswitch_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v5, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    goto :goto_0

    .end local v3    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :pswitch_4
    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .local v4, "putRequest":Lorg/apache/http/client/methods/HttpPut;
    const-string v5, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    move-object v3, v4

    goto :goto_0

    .end local v4    # "putRequest":Lorg/apache/http/client/methods/HttpPut;
    :pswitch_5
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v3, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v3, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    .local v1, "patchRequest":Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    const-string v5, "Content-Type"

    invoke-virtual {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    move-object v3, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static getPostParameterPairs(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "key":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static setEntityIfNonEmptyBody(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
    .locals 2
    .param p0, "httpRequest"    # Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1}, Lcom/android/volley/Request;->getBody()[B

    move-result-object v0

    .local v0, "body":[B
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->createHttpRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    .local v1, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static {v1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/volley/toolbox/HttpClientStack;->addHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/HttpClientStack;->onPrepareRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v2

    .local v2, "timeoutMs":I
    const/16 v3, 0x1388

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v3, p0, Lcom/android/volley/toolbox/HttpClientStack;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method
