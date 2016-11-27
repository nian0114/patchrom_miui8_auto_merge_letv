.class public Landroid/webkit/h5video/H5VideoInfo;
.super Ljava/lang/Object;
.source "H5VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/webkit/h5video/H5VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_FROM_H5:I = 0x1

.field public static final VIDEO_FROM_MTT:I = 0x2

.field public static final VIDEO_FROM_NONE:I


# instance fields
.field public mDuration:I

.field public mFromWhere:I

.field public mHasClicked:Z

.field public mIsForceSniff:Z

.field public mIsFromH5Video:Z

.field public mMimeType:Ljava/lang/String;

.field public mNodePointer:I

.field public mPostion:I

.field public mPrivateBrowsingEnabled:Z

.field public mScreenMode:I

.field public mSnifferReffer:Ljava/lang/String;

.field public mUA:Ljava/lang/String;

.field public mVideoId:I

.field public mVideoUrl:Ljava/lang/String;

.field public mWebTitle:Ljava/lang/String;

.field public mWebUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/webkit/h5video/H5VideoInfo$1;

    invoke-direct {v0}, Landroid/webkit/h5video/H5VideoInfo$1;-><init>()V

    sput-object v0, Landroid/webkit/h5video/H5VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    const/16 v0, 0x66

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    iput v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "pl"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    const/16 v0, 0x66

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    iput v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    iput-boolean v2, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public static copy(Landroid/webkit/h5video/H5VideoInfo;)Landroid/webkit/h5video/H5VideoInfo;
    .locals 2
    .param p0, "info"    # Landroid/webkit/h5video/H5VideoInfo;

    .prologue
    new-instance v0, Landroid/webkit/h5video/H5VideoInfo;

    invoke-direct {v0}, Landroid/webkit/h5video/H5VideoInfo;-><init>()V

    .local v0, "newInfo":Landroid/webkit/h5video/H5VideoInfo;
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    iget v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    iput v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    iget-boolean v1, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    iput-boolean v1, v0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "falg"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mNodePointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPostion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mScreenMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mWebTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mUA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mSnifferReffer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mPrivateBrowsingEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mFromWhere:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsForceSniff:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mHasClicked:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/webkit/h5video/H5VideoInfo;->mIsFromH5Video:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
