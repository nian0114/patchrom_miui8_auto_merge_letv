.class final Landroid/webkit/h5video/H5VideoInfo$1;
.super Ljava/lang/Object;
.source "H5VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/h5video/H5VideoInfo;
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
        "Landroid/webkit/h5video/H5VideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/webkit/h5video/H5VideoInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 141
    new-instance v0, Landroid/webkit/h5video/H5VideoInfo;

    invoke-direct {v0, p1}, Landroid/webkit/h5video/H5VideoInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/webkit/h5video/H5VideoInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/webkit/h5video/H5VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/webkit/h5video/H5VideoInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 147
    new-array v0, p1, [Landroid/webkit/h5video/H5VideoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/webkit/h5video/H5VideoInfo$1;->newArray(I)[Landroid/webkit/h5video/H5VideoInfo;

    move-result-object v0

    return-object v0
.end method
