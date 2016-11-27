.class final Landroid/net/NetSniffer$1;
.super Ljava/lang/Object;
.source "NetSniffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetSniffer;
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
        "Landroid/net/NetSniffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetSniffer;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "httpurl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/net/NetSniffer;

    invoke-direct {v1}, Landroid/net/NetSniffer;-><init>()V

    .local v1, "mNetSniffer":Landroid/net/NetSniffer;
    :goto_0
    return-object v1

    .end local v1    # "mNetSniffer":Landroid/net/NetSniffer;
    :cond_1
    new-instance v1, Landroid/net/NetSniffer;

    invoke-direct {v1, v0}, Landroid/net/NetSniffer;-><init>(Ljava/lang/String;)V

    .restart local v1    # "mNetSniffer":Landroid/net/NetSniffer;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetSniffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetSniffer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetSniffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/NetSniffer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/NetSniffer$1;->newArray(I)[Landroid/net/NetSniffer;

    move-result-object v0

    return-object v0
.end method
