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
    new-instance v0, Lcom/android/letv/agnes/service/beans/IApp$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IApp$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    iput-object p7, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    iput-object p8, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

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
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    return-wide v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/android/letv/agnes/service/beans/IVersion;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .param p1, "acts"    # Ljava/util/List;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Lcom/android/letv/agnes/service/beans/IVersion;)V
    .locals 0
    .param p1, "version"    # Lcom/android/letv/agnes/service/beans/IVersion;

    .prologue
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->version:Lcom/android/letv/agnes/service/beans/IVersion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
