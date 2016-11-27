.class public Lcom/android/letv/agnes/service/beans/IResend;
.super Ljava/lang/Object;
.source "IResend.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/letv/agnes/service/beans/IResend;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/letv/agnes/service/beans/IResend$1;

    invoke-direct {v0}, Lcom/android/letv/agnes/service/beans/IResend$1;-><init>()V

    sput-object v0, Lcom/android/letv/agnes/service/beans/IResend;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/android/letv/agnes/service/beans/IResend;->type:I

    .line 17
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

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IResend;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "ty"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/letv/agnes/service/beans/IResend;->type:I

    .line 29
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/letv/agnes/service/beans/IResend;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/android/letv/agnes/service/beans/IResend;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
