.class public final Lcom/letv/tracker/agnes/Agnes;
.super Ljava/lang/Object;
.source "Agnes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/tracker/agnes/Agnes$1;,
        Lcom/letv/tracker/agnes/Agnes$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgnesClient_Agnes"


# instance fields
.field private appList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/letv/tracker/agnes/App;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/letv/tracker/agnes/Configuration;

.field private playSDK:Lcom/letv/tracker/agnes/PlaySDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/letv/tracker/agnes/Configuration;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Configuration;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/tracker/agnes/Agnes$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/tracker/agnes/Agnes$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/letv/tracker/agnes/Agnes;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/letv/tracker/agnes/Agnes;
    .locals 1

    .prologue
    .line 49
    # getter for: Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->INSTANCE:Lcom/letv/tracker/agnes/Agnes;
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes$SingletonHolder;->access$100()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getApp(Lcom/letv/tracker/enums/AppType;)Lcom/letv/tracker/agnes/App;
    .locals 3
    .param p1, "type"    # Lcom/letv/tracker/enums/AppType;

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-object v2

    .line 108
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/AppType;)V

    .line 109
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 110
    goto :goto_0

    .line 104
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    .end local v1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getApp(Lcom/letv/tracker/enums/LeUIApp;)Lcom/letv/tracker/agnes/App;
    .locals 3
    .param p1, "type"    # Lcom/letv/tracker/enums/LeUIApp;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-object v2

    .line 119
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/LeUIApp;)V

    .line 120
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 121
    goto :goto_0

    .line 115
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    .end local v1    # "appKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-object v1

    .line 89
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 91
    goto :goto_0

    .line 86
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConfig()Lcom/letv/tracker/agnes/Configuration;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    return-object v0
.end method

.method public declared-synchronized getPlaySDK()Lcom/letv/tracker/agnes/PlaySDK;
    .locals 7

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 129
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;

    .line 130
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    new-instance v3, Lcom/letv/tracker/agnes/PlaySDK;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getRunId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/App;->getVersion()Lcom/letv/tracker/msg/bean/Version;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/letv/tracker/agnes/PlaySDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    iput-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;

    .line 135
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 126
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report(Lcom/letv/tracker/agnes/App;)V
    .locals 7
    .param p1, "app"    # Lcom/letv/tracker/agnes/App;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/App;->getMsglen()I

    move-result v1

    .line 141
    .local v1, "imsglen":I
    invoke-static {}, Lcom/letv/tracker/agnes/App;->getMAXLEN()I

    move-result v0

    .line 143
    .local v0, "imaxlen":I
    if-le v1, v0, :cond_1

    .line 144
    const-string v3, "AgnesClient_Agnes"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report app err slz_size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",over maxlen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v0    # "imaxlen":I
    .end local v1    # "imsglen":I
    :cond_0
    :goto_0
    return-void

    .line 147
    .restart local v0    # "imaxlen":I
    .restart local v1    # "imsglen":I
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/App;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v2

    .line 148
    .local v2, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v2, :cond_0

    .line 149
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Bluetooth;)V
    .locals 2
    .param p1, "blue"    # Lcom/letv/tracker/agnes/Bluetooth;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Bluetooth;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 166
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 170
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Event;)V
    .locals 7
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Event;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Event;->getMsglen()I

    move-result v1

    .line 211
    .local v1, "imsglen":I
    invoke-static {}, Lcom/letv/tracker/agnes/Event;->getMAXLEN()I

    move-result v0

    .line 212
    .local v0, "imaxlen":I
    if-le v1, v0, :cond_1

    .line 213
    const-string v3, "AgnesClient_Agnes"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report event err slz_size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",over maxlen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0    # "imaxlen":I
    .end local v1    # "imsglen":I
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0    # "imaxlen":I
    .restart local v1    # "imsglen":I
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Event;->buildMessage()Lcom/android/letv/agnes/service/beans/IEvent;

    move-result-object v2

    .line 217
    .local v2, "toRepo":Lcom/android/letv/agnes/service/beans/IEvent;
    if-eqz v2, :cond_0

    .line 218
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IEvent;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/GPS;)V
    .locals 2
    .param p1, "gps"    # Lcom/letv/tracker/agnes/GPS;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/GPS;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 175
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 179
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 7
    .param p1, "musicPlay"    # Lcom/letv/tracker/agnes/MusicPlay;

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->getMsglen()I

    move-result v1

    .line 256
    .local v1, "imsglen":I
    invoke-static {}, Lcom/letv/tracker/agnes/MusicPlay;->getMAXLEN()I

    move-result v0

    .line 257
    .local v0, "imaxlen":I
    if-le v1, v0, :cond_1

    .line 258
    const-string v3, "AgnesClient_Agnes"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report musicplay err slz_size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",over maxlen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .end local v0    # "imaxlen":I
    .end local v1    # "imsglen":I
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local v0    # "imaxlen":I
    .restart local v1    # "imsglen":I
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IMusicPlay;

    move-result-object v2

    .line 262
    .local v2, "toRepo":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    if-eqz v2, :cond_0

    .line 263
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IMusicPlay;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/NFC;)V
    .locals 2
    .param p1, "nfc"    # Lcom/letv/tracker/agnes/NFC;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/NFC;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 184
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 188
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Network;)V
    .locals 2
    .param p1, "network"    # Lcom/letv/tracker/agnes/Network;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Network;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 157
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 161
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VPN;)V
    .locals 2
    .param p1, "vpn"    # Lcom/letv/tracker/agnes/VPN;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VPN;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 193
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 197
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VideoPlay;)V
    .locals 7
    .param p1, "videoPlay"    # Lcom/letv/tracker/agnes/VideoPlay;

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VideoPlay;->getMsglen()I

    move-result v1

    .line 241
    .local v1, "imsglen":I
    invoke-static {}, Lcom/letv/tracker/agnes/VideoPlay;->getMAXLEN()I

    move-result v0

    .line 242
    .local v0, "imaxlen":I
    if-le v1, v0, :cond_1

    .line 243
    const-string v3, "AgnesClient_Agnes"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report videoplay err slz_size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",over maxlen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .end local v0    # "imaxlen":I
    .end local v1    # "imsglen":I
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v0    # "imaxlen":I
    .restart local v1    # "imsglen":I
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VideoPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IVideoPlay;

    move-result-object v2

    .line 247
    .local v2, "toRepo":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    if-eqz v2, :cond_0

    .line 248
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IVideoPlay;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Widget;)V
    .locals 7
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Widget;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Widget;->getMsglen()I

    move-result v1

    .line 226
    .local v1, "imsglen":I
    invoke-static {}, Lcom/letv/tracker/agnes/Widget;->getMAXLEN()I

    move-result v0

    .line 227
    .local v0, "imaxlen":I
    if-le v1, v0, :cond_1

    .line 228
    const-string v3, "AgnesClient_Agnes"

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "report widget err slz_size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",over maxlen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "imaxlen":I
    .end local v1    # "imsglen":I
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v0    # "imaxlen":I
    .restart local v1    # "imsglen":I
    :cond_1
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Widget;->buildMessage()Lcom/android/letv/agnes/service/beans/IWidget;

    move-result-object v2

    .line 232
    .local v2, "toRepo":Lcom/android/letv/agnes/service/beans/IWidget;
    if-eqz v2, :cond_0

    .line 233
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IWidget;)V

    goto :goto_0
.end method

.method public report(Lcom/letv/tracker/agnes/Wifi;)V
    .locals 2
    .param p1, "wifi"    # Lcom/letv/tracker/agnes/Wifi;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Wifi;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 202
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 206
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "AgnesClient"

    const-string v1, ""

    const-string v2, "setContext context is null"

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
