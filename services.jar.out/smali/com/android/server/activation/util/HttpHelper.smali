.class public Lcom/android/server/activation/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/activation/util/HttpHelper$LeuiUserAgent;
    }
.end annotation


# static fields
.field public static final ACT_PATH:Ljava/lang/String; = "/manager/api/v1/events"

.field public static HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, ""

    sput-object v0, Lcom/android/server/activation/util/HttpHelper;->HOST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method private static checkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/android/server/activation/util/DomainEngine;->getInstance()Lcom/android/server/activation/util/DomainEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/activation/util/DomainEngine;->readDomainSync()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "mHost":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 39
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    # invokes: Lcom/android/server/activation/util/HttpHelper$LeuiUserAgent;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/activation/util/HttpHelper$LeuiUserAgent;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static letvActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestBean"    # Lcom/android/server/activation/bean/ActiveRequestBean;

    .prologue
    const/4 v8, 0x0

    .line 51
    const-string v5, "/manager/api/v1/events"

    invoke-static {v5}, Lcom/android/server/activation/util/HttpHelper;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    const/4 v5, 0x0

    .line 73
    :goto_0
    return-object v5

    .line 57
    :cond_0
    new-instance v0, Lcom/android/server/activation/http/RequestParam;

    invoke-virtual {p1}, Lcom/android/server/activation/bean/ActiveRequestBean;->toJson()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "/manager/api/v1/events"

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/activation/http/RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    .local v0, "baseParams":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 62
    .local v3, "response":Lcom/android/server/activation/http/ServiceResponse;
    :try_start_0
    new-instance v1, Lcom/android/server/activation/http/SimpleHttpURLConnection;

    invoke-static {p0}, Lcom/android/server/activation/util/HttpHelper;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/activation/http/SimpleHttpURLConnection;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, "client":Lcom/android/server/activation/http/SimpleHttpURLConnection;
    invoke-virtual {v1, v0}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->exec(Lcom/android/server/activation/http/RequestParam;)Lcom/android/server/activation/http/ServiceResponse;
    :try_end_0
    .catch Lcom/android/server/activation/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/activation/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/activation/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 73
    .end local v1    # "client":Lcom/android/server/activation/http/SimpleHttpURLConnection;
    :goto_1
    invoke-static {v3}, Lcom/android/server/activation/util/HttpHelper;->parseResponse(Lcom/android/server/activation/http/ServiceResponse;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v5

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Lcom/android/server/activation/exception/NetworkRequestException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvActivation, NetworkRequestException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 67
    .end local v2    # "e":Lcom/android/server/activation/exception/NetworkRequestException;
    :catch_1
    move-exception v2

    .line 68
    .local v2, "e":Lcom/android/server/activation/exception/SignatureException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvActivation, SignatureException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 69
    .end local v2    # "e":Lcom/android/server/activation/exception/SignatureException;
    :catch_2
    move-exception v2

    .line 70
    .local v2, "e":Lcom/android/server/activation/exception/MethodRequestException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvActivation, MethodRequestException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static letvHalfActivation(Landroid/content/Context;Lcom/android/server/activation/bean/ActiveHalfRequestBean;)Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestBean"    # Lcom/android/server/activation/bean/ActiveHalfRequestBean;

    .prologue
    const/4 v8, 0x0

    .line 86
    const-string v5, "/manager/api/v1/events"

    invoke-static {v5}, Lcom/android/server/activation/util/HttpHelper;->checkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    const/4 v5, 0x0

    .line 106
    :goto_0
    return-object v5

    .line 91
    :cond_0
    new-instance v0, Lcom/android/server/activation/http/RequestParam;

    invoke-virtual {p1}, Lcom/android/server/activation/bean/ActiveHalfRequestBean;->toJson()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "/manager/api/v1/events"

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/activation/http/RequestParam;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .local v0, "baseParams":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 96
    .local v3, "response":Lcom/android/server/activation/http/ServiceResponse;
    :try_start_0
    new-instance v1, Lcom/android/server/activation/http/SimpleHttpURLConnection;

    invoke-static {p0}, Lcom/android/server/activation/util/HttpHelper;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/activation/http/SimpleHttpURLConnection;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "client":Lcom/android/server/activation/http/SimpleHttpURLConnection;
    invoke-virtual {v1, v0}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->exec(Lcom/android/server/activation/http/RequestParam;)Lcom/android/server/activation/http/ServiceResponse;
    :try_end_0
    .catch Lcom/android/server/activation/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/activation/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/activation/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 106
    .end local v1    # "client":Lcom/android/server/activation/http/SimpleHttpURLConnection;
    :goto_1
    invoke-static {v3}, Lcom/android/server/activation/util/HttpHelper;->parseResponse(Lcom/android/server/activation/http/ServiceResponse;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v5

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Lcom/android/server/activation/exception/NetworkRequestException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvHalfActivation, NetworkRequestException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    .end local v2    # "e":Lcom/android/server/activation/exception/NetworkRequestException;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Lcom/android/server/activation/exception/SignatureException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvHalfActivation, SignatureException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    .end local v2    # "e":Lcom/android/server/activation/exception/SignatureException;
    :catch_2
    move-exception v2

    .line 104
    .local v2, "e":Lcom/android/server/activation/exception/MethodRequestException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpHelper] letvHalfActivation, MethodRequestException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/activation/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/server/activation/util/LogHelper;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static parseResponse(Lcom/android/server/activation/http/ServiceResponse;)Lcom/android/server/activation/bean/ActiveResposeBean;
    .locals 2
    .param p0, "response"    # Lcom/android/server/activation/http/ServiceResponse;

    .prologue
    .line 115
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/activation/http/ServiceResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/activation/http/ServiceResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const-string v0, "[HttpHelper] parseResponse, http error..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/activation/http/ServiceResponse;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/activation/bean/ActiveResposeBean;->format(Ljava/lang/String;)Lcom/android/server/activation/bean/ActiveResposeBean;

    move-result-object v0

    goto :goto_0
.end method
