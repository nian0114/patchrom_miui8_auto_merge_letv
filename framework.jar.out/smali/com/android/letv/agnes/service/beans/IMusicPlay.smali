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
    .line 199
    new-instance v0, Lcom/android/letv/agnes/service/beans/IMusicPlay$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IMusicPlay$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
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
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    .line 161
    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    .line 164
    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    .line 165
    iput-object p7, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    .line 166
    iput p8, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    .line 167
    iput-object p9, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    .line 168
    iput-object p10, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    .line 169
    iput-object p11, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    .line 170
    iput-object p12, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    .line 173
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    .line 174
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicLength()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    return v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPreMusicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    .line 151
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitStream"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMusicLength(I)V
    .locals 0
    .param p1, "musicLength"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    .line 81
    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkModel"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPreMusicId(Ljava/lang/String;)V
    .locals 0
    .param p1, "preMusicId"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    .line 141
    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    .line 21
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 197
    return-void
.end method
