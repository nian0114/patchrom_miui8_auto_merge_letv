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
    .line 235
    new-instance v0, Lcom/android/letv/agnes/service/beans/IVideoPlay$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IVideoPlay$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
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
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    .line 191
    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    .line 193
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    .line 194
    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    .line 195
    iput p7, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    .line 196
    iput-object p8, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    .line 197
    iput-object p9, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    .line 198
    iput-object p10, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    .line 199
    iput-object p11, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    .line 200
    iput-object p12, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    .line 201
    iput-object p13, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    .line 202
    iput-object p14, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    .line 204
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    .line 207
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    .line 183
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0
    .param p1, "liveId"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkModel"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    .line 21
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0
    .param p1, "userType"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setVideoLength(I)V
    .locals 0
    .param p1, "videoLength"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    .line 71
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 228
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 233
    return-void
.end method
