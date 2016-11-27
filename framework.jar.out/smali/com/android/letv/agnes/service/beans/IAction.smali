.class public Lcom/android/letv/agnes/service/beans/IAction;
.super Ljava/lang/Object;
.source "IAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/android/letv/agnes/service/beans/IAction$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IAction$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "des"    # Ljava/lang/String;
    .param p5, "props"    # Ljava/util/Map;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IAction;->timestamp:J

    .line 31
    iput-object p3, p0, Lcom/android/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->timestamp:J

    return-wide v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    .line 23
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/android/letv/agnes/service/beans/IAction;->timestamp:J

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 71
    return-void
.end method
