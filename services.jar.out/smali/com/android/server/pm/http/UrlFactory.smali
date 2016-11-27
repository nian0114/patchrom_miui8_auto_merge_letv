.class public Lcom/android/server/pm/http/UrlFactory;
.super Ljava/lang/Object;
.source "UrlFactory.java"


# static fields
.field public static final salesAreaPersist:Ljava/lang/String; = "persist.sys.salesarea"


# instance fields
.field private baseParam:Lcom/android/server/pm/http/BaseParam;

.field private baseUrl:Ljava/lang/String;

.field private final serverPath:Ljava/lang/String;

.field private final serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/manager/api/v1/salearea"

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->serverPath:Ljava/lang/String;

    const-string v0, "https://device.g.scloud.letv.com/manager/api/v1/salearea"

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->serverUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/pm/http/UrlFactory;->productParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method private productParam(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .local v1, "httpType":I
    const-string v4, "2"

    .local v4, "type":Ljava/lang/String;
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Area"

    const-string v6, "get imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const-string v0, "https://device.g.scloud.letv.com/manager/api/v1/salearea"

    .local v0, "connecUrl":Ljava/lang/String;
    new-instance v5, Lcom/android/server/pm/http/BaseParam;

    const-string v6, "/manager/api/v1/salearea"

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/android/server/pm/http/BaseParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    iget-object v5, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/http/BaseParam;->encodeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    iget-object v0, v0, Lcom/android/server/pm/http/BaseParam;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public gethttpType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    iget v0, v0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    return v0
.end method

.method public needSignature()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    invoke-virtual {v0}, Lcom/android/server/pm/http/BaseParam;->needSignature()Z

    move-result v0

    return v0
.end method
