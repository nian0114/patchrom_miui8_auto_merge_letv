.class public Lcom/android/letv/agnes/service/beans/IVersion;
.super Ljava/lang/Object;
.source "IVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private build:Ljava/lang/String;

.field private major:I

.field private minor:I

.field private patch:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/letv/agnes/service/beans/IVersion$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IVersion$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I
    .param p4, "build"    # Ljava/lang/String;
    .param p5, "version"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    .line 20
    iput p2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    .line 21
    iput p3, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    .line 22
    iput-object p4, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "build"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    .line 28
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    .line 36
    return-void
.end method

.method public setPatch(I)V
    .locals 0
    .param p1, "patch"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    .line 44
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "%d.%d.%d.%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_1
    const-string v0, "%d.%d.%d"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->major:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->minor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->patch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
