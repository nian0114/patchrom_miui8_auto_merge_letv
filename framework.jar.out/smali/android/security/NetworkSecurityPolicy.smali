.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public isCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isSendingTrafficPermittedByMom(I)Z
    .locals 7
    .param p1, "opType"    # I

    .prologue
    .line 99
    const-string v4, "appops"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 101
    .local v3, "service":Lcom/android/internal/app/IAppOpsService;
    const/4 v2, 0x1

    .line 103
    .local v2, "mode":I
    const/16 v4, 0x43

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/app/IAppOpsService;->noteOperationEx(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 107
    :goto_0
    if-nez v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 0
    .param p1, "permitted"    # Z

    .prologue
    .line 84
    invoke-static {p1}, Llibcore/net/NetworkSecurityPolicy;->setCleartextTrafficPermitted(Z)V

    .line 85
    return-void
.end method
