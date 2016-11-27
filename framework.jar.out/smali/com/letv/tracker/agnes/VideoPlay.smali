.class public final Lcom/letv/tracker/agnes/VideoPlay;
.super Ljava/lang/Object;
.source "VideoPlay.java"


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

.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

.field private bitStream:Ljava/lang/String;

.field private caller:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private heartCount:I

.field private id:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private networkModel:Lcom/letv/tracker/enums/NetworkModel;

.field private playerVersion:Ljava/lang/String;

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

.field private rpt_bitStream:Ljava/lang/String;

.field private rpt_liveId:Ljava/lang/String;

.field private rpt_networkModel:Ljava/lang/String;

.field private rpt_station:Ljava/lang/String;

.field private rpt_type:Ljava/lang/String;

.field private rpt_videoId:Ljava/lang/String;

.field private station:Ljava/lang/String;

.field private timestamp:J

.field private type:Lcom/letv/tracker/enums/PlayType;

.field private url:Ljava/lang/String;

.field private userType:Lcom/letv/tracker/enums/UserType;

.field private videoId:Ljava/lang/String;

.field private videoLength:I

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 55
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_station:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 69
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_station:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;I)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "acName"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 407
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public addAction(ILjava/lang/String;ILjava/util/HashMap;)V
    .locals 5
    .param p1, "prg"    # I
    .param p2, "acName"    # Ljava/lang/String;
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p4, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ext_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v3, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 418
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void

    .line 155
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
    .line 147
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_1
    return-void

    .line 148
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

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

.method public beginBuffer(ILcom/letv/tracker/enums/BufferCause;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Lcom/letv/tracker/enums/BufferCause;

    .prologue
    .line 323
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "beginBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz p2, :cond_0

    .line 326
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IVideoPlay;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 434
    new-instance v4, Lcom/android/letv/agnes/service/beans/IVideoPlay;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IVideoPlay;-><init>()V

    .line 435
    .local v4, "ivp":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    const/4 v1, 0x0

    .line 437
    .local v1, "anyUpdate":Z
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 438
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVideoId(Ljava/lang/String;)V

    .line 439
    const/4 v1, 0x1

    .line 440
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 444
    :cond_0
    iget v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    if-le v8, v10, :cond_1

    .line 445
    iget v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVideoLength(I)V

    .line 446
    const/4 v1, 0x1

    .line 447
    iput v10, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 450
    :cond_1
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setType(Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 457
    :cond_2
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 458
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getBitStream()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setStream(Ljava/lang/String;)V

    .line 459
    const/4 v1, 0x1

    .line 460
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 464
    :cond_3
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 465
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setUrl(Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x1

    .line 467
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    .line 470
    :cond_4
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 471
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setFrom(Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x1

    .line 473
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    .line 476
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 477
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVersion(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x1

    .line 479
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    .line 482
    :cond_6
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 483
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setStation(Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x1

    .line 488
    :cond_7
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 489
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setLiveId(Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x1

    .line 491
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 495
    :cond_8
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-eqz v8, :cond_9

    .line 496
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v8}, Lcom/letv/tracker/enums/UserType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setUserType(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x1

    .line 498
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    .line 501
    :cond_9
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 502
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 503
    const/4 v1, 0x1

    .line 504
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 508
    :cond_a
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 509
    iget-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 510
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v3, "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 513
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_b
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setActs(Ljava/util/List;)V

    .line 516
    const/4 v1, 0x1

    .line 519
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_c
    if-nez v1, :cond_d

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    .line 521
    :cond_d
    iget-wide v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setTime(J)V

    .line 522
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setId(Ljava/lang/String;)V

    .line 523
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setAppId(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 525
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :cond_e
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 528
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setWidgetId(Ljava/lang/String;)V

    .line 530
    :cond_f
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "app_run_id"

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 532
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "caller"

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_10
    iget-object v6, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 536
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 537
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setProps(Ljava/util/Map;)V

    .line 541
    .end local v4    # "ivp":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    .end local v6    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .restart local v4    # "ivp":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    :cond_11
    move-object v4, v7

    goto :goto_1
.end method

.method public cancel(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 338
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method public endAD()V
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "endBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public endCload()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public endGslb()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public endMediaSource()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public endPhase(Ljava/lang/String;)V
    .locals 3
    .param p1, "phaseName"    # Ljava/lang/String;

    .prologue
    .line 429
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext_end_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public endTheatreChain()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public endUserCenter()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Lcom/letv/tracker/enums/FailedCause;

    .prologue
    .line 351
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz p2, :cond_0

    .line 354
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;Ljava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Lcom/letv/tracker/enums/FailedCause;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    if-eqz p2, :cond_0

    .line 372
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    if-eqz p3, :cond_1

    .line 375
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz p2, :cond_0

    .line 363
    const-string v1, "cause"

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public failed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 381
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    if-eqz p2, :cond_0

    .line 384
    const-string v1, "cause"

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    if-eqz p3, :cond_1

    .line 387
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

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
    .line 106
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/PlayType;->getId()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/UserType;->getId()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public moveTo(IILcom/letv/tracker/enums/Operation;)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "op"    # Lcom/letv/tracker/enums/Operation;

    .prologue
    .line 310
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "to"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    if-eqz p3, :cond_0

    .line 314
    const-string v1, "op"

    invoke-virtual {p3}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public pause(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 394
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 400
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "interval"    # I

    .prologue
    .line 299
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "interval"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "heartCount"

    iget v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public setBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 1
    .param p1, "stream"    # Lcom/letv/tracker/enums/StreamType;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    .line 130
    :cond_0
    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    .line 136
    :cond_0
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayerVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "playerVersion"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/letv/tracker/enums/PlayType;)V
    .locals 0
    .param p1, "type"    # Lcom/letv/tracker/enums/PlayType;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Lcom/letv/tracker/enums/UserType;)V
    .locals 0
    .param p1, "userType"    # Lcom/letv/tracker/enums/UserType;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(I)V
    .locals 0
    .param p1, "videoLength"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return-void
.end method

.method public startAD()V
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public startCload()V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public startGslb()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public startMediaSource()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public startPhase(Ljava/lang/String;)V
    .locals 3
    .param p1, "phaseName"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext_start_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public startPlay(Lcom/letv/tracker/enums/PlayStart;)V
    .locals 3
    .param p1, "startType"    # Lcom/letv/tracker/enums/PlayStart;

    .prologue
    .line 257
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 259
    const-string v1, "startType"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/PlayStart;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public startTheatreChain()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public startUserCenter()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public switchBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 3
    .param p1, "bitStream"    # Lcom/letv/tracker/enums/StreamType;

    .prologue
    .line 266
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 268
    const-string v1, "bitStream"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 276
    const-string v1, "bitStream"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 290
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 292
    const-string v1, "networkModel"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "stationId"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method
