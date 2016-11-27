.class public Lcom/android/letv/agnes/service/beans/IApp;
.super Ljava/lang/Object;
.source "IApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private store:Ljava/lang/String;

.field private time:J

.field private userid:Ljava/lang/String;

.field private version:Lcom/android/letv/agnes/service/beans/IVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/letv/agnes/service/beans/IApp$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IApp$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/letv/agnes/service/beans/IVersion;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "userid"    # Ljava/lang/String;
    .param p5, "store"    # Ljava/lang/String;
    .param p6, "version"    # Lcom/android/letv/agnes/service/beans/IVersion;
    .param p7, "props"    # Ljava/util/Map;
    .param p8, "acts"    # Ljava/util/List;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    .line 46
    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    .line 50
    iput-object p7, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    .line 51
    iput-object p8, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    return-wide v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/android/letv/agnes/service/beans/IVersion;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    .line 56
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setVersion(Lcom/android/letv/agnes/service/beans/IVersion;)V
    .locals 0
    .param p1, "version"    # Lcom/android/letv/agnes/service/beans/IVersion;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 107
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 108
    return-void
.end method
