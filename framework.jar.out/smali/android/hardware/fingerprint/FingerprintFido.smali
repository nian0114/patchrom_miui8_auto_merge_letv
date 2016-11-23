.class public final Landroid/hardware/fingerprint/FingerprintFido;
.super Ljava/lang/Object;
.source "FingerprintFido.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/fingerprint/FingerprintFido;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mFingerId:I

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;

.field private mUvt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/hardware/fingerprint/FingerprintFido$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFido$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFido;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mName:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mGroupId:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mFingerId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mDeviceId:J

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mUvt:[B

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/FingerprintFido$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/fingerprint/FingerprintFido$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintFido;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "fingerId"    # I
    .param p4, "deviceId"    # J
    .param p6, "uvt"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFido;->mName:Ljava/lang/CharSequence;

    .line 34
    iput p2, p0, Landroid/hardware/fingerprint/FingerprintFido;->mGroupId:I

    .line 35
    iput p3, p0, Landroid/hardware/fingerprint/FingerprintFido;->mFingerId:I

    .line 36
    iput-wide p4, p0, Landroid/hardware/fingerprint/FingerprintFido;->mDeviceId:J

    .line 37
    iput-object p6, p0, Landroid/hardware/fingerprint/FingerprintFido;->mUvt:[B

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mDeviceId:J

    return-wide v0
.end method

.method public getFingerId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mFingerId:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mGroupId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUvt()[B
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mUvt:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFido;->mUvt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 91
    return-void
.end method
