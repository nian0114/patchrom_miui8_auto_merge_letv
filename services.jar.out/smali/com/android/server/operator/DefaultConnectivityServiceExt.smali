.class public Lcom/android/server/operator/DefaultConnectivityServiceExt;
.super Ljava/lang/Object;
.source "DefaultConnectivityServiceExt.java"

# interfaces
.implements Lcom/android/server/IConnectivityServiceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "CDS/IConnectivityServiceExt"

.field private static final TDD_DATA_ONLY_SUPPORT:Z


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "ro.mtk_tdd_data_only_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/operator/DefaultConnectivityServiceExt;->TDD_DATA_ONLY_SUPPORT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "CDS/IConnectivityServiceExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method


# virtual methods
.method public UserPrompt()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "default UserPrompt"

    invoke-direct {p0, v0}, Lcom/android/server/operator/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public ignoreRequest(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "networkCapabilities"    # Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-string v0, "init in default"

    invoke-direct {p0, v0}, Lcom/android/server/operator/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lcom/android/server/operator/DefaultConnectivityServiceExt;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public isControlBySetting(II)Z
    .locals 2
    .param p1, "netType"    # I
    .param p2, "radio"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isControlBySetting: netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/operator/DefaultConnectivityServiceExt;->log(Ljava/lang/String;)V

    .line 76
    if-nez p2, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
