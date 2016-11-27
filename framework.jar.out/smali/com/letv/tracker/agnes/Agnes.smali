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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/letv/tracker/agnes/Configuration;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Configuration;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    .line 30
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
    .line 48
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
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return-object v2

    .line 107
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/AppType;)V

    .line 108
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 109
    goto :goto_0

    .line 103
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
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-object v2

    .line 118
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/LeUIApp;)V

    .line 119
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    .line 120
    goto :goto_0

    .line 114
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
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_0
    monitor-exit p0

    return-object v1

    .line 88
    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    .line 90
    goto :goto_0

    .line 85
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConfig()Lcom/letv/tracker/agnes/Configuration;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    return-object v0
.end method

.method public declared-synchronized getPlaySDK()Lcom/letv/tracker/agnes/PlaySDK;
    .locals 7

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
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

    .line 128
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;

    .line 129
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

    .line 134
    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 125
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report(Lcom/letv/tracker/agnes/App;)V
    .locals 2
    .param p1, "app"    # Lcom/letv/tracker/agnes/App;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/App;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 140
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 144
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Bluetooth;)V
    .locals 2
    .param p1, "blue"    # Lcom/letv/tracker/agnes/Bluetooth;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Bluetooth;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 158
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 162
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Event;)V
    .locals 2
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Event;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Event;->buildMessage()Lcom/android/letv/agnes/service/beans/IEvent;

    move-result-object v0

    .line 203
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IEvent;
    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IEvent;)V

    .line 207
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IEvent;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/GPS;)V
    .locals 2
    .param p1, "gps"    # Lcom/letv/tracker/agnes/GPS;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/GPS;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 167
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 171
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 2
    .param p1, "musicPlay"    # Lcom/letv/tracker/agnes/MusicPlay;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IMusicPlay;

    move-result-object v0

    .line 230
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IMusicPlay;)V

    .line 234
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/NFC;)V
    .locals 2
    .param p1, "nfc"    # Lcom/letv/tracker/agnes/NFC;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/NFC;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 176
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 180
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Network;)V
    .locals 2
    .param p1, "network"    # Lcom/letv/tracker/agnes/Network;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Network;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 149
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 153
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VPN;)V
    .locals 2
    .param p1, "vpn"    # Lcom/letv/tracker/agnes/VPN;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VPN;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 185
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 189
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VideoPlay;)V
    .locals 2
    .param p1, "videoPlay"    # Lcom/letv/tracker/agnes/VideoPlay;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VideoPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IVideoPlay;

    move-result-object v0

    .line 221
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IVideoPlay;)V

    .line 225
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Widget;)V
    .locals 2
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Widget;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Widget;->buildMessage()Lcom/android/letv/agnes/service/beans/IWidget;

    move-result-object v0

    .line 212
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IWidget;
    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IWidget;)V

    .line 216
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IWidget;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Wifi;)V
    .locals 2
    .param p1, "wifi"    # Lcom/letv/tracker/agnes/Wifi;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Wifi;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .line 194
    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .line 198
    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "AgnesClient"

    const-string v1, ""

    const-string v2, "setContext context is null"

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
