.class public final Lcom/letv/tracker/agnes/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "agnes_"


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

.field private pushId:Ljava/lang/String;

.field private result:Lcom/letv/tracker/enums/EventResult;

.field private timestamp:J

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Lcom/letv/tracker/enums/EventType;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "eventType"    # Lcom/letv/tracker/enums/EventType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {p4}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "eventId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Lcom/letv/tracker/enums/EventType;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "wid"    # Ljava/lang/String;
    .param p5, "eventType"    # Lcom/letv/tracker/enums/EventType;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "wid"    # Ljava/lang/String;
    .param p5, "eventId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    iput-object p5, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

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

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IEvent;
    .locals 4

    .prologue
    new-instance v0, Lcom/android/letv/agnes/service/beans/IEvent;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IEvent;-><init>()V

    .local v0, "ieve":Lcom/android/letv/agnes/service/beans/IEvent;
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/letv/agnes/service/beans/IEvent;->setTime(J)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setWidgetId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setPushId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setResult(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setProps(Ljava/util/Map;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

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
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/EventResult;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationMethod(Lcom/letv/tracker/enums/Operation;)V
    .locals 3
    .param p1, "op"    # Lcom/letv/tracker/enums/Operation;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "op"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/letv/tracker/enums/EventResult;)V
    .locals 0
    .param p1, "res"    # Lcom/letv/tracker/enums/EventResult;

    .prologue
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3
    .param p1, "trsrc"    # Lcom/letv/tracker/enums/TriggerSourceType;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setbps(J)V
    .locals 3
    .param p1, "pbps"    # J

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "bps"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setcacheSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_cacheSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setdiskLeftSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskLeftSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setdiskTotalSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskTotalSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwBrand(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwbrand"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwBrand"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwdevice"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwDevice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwHardware(Ljava/lang/String;)V
    .locals 2
    .param p1, "phw"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwHardware"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwId(Ljava/lang/String;)V
    .locals 2
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "pmodel"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwSerial(Ljava/lang/String;)V
    .locals 2
    .param p1, "pserial"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwSerial"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sethwVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pversion"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwVersion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setinterval(J)V
    .locals 3
    .param p1, "pitv"    # J

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_interval"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setnetworkType(Ljava/lang/String;)V
    .locals 2
    .param p1, "pnetwork"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_networkType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setos(Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_os"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
