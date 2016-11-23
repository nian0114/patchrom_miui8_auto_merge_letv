.class public final Lcom/letv/tracker/agnes/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAXLEN:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "AgnesClient_App"


# instance fields
.field private acts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/tracker/msg/bean/Action;",
            ">;"
        }
    .end annotation
.end field

.field private appStore:Lcom/letv/tracker/enums/AppStore;

.field private id:Ljava/lang/String;

.field private msglen:I

.field private props:Ljava/util/Map;
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

.field private runId:Ljava/lang/String;

.field private storeHolder:Z

.field private timestamp:J

.field private userHolder:Z

.field private userId:Ljava/lang/String;

.field private version:Lcom/letv/tracker/msg/bean/Version;


# direct methods
.method constructor <init>(Lcom/letv/tracker/enums/AppType;)V
    .locals 3
    .param p1, "appType"    # Lcom/letv/tracker/enums/AppType;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/letv/tracker/agnes/App;->msglen:I

    .line 91
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 98
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 56
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/letv/tracker/enums/LeUIApp;)V
    .locals 3
    .param p1, "leApp"    # Lcom/letv/tracker/enums/LeUIApp;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/letv/tracker/agnes/App;->msglen:I

    .line 91
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 98
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 63
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v0, p0, Lcom/letv/tracker/agnes/App;->msglen:I

    .line 91
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 98
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lcom/letv/tracker/enums/AppType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/letv/tracker/enums/LeUIApp;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 39
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 46
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    .line 47
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMAXLEN()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1000

    return v0
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void

    .line 179
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_1
    return-void

    .line 172
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_2
.end method

.method public addStats(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 3
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stats_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void

    .line 191
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method public addStats(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stats_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :goto_1
    return-void

    .line 184
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR:stats_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_2
    const-string p2, ""

    goto :goto_2
.end method

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IApp;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 348
    new-instance v4, Lcom/android/letv/agnes/service/beans/IApp;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IApp;-><init>()V

    .line 349
    .local v4, "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    const/4 v1, 0x0

    .line 351
    .local v1, "anyUpdate":Z
    iget-boolean v8, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    if-eqz v8, :cond_0

    .line 352
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setUserid(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x1

    .line 354
    iput-boolean v9, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 357
    :cond_0
    iget-boolean v8, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    if-eqz v8, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getAppStore()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setStore(Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x1

    .line 360
    iput-boolean v9, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 363
    :cond_1
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 364
    iget-object v5, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 365
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v3, "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 368
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    .line 371
    const/4 v1, 0x1

    .line 374
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_3
    if-nez v1, :cond_4

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 376
    :cond_4
    iget-wide v8, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 377
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 378
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v8}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 379
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-static {v8}, Lcom/letv/tracker/service/Converter;->convertVersion(Lcom/letv/tracker/msg/bean/Version;)Lcom/android/letv/agnes/service/beans/IVersion;

    move-result-object v7

    .line 380
    .local v7, "ver":Lcom/android/letv/agnes/service/beans/IVersion;
    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IApp;->setVersion(Lcom/android/letv/agnes/service/beans/IVersion;)V

    .line 383
    .end local v7    # "ver":Lcom/android/letv/agnes/service/beans/IVersion;
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v9, "app_run_id"

    iget-object v10, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v6, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 385
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 386
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    .line 390
    .end local v4    # "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    .end local v6    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .restart local v4    # "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;
    .locals 4
    .param p1, "type"    # Lcom/letv/tracker/enums/EventType;

    .prologue
    .line 286
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Lcom/letv/tracker/enums/EventType;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createMusicPlay()Lcom/letv/tracker/agnes/MusicPlay;
    .locals 4

    .prologue
    .line 318
    new-instance v0, Lcom/letv/tracker/agnes/MusicPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/agnes/MusicPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    return-object v0
.end method

.method public createVideoPlay()Lcom/letv/tracker/agnes/VideoPlay;
    .locals 4

    .prologue
    .line 314
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    return-object v0
.end method

.method public createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;
    .locals 4
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Lcom/letv/tracker/agnes/Widget;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Widget;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public deactive()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public deactive(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public getAppStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/AppStore;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 10

    .prologue
    .line 322
    const/4 v3, 0x0

    .line 323
    .local v3, "ilen":I
    const/4 v0, 0x0

    .line 324
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 326
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v5, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 330
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 335
    if-eqz v1, :cond_0

    .line 336
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 337
    :cond_0
    if-eqz v5, :cond_1

    .line 338
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 344
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    return v3

    .line 339
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 340
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AgnesClient_App"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 342
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 331
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 332
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "AgnesClient_App"

    const-string v7, ""

    const-string v8, "can\'t get app size"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 335
    if-eqz v0, :cond_3

    .line 336
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 337
    :cond_3
    if-eqz v4, :cond_2

    .line 338
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 339
    :catch_2
    move-exception v2

    .line 340
    const-string v6, "AgnesClient_App"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 334
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 335
    :goto_2
    if-eqz v0, :cond_4

    .line 336
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 337
    :cond_4
    if-eqz v4, :cond_5

    .line 338
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 341
    :cond_5
    :goto_3
    throw v6

    .line 339
    :catch_3
    move-exception v2

    .line 340
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "AgnesClient_App"

    const-string v8, ""

    const-string v9, "close output stream err"

    invoke-static {v7, v8, v9, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 334
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 331
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public getProps()Ljava/util/Map;
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
    .line 200
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getRunId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/letv/tracker/msg/bean/Version;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    return-object v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "login"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0, p1}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "logout"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getSignedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "ready"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "run"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public setAppStore(Lcom/letv/tracker/enums/AppStore;)V
    .locals 1
    .param p1, "store"    # Lcom/letv/tracker/enums/AppStore;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 137
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-void
.end method

.method public setSignedUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    goto :goto_0
.end method

.method public setStartFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "startFrom"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3
    .param p1, "trsrc"    # Lcom/letv/tracker/enums/TriggerSourceType;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method
