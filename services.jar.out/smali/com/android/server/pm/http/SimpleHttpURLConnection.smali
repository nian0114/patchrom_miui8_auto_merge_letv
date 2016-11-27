.class public Lcom/android/server/pm/http/SimpleHttpURLConnection;
.super Ljava/lang/Object;
.source "SimpleHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;
    }
.end annotation


# static fields
.field private static final CONNECT_HTTP_TIME_OUT:I = 0x0

.field public static final COOKIE_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final READ_HTTP_TIME_OUT:I = 0x1770

.field public static final USER_AGENT_KEY:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final RETRY_COUNT:I

.field private mRequestHeaders:Ljava/util/Map;
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

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/pm/http/SimpleHttpURLConnection$1;

    invoke-direct {v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->RETRY_COUNT:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "ua":Ljava/lang/String;
    const-string v1, "User-Agent"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ua"    # Ljava/lang/String;
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    # invokes: Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isHttpsRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    const-string v0, "https"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->createConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->isHttpsRequest(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->trustAllHosts()V

    goto :goto_0
.end method

.method private performRequest(Lcom/android/server/pm/http/UrlFactory;Ljava/util/Map;Z)Lcom/android/server/pm/http/Response;
    .locals 11
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .param p3, "lastTry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/http/UrlFactory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/server/pm/http/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x195

    const/16 v9, 0x193

    if-nez p1, :cond_0

    const-string v8, "Area"

    const-string v9, "[HttpClient] http request error : params is null...."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/pm/http/exception/MethodRequestException;

    const-string v9, "params is null.."

    invoke-direct {v8, v9}, Lcom/android/server/pm/http/exception/MethodRequestException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/http/UrlFactory;->getUrl()Ljava/lang/String;

    move-result-object v7

    .local v7, "url":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v4, "parsedUrl":Ljava/net/URL;
    invoke-direct {p0, v4}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v8, Lcom/android/server/pm/http/SimpleHttpURLConnection;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v8}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {p1}, Lcom/android/server/pm/http/UrlFactory;->getHeaders()Ljava/util/Map;

    move-result-object v8

    invoke-direct {p0, v0, p2, v8}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setRequestHttpHead(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setConnectionParametersForRequest(Ljavax/net/ssl/HttpsURLConnection;Lcom/android/server/pm/http/UrlFactory;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    .local v5, "responseCode":I
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v2, "UTF-8"

    .local v2, "encode":Ljava/lang/String;
    :goto_0
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_2

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .local v6, "stream":Ljava/io/InputStream;
    new-instance v8, Lcom/android/server/pm/http/Response;

    invoke-direct {v8, v5, v6, v2}, Lcom/android/server/pm/http/Response;-><init>(ILjava/io/InputStream;Ljava/lang/String;)V

    .end local v6    # "stream":Ljava/io/InputStream;
    :goto_1
    return-object v8

    .end local v2    # "encode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "encode":Ljava/lang/String;
    :cond_2
    if-ne v5, v9, :cond_3

    new-instance v8, Lcom/android/server/pm/http/exception/SignatureException;

    const-string v9, "signature error"

    const/16 v10, 0x193

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/http/exception/SignatureException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "encode":Ljava/lang/String;
    .end local v4    # "parsedUrl":Ljava/net/URL;
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    :try_start_1
    const-string v8, "Area"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HttpClient] catch NetworkRequestException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/pm/http/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    :catchall_0
    move-exception v8

    throw v8

    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "encode":Ljava/lang/String;
    .restart local v4    # "parsedUrl":Ljava/net/URL;
    .restart local v5    # "responseCode":I
    :cond_3
    if-ne v5, v10, :cond_4

    :try_start_2
    new-instance v8, Lcom/android/server/pm/http/exception/MethodRequestException;

    const-string v9, "http method error"

    const/16 v10, 0x195

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/http/exception/MethodRequestException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_2
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "encode":Ljava/lang/String;
    .end local v4    # "parsedUrl":Ljava/net/URL;
    .end local v5    # "responseCode":I
    :catch_1
    move-exception v1

    .local v1, "e":Lcom/android/server/pm/http/exception/SignatureException;
    :try_start_3
    const-string v8, "Area"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HttpClient] catch SignatureException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/pm/http/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "e":Lcom/android/server/pm/http/exception/SignatureException;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "encode":Ljava/lang/String;
    .restart local v4    # "parsedUrl":Ljava/net/URL;
    .restart local v5    # "responseCode":I
    :cond_4
    if-eqz p3, :cond_5

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "errMsg":Ljava/lang/String;
    new-instance v8, Lcom/android/server/pm/http/exception/NetworkRequestException;

    invoke-direct {v8, v3, v5}, Lcom/android/server/pm/http/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_4
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "encode":Ljava/lang/String;
    .end local v3    # "errMsg":Ljava/lang/String;
    .end local v4    # "parsedUrl":Ljava/net/URL;
    .end local v5    # "responseCode":I
    :catch_2
    move-exception v1

    .local v1, "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    :try_start_5
    const-string v8, "Area"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HttpClient] catch MethodRequestException: ."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/pm/http/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .end local v1    # "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Area"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HttpClient] catch other Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/pm/http/exception/NetworkRequestException;

    const-string v9, "http Exception"

    const/16 v10, 0x6f

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/http/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v2    # "encode":Ljava/lang/String;
    .restart local v4    # "parsedUrl":Ljava/net/URL;
    .restart local v5    # "responseCode":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private setConnectionParametersForRequest(Ljavax/net/ssl/HttpsURLConnection;Lcom/android/server/pm/http/UrlFactory;)V
    .locals 3
    .param p1, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p2, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Lcom/android/server/pm/http/UrlFactory;->gethttpType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown method type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/http/UrlFactory;->gethttpType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequestHttpHead(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "signatureHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

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
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private static trustAllHosts()V
    .locals 6

    .prologue
    const-string v0, "trustAllHosts"

    .local v0, "TAG":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/pm/http/SimpleHttpURLConnection$2;

    invoke-direct {v5}, Lcom/android/server/pm/http/SimpleHttpURLConnection$2;-><init>()V

    aput-object v5, v3, v4

    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addX509TrustManager(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 8
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected createConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

.method public exec(Lcom/android/server/pm/http/UrlFactory;)Lcom/android/server/pm/http/Response;
    .locals 1
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->exec(Lcom/android/server/pm/http/UrlFactory;I)Lcom/android/server/pm/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public exec(Lcom/android/server/pm/http/UrlFactory;I)Lcom/android/server/pm/http/Response;
    .locals 4
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_1

    const-string v2, "Area"

    const-string v3, "[HttpClient] execRequest params is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "response":Lcom/android/server/pm/http/Response;
    const/4 v1, 0x0

    .local v1, "retriedCount":I
    :goto_0
    if-gt v1, p2, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->performRequest(Lcom/android/server/pm/http/UrlFactory;Ljava/util/Map;Z)Lcom/android/server/pm/http/Response;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
