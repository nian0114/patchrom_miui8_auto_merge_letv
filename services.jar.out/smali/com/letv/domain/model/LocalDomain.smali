.class public Lcom/letv/domain/model/LocalDomain;
.super Ljava/lang/Object;
.source "LocalDomain.java"


# static fields
.field private static mLocalDomainMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accounts.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usercenter.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api.itv.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api.zhifu.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zhifu.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yuanxian.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "browser.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xsquare.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calendar.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "music.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ota.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xfeedback.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xpage.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "control.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "push.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wallpaper.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainResponse(Lcom/letv/domain/bean/DeviceInfo;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "deviceInfo"    # Lcom/letv/domain/bean/DeviceInfo;

    .prologue
    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getServices()Ljava/lang/String;

    move-result-object v6

    .local v6, "services":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    sget-object v9, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    sget-object v9, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "strings":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    .local v7, "string":Ljava/lang/String;
    sget-object v9, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v9, ""

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "strings":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_3

    invoke-static {v5}, Lcom/letv/domain/utils/JsonUtils;->createJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    .local v2, "jsonObject":Lorg/json/JSONObject;
    :goto_3
    return-object v2

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-static {}, Lcom/letv/domain/utils/JsonUtils;->createErrorJson()Lorg/json/JSONObject;

    move-result-object v2

    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3
.end method
