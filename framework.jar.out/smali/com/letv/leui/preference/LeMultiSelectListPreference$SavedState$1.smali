.class final Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "LeMultiSelectListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
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
        "Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 294
    new-instance v0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 298
    new-array v0, p1, [Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;->newArray(I)[Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
