.class public final Lcom/letv/tracker/agnes/VideoPlay;
.super Ljava/lang/Object;
.source "VideoPlay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAXLEN:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "AgnesClient_VideoPlay"


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

.field private msglen:I

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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->msglen:I

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 62
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_station:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 71
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->msglen:I

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 76
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_station:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static getMAXLEN()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x1000

    return v0
.end method


# virtual methods
.method public addAction(ILjava/lang/String;I)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "acName"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 416
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

    .line 417
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
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
    .line 423
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

    .line 424
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v3, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v3, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
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

    .line 427
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void

    .line 164
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
    .line 156
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_1
    return-void

    .line 157
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 159
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
    .line 332
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "beginBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    if-eqz p2, :cond_0

    .line 335
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IVideoPlay;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 469
    new-instance v4, Lcom/android/letv/agnes/service/beans/IVideoPlay;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IVideoPlay;-><init>()V

    .line 470
    .local v4, "ivp":Lcom/android/letv/agnes/service/beans/IVideoPlay;
    const/4 v1, 0x0

    .line 472
    .local v1, "anyUpdate":Z
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 473
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVideoId(Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x1

    .line 475
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_videoId:Ljava/lang/String;

    .line 479
    :cond_0
    iget v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    if-le v8, v10, :cond_1

    .line 480
    iget v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVideoLength(I)V

    .line 481
    const/4 v1, 0x1

    .line 482
    iput v10, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 485
    :cond_1
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setType(Ljava/lang/String;)V

    .line 487
    const/4 v1, 0x1

    .line 488
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_type:Ljava/lang/String;

    .line 492
    :cond_2
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getBitStream()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setStream(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x1

    .line 495
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_bitStream:Ljava/lang/String;

    .line 499
    :cond_3
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 500
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setUrl(Ljava/lang/String;)V

    .line 501
    const/4 v1, 0x1

    .line 502
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    .line 505
    :cond_4
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 506
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setFrom(Ljava/lang/String;)V

    .line 507
    const/4 v1, 0x1

    .line 508
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    .line 511
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 512
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setVersion(Ljava/lang/String;)V

    .line 513
    const/4 v1, 0x1

    .line 514
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    .line 517
    :cond_6
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 518
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setStation(Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x1

    .line 523
    :cond_7
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 524
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setLiveId(Ljava/lang/String;)V

    .line 525
    const/4 v1, 0x1

    .line 526
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_liveId:Ljava/lang/String;

    .line 530
    :cond_8
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-eqz v8, :cond_9

    .line 531
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v8}, Lcom/letv/tracker/enums/UserType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setUserType(Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x1

    .line 533
    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    .line 536
    :cond_9
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 537
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 538
    const/4 v1, 0x1

    .line 539
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->rpt_networkModel:Ljava/lang/String;

    .line 543
    :cond_a
    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 544
    iget-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 545
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 546
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 547
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

    .line 548
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_b
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setActs(Ljava/util/List;)V

    .line 551
    const/4 v1, 0x1

    .line 554
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_c
    if-nez v1, :cond_d

    iget-object v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    .line 556
    :cond_d
    iget-wide v8, p0, Lcom/letv/tracker/agnes/VideoPlay;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setTime(J)V

    .line 557
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setId(Ljava/lang/String;)V

    .line 558
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setAppId(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 560
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_e
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    if-eqz v7, :cond_f

    .line 563
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setWidgetId(Ljava/lang/String;)V

    .line 565
    :cond_f
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "app_run_id"

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    if-eqz v7, :cond_10

    .line 567
    iget-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string v8, "caller"

    iget-object v9, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_10
    iget-object v6, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 571
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 572
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IVideoPlay;->setProps(Ljava/util/Map;)V

    .line 576
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
    .line 347
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void
.end method

.method public endAD()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 341
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "endBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public endCload()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public endGslb()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public endMediaSource()V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public endPhase(Ljava/lang/String;)V
    .locals 3
    .param p1, "phaseName"    # Ljava/lang/String;

    .prologue
    .line 438
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

    .line 439
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public endTheatreChain()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public endUserCenter()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Lcom/letv/tracker/enums/FailedCause;

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

    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;Ljava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Lcom/letv/tracker/enums/FailedCause;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    if-eqz p2, :cond_0

    .line 381
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    if-eqz p3, :cond_1

    .line 384
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Ljava/lang/String;

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

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method public failed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const-string v1, "cause"

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    if-eqz p3, :cond_1

    .line 396
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 10

    .prologue
    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, "ilen":I
    const/4 v0, 0x0

    .line 445
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 447
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v5, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 451
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 456
    if-eqz v1, :cond_0

    .line 457
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 458
    :cond_0
    if-eqz v5, :cond_1

    .line 459
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 465
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    return v3

    .line 460
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 461
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AgnesClient_VideoPlay"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 463
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 452
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 453
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "AgnesClient_VideoPlay"

    const-string v7, ""

    const-string v8, "can\'t get videoplay size"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 456
    if-eqz v0, :cond_3

    .line 457
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 458
    :cond_3
    if-eqz v4, :cond_2

    .line 459
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 460
    :catch_2
    move-exception v2

    .line 461
    const-string v6, "AgnesClient_VideoPlay"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 455
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 456
    :goto_2
    if-eqz v0, :cond_4

    .line 457
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 458
    :cond_4
    if-eqz v4, :cond_5

    .line 459
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 462
    :cond_5
    :goto_3
    throw v6

    .line 460
    :catch_3
    move-exception v2

    .line 461
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "AgnesClient_VideoPlay"

    const-string v8, ""

    const-string v9, "close output stream err"

    invoke-static {v7, v8, v9, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 455
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

    .line 452
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

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
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
    .line 113
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/PlayType;->getId()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/UserType;->getId()Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method public moveTo(IILcom/letv/tracker/enums/Operation;)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "op"    # Lcom/letv/tracker/enums/Operation;

    .prologue
    .line 319
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "to"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    if-eqz p3, :cond_0

    .line 323
    const-string v1, "op"

    invoke-virtual {p3}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method public pause(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 403
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 409
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "interval"    # I

    .prologue
    .line 308
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "interval"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "heartCount"

    iget v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method public setBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 1
    .param p1, "stream"    # Lcom/letv/tracker/enums/StreamType;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveId"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayerVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "playerVersion"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/letv/tracker/enums/PlayType;)V
    .locals 0
    .param p1, "type"    # Lcom/letv/tracker/enums/PlayType;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Lcom/letv/tracker/enums/UserType;)V
    .locals 0
    .param p1, "userType"    # Lcom/letv/tracker/enums/UserType;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(I)V
    .locals 0
    .param p1, "videoLength"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return-void
.end method

.method public startAD()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public startCload()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public startGslb()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public startMediaSource()V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public startPhase(Ljava/lang/String;)V
    .locals 3
    .param p1, "phaseName"    # Ljava/lang/String;

    .prologue
    .line 433
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

    .line 434
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method public startPlay(Lcom/letv/tracker/enums/PlayStart;)V
    .locals 3
    .param p1, "startType"    # Lcom/letv/tracker/enums/PlayStart;

    .prologue
    .line 266
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 268
    const-string v1, "startType"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/PlayStart;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public startTheatreChain()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public startUserCenter()V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public switchBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 3
    .param p1, "bitStream"    # Lcom/letv/tracker/enums/StreamType;

    .prologue
    .line 275
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 277
    const-string v1, "bitStream"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 285
    const-string v1, "bitStream"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 299
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 301
    const-string v1, "networkModel"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "stationId"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method
