.class public Landroid/net/NetSniffer$httpClientSniffer;
.super Ljava/lang/Thread;
.source "NetSniffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetSniffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "httpClientSniffer"
.end annotation


# instance fields
.field private accessRet:Z

.field private httpUrl:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/NetSniffer;


# direct methods
.method private constructor <init>(Landroid/net/NetSniffer;Ljava/lang/String;)V
    .locals 1
    .param p2, "httpurl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Landroid/net/NetSniffer$httpClientSniffer;->this$0:Landroid/net/NetSniffer;

    const-string v0, "httpClientSniffer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z

    iput-object p2, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/NetSniffer;Ljava/lang/String;Landroid/net/NetSniffer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/NetSniffer;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/net/NetSniffer$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/NetSniffer$httpClientSniffer;-><init>(Landroid/net/NetSniffer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessRetsult()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    .local v3, "httpResponseCode":I
    iget-object v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v4, "httpUrl is invalid"

    .local v4, "mHttpClientTestResult":Ljava/lang/String;
    const-string v11, "NetSniffer"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z

    :goto_0
    return-void

    .end local v4    # "mHttpClientTestResult":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    invoke-direct {v5, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v11, 0x1388

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v11, 0x1388

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "requestTimestamp":J
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "responseTimestamp":J
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v11, "NetSniffer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "-------------httpClientTest: ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " headers="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xc8

    if-lt v3, v11, :cond_5

    const/16 v11, 0x18f

    if-gt v3, v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pass ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mHttpClientTestResult":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    const-string v12, "http://www.androidbak.net/generate_204"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0xcc

    if-ne v3, v11, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    :cond_3
    :goto_2
    const-string v11, "NetSniffer"

    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    :cond_4
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v4    # "mHttpClientTestResult":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail (IOException)->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mHttpClientTestResult":Ljava/lang/String;
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mHttpClientTestResult":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "requestTimestamp":J
    .restart local v8    # "responseTimestamp":J
    :cond_5
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail (Code "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/net/NetSniffer$httpClientSniffer;->httpUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mHttpClientTestResult":Ljava/lang/String;
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/net/NetSniffer$httpClientSniffer;->accessRet:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v4    # "mHttpClientTestResult":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "requestTimestamp":J
    .end local v8    # "responseTimestamp":J
    :catchall_0
    move-exception v11

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v11
.end method
