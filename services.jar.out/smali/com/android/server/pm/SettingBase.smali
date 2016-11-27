.class abstract Lcom/android/server/pm/SettingBase;
.super Ljava/lang/Object;
.source "SettingBase.java"


# instance fields
.field protected final mPermissionsState:Lcom/android/server/pm/PermissionsState;

.field pkgFlags:I

.field pkgFlagsEx:I

.field pkgPrivateFlags:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 35
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    .line 36
    return-void
.end method

.method constructor <init>(III)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgPrivateFlags"    # I
    .param p3, "pkgFlagsEx"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingBase;->setFlags(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/android/server/pm/SettingBase;->setFlagsEx(I)V

    .line 44
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0}, Lcom/android/server/pm/PermissionsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/SettingBase;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/pm/SettingBase;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 50
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 53
    iget v0, p1, Lcom/android/server/pm/SettingBase;->pkgFlagsEx:I

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlagsEx:I

    .line 55
    new-instance v0, Lcom/android/server/pm/PermissionsState;

    iget-object v1, p1, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState;-><init>(Lcom/android/server/pm/PermissionsState;)V

    iput-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    .line 56
    return-void
.end method


# virtual methods
.method public getPermissionsState()Lcom/android/server/pm/PermissionsState;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/pm/SettingBase;->mPermissionsState:Lcom/android/server/pm/PermissionsState;

    return-object v0
.end method

.method setFlags(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    .prologue
    .line 63
    const v0, 0x40001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgFlags:I

    .line 66
    return-void
.end method

.method setFlagsEx(I)V
    .locals 0
    .param p1, "pkgFlagsEx"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/server/pm/SettingBase;->pkgFlagsEx:I

    .line 78
    return-void
.end method

.method setPrivateFlags(I)V
    .locals 1
    .param p1, "pkgPrivateFlags"    # I

    .prologue
    .line 69
    and-int/lit8 v0, p1, 0xc

    iput v0, p0, Lcom/android/server/pm/SettingBase;->pkgPrivateFlags:I

    .line 72
    return-void
.end method
