.class public Lcom/android/letv/agnes/service/beans/IVideoPlay;
.super Ljava/lang/Object;
.source "IVideoPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IVideoPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private appId:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private networkModel:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private station:Ljava/lang/String;

.field private stream:Ljava/lang/String;

.field private time:J

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userType:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoLength:I

.field private widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/letv/agnes/service/beans/IVideoPlay$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IVideoPlay$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "widgetId"    # Ljava/lang/String;
    .param p6, "videoId"    # Ljava/lang/String;
    .param p7, "videoLength"    # I
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "stream"    # Ljava/lang/String;
    .param p10, "url"    # Ljava/lang/String;
    .param p11, "from"    # Ljava/lang/String;
    .param p12, "version"    # Ljava/lang/String;
    .param p13, "props"    # Ljava/util/Map;
    .param p14, "station"    # Ljava/lang/String;
    .param p15, "liveId"    # Ljava/lang/String;
    .param p16, "userType"    # Ljava/lang/String;
    .param p17, "networkModel"    # Ljava/lang/String;
    .param p18, "acts"    # Ljava/util/List;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    iput p7, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    iput-object p8, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    iput-object p13, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    iput-object p14, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

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
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkModel"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0
    .param p1, "userType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(I)V
    .locals 0
    .param p1, "videoLength"    # I

    .prologue
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
