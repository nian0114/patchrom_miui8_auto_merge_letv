.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;
.super Ljava/lang/Object;
.source "Finger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFingerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger$1;

    invoke-direct {v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger$1;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fingerId"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->mFingerId:I

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->mFingerId:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
