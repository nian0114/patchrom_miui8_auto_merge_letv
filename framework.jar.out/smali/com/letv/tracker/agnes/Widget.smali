.class public final Lcom/letv/tracker/agnes/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

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

.field private timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "wid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    iput-object p1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iput-object p4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Widget;->timestamp:J

    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

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

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IWidget;
    .locals 5

    .prologue
    new-instance v0, Lcom/android/letv/agnes/service/beans/IWidget;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IWidget;-><init>()V

    .local v0, "iw":Lcom/android/letv/agnes/service/beans/IWidget;
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Widget;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/letv/agnes/service/beans/IWidget;->setTime(J)V

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/letv/agnes/service/beans/IWidget;->setId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/letv/agnes/service/beans/IWidget;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string v3, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string v3, "app_run_id"

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IWidget;->setProps(Ljava/util/Map;)V

    return-object v0
.end method

.method public createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;
    .locals 6
    .param p1, "type"    # Lcom/letv/tracker/enums/EventType;

    .prologue
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Lcom/letv/tracker/enums/EventType;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createMusicPlay()Lcom/letv/tracker/agnes/MusicPlay;
    .locals 5

    .prologue
    new-instance v0, Lcom/letv/tracker/agnes/MusicPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/MusicPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public createVideoPlay()Lcom/letv/tracker/agnes/VideoPlay;
    .locals 5

    .prologue
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    return-object v0
.end method
