.class final Lcom/android/letv/agnes/service/beans/IEvent$1;
.super Ljava/lang/Object;
.source "IEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/letv/agnes/service/beans/IEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/letv/agnes/service/beans/IEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/letv/agnes/service/beans/IEvent;
    .locals 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 110
    new-instance v1, Lcom/android/letv/agnes/service/beans/IEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/letv/agnes/service/beans/IEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/letv/agnes/service/beans/IEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/letv/agnes/service/beans/IEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/letv/agnes/service/beans/IEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lcom/android/letv/agnes/service/beans/IEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/letv/agnes/service/beans/IEvent$1;->newArray(I)[Lcom/android/letv/agnes/service/beans/IEvent;

    move-result-object v0

    return-object v0
.end method
