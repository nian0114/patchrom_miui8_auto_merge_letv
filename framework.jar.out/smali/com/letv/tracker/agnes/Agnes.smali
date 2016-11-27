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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    new-instance v0, Lcom/letv/tracker/agnes/Configuration;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Configuration;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/tracker/agnes/Agnes$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/tracker/agnes/Agnes$1;

    .prologue
    invoke-direct {p0}, Lcom/letv/tracker/agnes/Agnes;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/letv/tracker/agnes/Agnes;
    .locals 1

    .prologue
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
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v1

    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/AppType;)V

    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

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
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v1

    .local v1, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Lcom/letv/tracker/enums/LeUIApp;)V

    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v2, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    goto :goto_0

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
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/tracker/agnes/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/letv/tracker/agnes/App;

    invoke-direct {v0, p1}, Lcom/letv/tracker/agnes/App;-><init>(Ljava/lang/String;)V

    .local v0, "app":Lcom/letv/tracker/agnes/App;
    iget-object v1, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_0

    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConfig()Lcom/letv/tracker/agnes/Configuration;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    return-object v0
.end method

.method public declared-synchronized getPlaySDK()Lcom/letv/tracker/agnes/PlaySDK;
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->appList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

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

    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/App;

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

    .end local v0    # "app":Lcom/letv/tracker/agnes/App;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Agnes;->playSDK:Lcom/letv/tracker/agnes/PlaySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/tracker/agnes/Agnes;->config:Lcom/letv/tracker/agnes/Configuration;

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getAgnesVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public report(Lcom/letv/tracker/agnes/App;)V
    .locals 2
    .param p1, "app"    # Lcom/letv/tracker/agnes/App;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/App;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Bluetooth;)V
    .locals 2
    .param p1, "blue"    # Lcom/letv/tracker/agnes/Bluetooth;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Bluetooth;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Event;)V
    .locals 2
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Event;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Event;->buildMessage()Lcom/android/letv/agnes/service/beans/IEvent;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IEvent;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IEvent;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IEvent;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/GPS;)V
    .locals 2
    .param p1, "gps"    # Lcom/letv/tracker/agnes/GPS;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/GPS;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 2
    .param p1, "musicPlay"    # Lcom/letv/tracker/agnes/MusicPlay;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IMusicPlay;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IMusicPlay;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/NFC;)V
    .locals 2
    .param p1, "nfc"    # Lcom/letv/tracker/agnes/NFC;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/NFC;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Network;)V
    .locals 2
    .param p1, "network"    # Lcom/letv/tracker/agnes/Network;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Network;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VPN;)V
    .locals 2
    .param p1, "vpn"    # Lcom/letv/tracker/agnes/VPN;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VPN;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/VideoPlay;)V
    .locals 2
    .param p1, "videoPlay"    # Lcom/letv/tracker/agnes/VideoPlay;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/VideoPlay;->buildMessage()Lcom/android/letv/agnes/service/beans/IVideoPlay;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IVideoPlay;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Widget;)V
    .locals 2
    .param p1, "eve"    # Lcom/letv/tracker/agnes/Widget;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Widget;->buildMessage()Lcom/android/letv/agnes/service/beans/IWidget;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IWidget;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IWidget;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IWidget;
    :cond_0
    return-void
.end method

.method public report(Lcom/letv/tracker/agnes/Wifi;)V
    .locals 2
    .param p1, "wifi"    # Lcom/letv/tracker/agnes/Wifi;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/letv/tracker/agnes/Wifi;->buildMessage()Lcom/android/letv/agnes/service/beans/IApp;

    move-result-object v0

    .local v0, "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/android/letv/agnes/service/beans/IApp;)V

    .end local v0    # "toRepo":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/letv/tracker/agnes/ReportManager;->getInstance()Lcom/letv/tracker/agnes/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/tracker/agnes/ReportManager;->setContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "AgnesClient"

    const-string v1, ""

    const-string v2, "setContext context is null"

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
