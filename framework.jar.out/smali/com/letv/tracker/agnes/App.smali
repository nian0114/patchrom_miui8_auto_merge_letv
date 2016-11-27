.class public final Lcom/letv/tracker/agnes/App;
.super Ljava/lang/Object;
.source "App.java"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    return-void
.end method

.method constructor <init>(Lcom/letv/tracker/enums/LeUIApp;)V
    .locals 3
    .param p1, "leApp"    # Lcom/letv/tracker/enums/LeUIApp;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-static {p1}, Lcom/letv/tracker/enums/AppType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/letv/tracker/enums/LeUIApp;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    return-void

    :cond_0
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

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


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

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
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

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

    return-void

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
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :goto_1
    return-void

    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

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

    new-instance v4, Lcom/android/letv/agnes/service/beans/IApp;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IApp;-><init>()V

    .local v4, "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    const/4 v1, 0x0

    .local v1, "anyUpdate":Z
    iget-boolean v8, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setUserid(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v9, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    :cond_0
    iget-boolean v8, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getAppStore()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setStore(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v9, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    :cond_1
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v5, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

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

    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    const/4 v1, 0x1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_3
    if-nez v1, :cond_4

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_4
    iget-wide v8, p0, Lcom/letv/tracker/agnes/App;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IApp;->setTime(J)V

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v8}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-static {v8}, Lcom/letv/tracker/service/Converter;->convertVersion(Lcom/letv/tracker/msg/bean/Version;)Lcom/android/letv/agnes/service/beans/IVersion;

    move-result-object v7

    .local v7, "ver":Lcom/android/letv/agnes/service/beans/IVersion;
    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IApp;->setVersion(Lcom/android/letv/agnes/service/beans/IVersion;)V

    .end local v7    # "ver":Lcom/android/letv/agnes/service/beans/IVersion;
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v9, "app_run_id"

    iget-object v10, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

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
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

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
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deactive(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppStore()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/AppStore;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getRunId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/letv/tracker/msg/bean/Version;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    return-object v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "login"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "logout"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getSignedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "ready"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "run"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAppStore(Lcom/letv/tracker/enums/AppStore;)V
    .locals 1
    .param p1, "store"    # Lcom/letv/tracker/enums/AppStore;

    .prologue
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .param p1, "ch"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSignedUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    goto :goto_0
.end method

.method public setStartFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "startFrom"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3
    .param p1, "trsrc"    # Lcom/letv/tracker/enums/TriggerSourceType;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
