.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mHeight:I

.field public final mId:I

.field public final mIsDefault:Z

.field public final mModel:Ljava/lang/String;

.field public final mPpi:I

.field public final mRolled_enabled:Z

.field public final mVendor:Ljava/lang/String;

.field public final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;

    invoke-direct {v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "ppi"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "rolled_enabled"    # Z
    .param p8, "isdef"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mId:I

    iput-object p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mVendor:Ljava/lang/String;

    iput-object p3, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mModel:Ljava/lang/String;

    iput p4, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mPpi:I

    iput p5, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mWidth:I

    iput p6, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mHeight:I

    iput-boolean p7, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mRolled_enabled:Z

    iput-boolean p8, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mIsDefault:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mPpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mRolled_enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mIsDefault:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
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
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mPpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mRolled_enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/DeviceInfo;->mIsDefault:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
