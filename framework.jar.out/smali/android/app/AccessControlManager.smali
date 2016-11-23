.class public Landroid/app/AccessControlManager;
.super Ljava/lang/Object;
.source "AccessControlManager.java"


# static fields
.field public static final ACCESS_RESULT_CHECK:I = 0x1

.field public static final ACCESS_RESULT_IGNORE:I = 0x2

.field public static final ACCESS_RESULT_NONE:I = 0x0

.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AccessControlManager"

.field public static final TASK_THUMBNAIL_INVALID:I = -0x1

.field public static final TASK_THUMBNAIL_MOSAIC:I = 0x1

.field public static final TASK_THUMBNAIL_VIVID:I = 0x0

.field public static final TYPE_ACCESS_FLINGERPRINT:I = 0x4

.field public static final TYPE_ACCESS_PASSWORD:I = 0x1

.field public static final TYPE_ACCESS_PATTERN:I = 0x2


# instance fields
.field final mContext:Landroid/content/Context;

.field private mService:Landroid/app/IAccessControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/AccessControlManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IAccessControlManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IAccessControlManager;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/app/AccessControlManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    .line 42
    return-void
.end method


# virtual methods
.method public addAccessControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAccessControlManager;->addAccessControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "addAccessControlPackage got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControlAllowed(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->checkAccessControlAllowed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "checkAccessControlAllowed got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 70
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccessControlChangePackagesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageAccessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->getAccessControlChangePackagesList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "getAccessControlChangePackagesList got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccessControlPackages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->getAccessControlPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "getAccessControlPackages got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAccessControlEnable()Z
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->isAccessControlEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "isAccessControlEnable got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockScreen()V
    .locals 3

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->lockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "lockScreen got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccessControlPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->removeAccessControlPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "removeAccessControlPackage got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnOn()V
    .locals 3

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->screenTurnOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "screenTurnOn got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->setAccessControlEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "setAccessControlEnable got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppIgnoreCheckAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ignore"    # Z

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAccessControlManager;->setAppIgnoreCheckAccess(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string/jumbo v2, "setAppIgnoreCheckAccess got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
