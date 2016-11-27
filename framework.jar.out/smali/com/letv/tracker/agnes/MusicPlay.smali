.class public final Lcom/letv/tracker/agnes/MusicPlay;
.super Ljava/lang/Object;
.source "MusicPlay.java"


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 30
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    .line 34
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 39
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 42
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    .line 44
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;I)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "acName"    # Ljava/lang/String;
    .param p3, "duration"    # I

    .prologue
    .line 244
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

    .line 245
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
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
    .line 251
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

    .line 252
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v3, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v3, "duration"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
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

    .line 255
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2
    .param p1, "propName"    # Lcom/letv/tracker/enums/Key;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    .line 109
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
    .line 101
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "propValue":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_1
    return-void

    .line 102
    .restart local p2    # "propValue":Ljava/lang/String;
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 104
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
    .line 196
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "begin_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz p2, :cond_0

    .line 199
    const-string v1, "cause"

    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public buildMessage()Lcom/android/letv/agnes/service/beans/IMusicPlay;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 261
    new-instance v4, Lcom/android/letv/agnes/service/beans/IMusicPlay;

    invoke-direct {v4}, Lcom/android/letv/agnes/service/beans/IMusicPlay;-><init>()V

    .line 262
    .local v4, "imp":Lcom/android/letv/agnes/service/beans/IMusicPlay;
    const/4 v1, 0x0

    .line 264
    .local v1, "anyUpdate":Z
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    if-nez v8, :cond_0

    .line 265
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setSongId(Ljava/lang/String;)V

    .line 266
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 267
    const/4 v1, 0x1

    .line 270
    :cond_0
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setAlbumId(Ljava/lang/String;)V

    .line 272
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    .line 273
    const/4 v1, 0x1

    .line 276
    :cond_1
    iget v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    if-lez v8, :cond_2

    .line 277
    iget v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setMusicLength(I)V

    .line 278
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    .line 279
    const/4 v1, 0x1

    .line 282
    :cond_2
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 283
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setBitStream(Ljava/lang/String;)V

    .line 284
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    .line 285
    const/4 v1, 0x1

    .line 288
    :cond_3
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 289
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setFrom(Ljava/lang/String;)V

    .line 290
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    .line 291
    const/4 v1, 0x1

    .line 294
    :cond_4
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 295
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setStation(Ljava/lang/String;)V

    .line 296
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    .line 297
    const/4 v1, 0x1

    .line 300
    :cond_5
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-eqz v8, :cond_6

    .line 301
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v8}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 302
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    .line 303
    const/4 v1, 0x1

    .line 306
    :cond_6
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 307
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setPreMusicId(Ljava/lang/String;)V

    .line 308
    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    .line 309
    const/4 v1, 0x1

    .line 312
    :cond_7
    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 313
    iget-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 314
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 315
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
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

    .line 317
    .local v0, "ac":Lcom/letv/tracker/msg/bean/Action;
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/android/letv/agnes/service/beans/IAction;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v0    # "ac":Lcom/letv/tracker/msg/bean/Action;
    :cond_8
    invoke-virtual {v4, v3}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setActs(Ljava/util/List;)V

    .line 320
    const/4 v1, 0x1

    .line 323
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iacts":Ljava/util/List;, "Ljava/util/List<Lcom/android/letv/agnes/service/beans/IAction;>;"
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/letv/tracker/msg/bean/Action;>;"
    :cond_9
    if-nez v1, :cond_a

    iget-object v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 325
    :cond_a
    iget-wide v8, p0, Lcom/letv/tracker/agnes/MusicPlay;->timestamp:J

    invoke-virtual {v4, v8, v9}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setTime(J)V

    .line 326
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setId(Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setAppId(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 329
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v8, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_b
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 332
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setWidgetId(Ljava/lang/String;)V

    .line 334
    :cond_c
    iget-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v8, "app_run_id"

    iget-object v9, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v6, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 337
    .local v6, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 338
    invoke-virtual {v4, v6}, Lcom/android/letv/agnes/service/beans/IMusicPlay;->setProps(Ljava/util/Map;)V

    .line 342
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
    .line 211
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public endLoad()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "end_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public moveTo(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "moment"    # I

    .prologue
    .line 188
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "from"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "to"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public pause(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 231
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "prg"    # I

    .prologue
    .line 237
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3
    .param p1, "prg"    # I
    .param p2, "interval"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "prg"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "interval"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "heartCount"

    iget v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setMusicLength(I)V
    .locals 0
    .param p1, "musicLength"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/letv/tracker/enums/MusicPlayMode;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string v1, "playMode"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method public setPreMusic(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 1
    .param p1, "preOne"    # Lcom/letv/tracker/agnes/MusicPlay;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public startLoad()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 144
    return-void
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_bit_stream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "bitStream"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3
    .param p1, "networkModel"    # Lcom/letv/tracker/enums/NetworkModel;

    .prologue
    .line 162
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 164
    const-string v1, "networkModel"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public switchPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3
    .param p1, "playMode"    # Lcom/letv/tracker/enums/MusicPlayMode;

    .prologue
    .line 179
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_play_mode"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    if-eqz p1, :cond_0

    .line 181
    const-string v1, "playMode"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "action":Lcom/letv/tracker/msg/bean/Action;
    const-string v1, "stationId"

    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method
