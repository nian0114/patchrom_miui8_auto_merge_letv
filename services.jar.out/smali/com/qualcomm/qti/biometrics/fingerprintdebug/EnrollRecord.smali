.class public Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;
.super Ljava/lang/Object;
.source "EnrollRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dbStatus:I

.field public final mEnrollee:Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

.field public final mEnrollmentDate:Ljava/util/Date;

.field public final mFingers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord$1;

    invoke-direct {v0}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord$1;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollee:Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    .line 45
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollmentDate:Ljava/util/Date;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "fingers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;>;"
    const-class v1, Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->dbStatus:I

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;JLjava/util/List;I)V
    .locals 2
    .param p1, "enrollee"    # Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;
    .param p2, "enrollmentDate"    # J
    .param p5, "dbStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p4, "fingers":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/qti/biometrics/fingerprintdebug/Finger;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollee:Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollmentDate:Ljava/util/Date;

    .line 26
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    .line 27
    iget p5, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->dbStatus:I

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollee:Lcom/qualcomm/qti/biometrics/fingerprintdebug/Enrollee;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mEnrollmentDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->mFingers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 62
    iget v0, p0, Lcom/qualcomm/qti/biometrics/fingerprintdebug/EnrollRecord;->dbStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
