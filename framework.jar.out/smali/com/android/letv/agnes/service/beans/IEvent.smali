.class public Lcom/android/letv/agnes/service/beans/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private pushId:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private time:J

.field private wid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/android/letv/agnes/service/beans/IEvent$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IEvent$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "wid"    # Ljava/lang/String;
    .param p6, "pushId"    # Ljava/lang/String;
    .param p7, "result"    # Ljava/lang/String;
    .param p8, "props"    # Ljava/util/Map;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->time:J

    .line 35
    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IEvent;->id:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IEvent;->wid:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IEvent;->appId:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/android/letv/agnes/service/beans/IEvent;->pushId:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/android/letv/agnes/service/beans/IEvent;->result:Ljava/lang/String;

    .line 40
    iput-object p8, p0, Lcom/android/letv/agnes/service/beans/IEvent;->props:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->time:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->wid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->appId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->props:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->pushId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->result:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->time:J

    .line 45
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IEvent;->wid:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->wid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->pushId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->result:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IEvent;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 105
    return-void
.end method
