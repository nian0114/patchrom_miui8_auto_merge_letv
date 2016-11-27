.class public Lcom/letv/tracker/agnes/GPS;
.super Ljava/lang/Object;
.source "GPS.java"


# static fields
.field private static ID:Ljava/lang/String;


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "GPS"

    sput-object v0, Lcom/letv/tracker/agnes/GPS;->ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void

    .line 32
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
    .line 24
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :goto_1
    return-void

    .line 25
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

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

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IApp;
    .locals 10

    .prologue
    .line 58
    new-instance v4, Lcom/android/letv/agnes/service/beans/IApp;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IApp;-><init>()V

    .line 59
    .local v4, "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    const/4 v1, 0x0

    .line 61
    .local v1, "anyUpdate":Z
    iget-object v7, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 62
    iget-object v6, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    .line 63
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    .line 64
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    .line 65
    const/4 v1, 0x1

    .line 68
    .end local v6    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v7, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 69
    iget-object v5, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    .line 70
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v3, "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 73
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_1
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    .line 76
    const/4 v1, 0x1

    .line 79
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 81
    sget-object v7, Lcom/letv/tracker/agnes/GPS;->ID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 84
    .end local v4    # "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    :goto_1
    return-object v4

    .restart local v4    # "iapp":Lcom/android/letv/agnes/service/beans/IApp;
    :cond_3
    const/4 v4, 0x0

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
    .line 36
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 2
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    const-string v1, "latitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 2
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/tracker/agnes/GPS;->props:Ljava/util/Map;

    const-string v1, "longitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "stop"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/GPS;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
