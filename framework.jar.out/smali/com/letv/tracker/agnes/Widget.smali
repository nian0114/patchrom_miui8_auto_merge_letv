.class public final Lcom/letv/tracker/agnes/Widget;
.super Ljava/lang/Object;
.source "Widget.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAXLEN:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "AgnesClient_Widget"


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

.field private timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "wid"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/Widget;->msglen:I

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 21
    iput-object p1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 23
    iput-object p4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Widget;->timestamp:J

    .line 26
    return-void
.end method

.method public static getMAXLEN()I
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x1000

    return v0
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void

    .line 82
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
    .line 74
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_1
    return-void

    .line 75
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 77
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
    .line 159
    new-instance v0, Lcom/android/letv/agnes/service/beans/IWidget;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IWidget;-><init>()V

    .line 161
    .local v0, "iw":Lcom/android/letv/agnes/service/beans/IWidget;
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Widget;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/letv/agnes/service/beans/IWidget;->setTime(J)V

    .line 162
    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/letv/agnes/service/beans/IWidget;->setId(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/letv/agnes/service/beans/IWidget;->setAppId(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string v3, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string v3, "app_run_id"

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 169
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/letv/agnes/service/beans/IWidget;->setProps(Ljava/util/Map;)V

    .line 172
    return-object v0
.end method

.method public createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;
    .locals 6
    .param p1, "type"    # Lcom/letv/tracker/enums/EventType;

    .prologue
    .line 101
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
    .line 112
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
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
    .line 129
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
    .line 125
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
    .line 55
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 10

    .prologue
    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "ilen":I
    const/4 v0, 0x0

    .line 135
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 137
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v5, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 141
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 146
    if-eqz v1, :cond_0

    .line 147
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 148
    :cond_0
    if-eqz v5, :cond_1

    .line 149
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 155
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    return v3

    .line 150
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AgnesClient_Widget"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 153
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 142
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 143
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "AgnesClient_Widget"

    const-string v7, ""

    const-string v8, "can\'t get widget size"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-eqz v0, :cond_3

    .line 147
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 148
    :cond_3
    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v2

    .line 151
    const-string v6, "AgnesClient_Widget"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 146
    :goto_2
    if-eqz v0, :cond_4

    .line 147
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 148
    :cond_4
    if-eqz v4, :cond_5

    .line 149
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 152
    :cond_5
    :goto_3
    throw v6

    .line 150
    :catch_3
    move-exception v2

    .line 151
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "AgnesClient_Widget"

    const-string v8, ""

    const-string v9, "close output stream err"

    invoke-static {v7, v8, v9, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 145
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

    .line 142
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
    .line 91
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    return-object v0
.end method
