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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 14
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 16
    invoke-virtual {p4}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 18
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "eventId"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 24
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 26
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 27
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 32
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 33
    invoke-virtual {p5}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 35
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 36
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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 41
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 44
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void

    .line 185
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
    .line 177
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_1
    return-void

    .line 178
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 180
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
    .line 193
    new-instance v0, Lcom/android/letv/agnes/service/beans/IEvent;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IEvent;-><init>()V

    .line 194
    .local v0, "ieve":Lcom/android/letv/agnes/service/beans/IEvent;
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/letv/agnes/service/beans/IEvent;->setTime(J)V

    .line 195
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setId(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setAppId(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setWidgetId(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setPushId(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setResult(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setProps(Ljava/util/Map;)V

    .line 206
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
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
    .line 189
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/EventResult;->getId()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationMethod(Lcom/letv/tracker/enums/Operation;)V
    .locals 3
    .param p1, "op"    # Lcom/letv/tracker/enums/Operation;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "op"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setResult(Lcom/letv/tracker/enums/EventResult;)V
    .locals 0
    .param p1, "res"    # Lcom/letv/tracker/enums/EventResult;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    .line 100
    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3
    .param p1, "trsrc"    # Lcom/letv/tracker/enums/TriggerSourceType;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public setbps(J)V
    .locals 3
    .param p1, "pbps"    # J

    .prologue
    .line 168
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "bps"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public setcacheSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 172
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_cacheSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-void
.end method

.method public setdiskLeftSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 156
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskLeftSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public setdiskTotalSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 160
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskTotalSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public sethwBrand(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwbrand"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwBrand"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public sethwDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwdevice"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwDevice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public sethwHardware(Ljava/lang/String;)V
    .locals 2
    .param p1, "phw"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwHardware"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public sethwId(Ljava/lang/String;)V
    .locals 2
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public sethwModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "pmodel"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public sethwSerial(Ljava/lang/String;)V
    .locals 2
    .param p1, "pserial"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwSerial"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public sethwVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pversion"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwVersion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public setinterval(J)V
    .locals 3
    .param p1, "pitv"    # J

    .prologue
    .line 164
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_interval"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public setnetworkType(Ljava/lang/String;)V
    .locals 2
    .param p1, "pnetwork"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_networkType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public setos(Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_os"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method
