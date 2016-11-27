.class public Lcom/android/letv/agnes/service/beans/IMusicPlay;
.super Ljava/lang/Object;
.source "IMusicPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IMusicPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private albumId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private bitStream:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private musicLength:I

.field private networkModel:Ljava/lang/String;

.field preMusicId:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private songId:Ljava/lang/String;

.field private station:Ljava/lang/String;

.field private time:J

.field private widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/letv/agnes/service/beans/IMusicPlay$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IMusicPlay$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "widgetId"    # Ljava/lang/String;
    .param p6, "songId"    # Ljava/lang/String;
    .param p7, "albumId"    # Ljava/lang/String;
    .param p8, "musicLength"    # I
    .param p9, "bitStream"    # Ljava/lang/String;
    .param p10, "from"    # Ljava/lang/String;
    .param p11, "station"    # Ljava/lang/String;
    .param p12, "networkModel"    # Ljava/lang/String;
    .param p13, "preMusicId"    # Ljava/lang/String;
    .param p14, "props"    # Ljava/util/Map;
    .param p15, "acts"    # Ljava/util/List;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    iput p8, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    iput-object p9, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    return v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPreMusicId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    return-void
.end method

.method public setMusicLength(I)V
    .locals 0
    .param p1, "musicLength"    # I

    .prologue
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkModel"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    return-void
.end method

.method public setPreMusicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "preMusicId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
