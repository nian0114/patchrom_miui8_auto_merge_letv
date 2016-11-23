.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;
.super Ljava/lang/Object;
.source "Enrollee.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mEnrolleeId:Ljava/lang/String;

.field public final mIsAdmin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee$1;

    invoke-direct {v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee$1;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mEnrolleeId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mIsAdmin:Z

    .line 36
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "enrolleeId"    # Ljava/lang/String;
    .param p2, "isadmin"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mEnrolleeId:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mIsAdmin:Z

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mEnrolleeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;->mIsAdmin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
