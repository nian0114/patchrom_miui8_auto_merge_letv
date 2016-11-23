.class public final Lcom/letv/tracker/agnes/MusicPlay;
.super Ljava/lang/Object;
.source "MusicPlay.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAXLEN:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "AgnesClient_MusicPlay"


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

.field private albumId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

.field private bitStream:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private heartCount:I

.field private id:Ljava/lang/String;

.field private msglen:I

.field private musicLength:I

.field private networkModel:Lcom/letv/tracker/enums/NetworkModel;

.field private preMusicId:Ljava/lang/String;

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

.field private songId:Ljava/lang/String;

.field private songIdReported:Z

.field private station:Ljava/lang/String;

.field private timestamp:J

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 96
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->msglen:I

    .line 34
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 36
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 38
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "runId"    # Ljava/lang/String;
    .param p3, "verison"    # Lcom/letv/tracker/msg/bean/Version;
    .param p4, "widgetId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 96
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->msglen:I

    .line 43
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 45
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    .line 50
    return-void
.end method

.method public static getMAXLEN()I
    .locals 1

    .prologue
    .line 31
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
    .line 252
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

    .line 253
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
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
    .line 259
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

    .line 260
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v3, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v3, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
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

    .line 263
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void

    .line 117
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
    .line 109
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_1
    return-void

    .line 110
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

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
    .line 204
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "begin_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IMusicPlay;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 295
    new-instance v4, Lcom/android/letv/agnes/service/beans/IMusicPlay;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IMusicPlay;-><init>()V

    .line 296
    .local v4, "imp":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    const/4 v1, 0x0

    .line 298
    .local v1, "anyUpdate":Z
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    if-nez v8, :cond_0

    .line 299
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setSongId(Ljava/lang/String;)V

    .line 300
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 301
    const/4 v1, 0x1

    .line 304
    :cond_0
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 305
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setAlbumId(Ljava/lang/String;)V

    .line 306
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    .line 307
    const/4 v1, 0x1

    .line 310
    :cond_1
    iget v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    if-lez v8, :cond_2

    .line 311
    iget v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setMusicLength(I)V

    .line 312
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    .line 313
    const/4 v1, 0x1

    .line 316
    :cond_2
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 317
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setBitStream(Ljava/lang/String;)V

    .line 318
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    .line 319
    const/4 v1, 0x1

    .line 322
    :cond_3
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 323
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setFrom(Ljava/lang/String;)V

    .line 324
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    .line 325
    const/4 v1, 0x1

    .line 328
    :cond_4
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 329
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setStation(Ljava/lang/String;)V

    .line 330
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    .line 331
    const/4 v1, 0x1

    .line 334
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v8, :cond_6

    .line 335
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v8}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 336
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    .line 337
    const/4 v1, 0x1

    .line 340
    :cond_6
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 341
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setPreMusicId(Ljava/lang/String;)V

    .line 342
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    .line 343
    const/4 v1, 0x1

    .line 346
    :cond_7
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 347
    iget-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 348
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v3, "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 351
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_8
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setActs(Ljava/util/List;)V

    .line 354
    const/4 v1, 0x1

    .line 357
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_9
    if-nez v1, :cond_a

    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 359
    :cond_a
    iget-wide v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setTime(J)V

    .line 360
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setId(Ljava/lang/String;)V

    .line 361
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setAppId(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 363
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v8, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_b
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 366
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setWidgetId(Ljava/lang/String;)V

    .line 368
    :cond_c
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v8, "app_run_id"

    iget-object v9, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v6, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 371
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 372
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setProps(Ljava/util/Map;)V

    .line 376
    .end local v4    # "imp":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    .end local v6    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .restart local v4    # "imp":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    :cond_d
    move-object v4, v7

    goto :goto_1
.end method

.method public cancel(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 219
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

.method public endLoad()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsglen()I
    .locals 10

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "ilen":I
    const/4 v0, 0x0

    .line 271
    .local v0, "bs":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 273
    .local v4, "os":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .local v5, "os":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 277
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    .line 282
    if-eqz v1, :cond_0

    .line 283
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 284
    :cond_0
    if-eqz v5, :cond_1

    .line 285
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 291
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :goto_0
    return v3

    .line 286
    .end local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "os":Ljava/io/ObjectOutputStream;
    .restart local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "os":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 287
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "AgnesClient_MusicPlay"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ObjectOutputStream;
    .restart local v4    # "os":Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .line 289
    .end local v1    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bs":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 278
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 279
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "AgnesClient_MusicPlay"

    const-string v7, ""

    const-string v8, "can\'t get musicplay size"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 284
    :cond_3
    if-eqz v4, :cond_2

    .line 285
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 286
    :catch_2
    move-exception v2

    .line 287
    const-string v6, "AgnesClient_MusicPlay"

    const-string v7, ""

    const-string v8, "close output stream err"

    invoke-static {v6, v7, v8, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 281
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 282
    :goto_2
    if-eqz v0, :cond_4

    .line 283
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 284
    :cond_4
    if-eqz v4, :cond_5

    .line 285
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 288
    :cond_5
    :goto_3
    throw v6

    .line 286
    :catch_3
    move-exception v2

    .line 287
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "AgnesClient_MusicPlay"

    const-string v8, ""

    const-string v9, "close output stream err"

    invoke-static {v7, v8, v9, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 281
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

    .line 278
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

.method public launch()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public moveTo(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "moment"    # I

    .prologue
    .line 196
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "to"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public pause(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 239
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 245
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "interval"    # I

    .prologue
    .line 179
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "interval"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "heartCount"

    iget v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setMusicLength(I)V
    .locals 0
    .param p1, "musicLength"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/letv/tracker/enums/MusicPlayMode;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v1, "playMode"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    return-void
.end method

.method public setPreMusic(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 1
    .param p1, "preOne"    # Lcom/letv/tracker/agnes/MusicPlay;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public startLoad()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 152
    return-void
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bit_stream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "bitStream"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 170
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 172
    const-string v1, "networkModel"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public switchPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3
    .param p1, "playMode"    # Lcom/letv/tracker/enums/MusicPlayMode;

    .prologue
    .line 187
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_play_mode"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 189
    const-string v1, "playMode"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "stationId"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method
