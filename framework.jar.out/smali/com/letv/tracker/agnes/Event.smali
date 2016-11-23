.class public final Lcom/letv/tracker/agnes/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAXLEN:I = 0x1000

.field private static final PREFIX:Ljava/lang/String; = "agnes_"

.field private static final TAG:Ljava/lang/String; = "AgnesClient_Event"


# instance fields
.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/Event;->msglen:I

    .line 22
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 24
    invoke-virtual {p4}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 26
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "eventId"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/Event;->msglen:I

    .line 30
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 32
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 34
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 35
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/Event;->msglen:I

    .line 38
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 40
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 41
    invoke-virtual {p5}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 43
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 44
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/Event;->msglen:I

    .line 47
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 49
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 52
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static getMAXLEN()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x1000

    return v0
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 195
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
    .line 187
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_1
    return-void

    .line 188
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 190
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
    .line 229
    new-instance v0, Lcom/android/letv/agnes/service/beans/IEvent;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IEvent;-><init>()V

    .line 230
    .local v0, "ieve":Lcom/android/letv/agnes/service/beans/IEvent;
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/letv/agnes/service/beans/IEvent;->setTime(J)V

    .line 231
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setId(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setAppId(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setWidgetId(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setPushId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setResult(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v2, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IEvent;->setProps(Ljava/util/Map;)V

    .line 242
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 10

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "ilen":I
    const/4 v0, 0x0

    .line 205
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 207
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v5, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 211
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 216
    if-eqz v1, :cond_0

    .line 217
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 218
    :cond_0
    if-eqz v5, :cond_1

    .line 219
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 225
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    return v3

    .line 220
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 221
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AgnesClient_Event"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 223
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 212
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 213
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "AgnesClient_Event"

    const-string v7, ""

    const-string v8, "can\'t get event size"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 218
    :cond_3
    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 220
    :catch_2
    move-exception v2

    .line 221
    const-string v6, "AgnesClient_Event"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 216
    :goto_2
    if-eqz v0, :cond_4

    .line 217
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 218
    :cond_4
    if-eqz v4, :cond_5

    .line 219
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 222
    :cond_5
    :goto_3
    throw v6

    .line 220
    :catch_3
    move-exception v2

    .line 221
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "AgnesClient_Event"

    const-string v8, ""

    const-string v9, "close output stream err"

    invoke-static {v7, v8, v9, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 215
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

    .line 212
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
    .line 199
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/EventResult;->getId()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationMethod(Lcom/letv/tracker/enums/Operation;)V
    .locals 3
    .param p1, "op"    # Lcom/letv/tracker/enums/Operation;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "op"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setResult(Lcom/letv/tracker/enums/EventResult;)V
    .locals 0
    .param p1, "res"    # Lcom/letv/tracker/enums/EventResult;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    .line 110
    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3
    .param p1, "trsrc"    # Lcom/letv/tracker/enums/TriggerSourceType;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public setbps(J)V
    .locals 3
    .param p1, "pbps"    # J

    .prologue
    .line 178
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "bps"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setcacheSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 182
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_cacheSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public setdiskLeftSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 166
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskLeftSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setdiskTotalSize(J)V
    .locals 3
    .param p1, "psize"    # J

    .prologue
    .line 170
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_diskTotalSize"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public sethwBrand(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwbrand"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwBrand"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public sethwDevice(Ljava/lang/String;)V
    .locals 2
    .param p1, "phwdevice"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwDevice"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public sethwHardware(Ljava/lang/String;)V
    .locals 2
    .param p1, "phw"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwHardware"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public sethwId(Ljava/lang/String;)V
    .locals 2
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public sethwModel(Ljava/lang/String;)V
    .locals 2
    .param p1, "pmodel"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwModel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public sethwSerial(Ljava/lang/String;)V
    .locals 2
    .param p1, "pserial"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwSerial"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public sethwVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "pversion"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_hwVersion"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public setinterval(J)V
    .locals 3
    .param p1, "pitv"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_interval"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public setnetworkType(Ljava/lang/String;)V
    .locals 2
    .param p1, "pnetwork"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_networkType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public setos(Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string v1, "agnes_os"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-void
.end method
