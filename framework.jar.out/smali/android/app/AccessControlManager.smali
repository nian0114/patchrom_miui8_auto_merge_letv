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
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/AccessControlManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IAccessControlManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/IAccessControlManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AccessControlManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    return-void
.end method


# virtual methods
.method public addAccessControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAccessControlManager;->addAccessControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "addAccessControlPackage got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControlAllowed(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->checkAccessControlAllowed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "checkAccessControlAllowed got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

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
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->getAccessControlChangePackagesList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "getAccessControlChangePackagesList got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

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
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->getAccessControlPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "getAccessControlPackages got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAccessControlEnable()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->isAccessControlEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "isAccessControlEnable got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lockScreen()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->lockScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "lockScreen got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccessControlPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->removeAccessControlPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "removeAccessControlPackage got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnOn()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1}, Landroid/app/IAccessControlManager;->screenTurnOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "screenTurnOn got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1}, Landroid/app/IAccessControlManager;->setAccessControlEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "setAccessControlEnable got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppIgnoreCheckAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "ignore"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/app/AccessControlManager;->mService:Landroid/app/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IAccessControlManager;->setAppIgnoreCheckAccess(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccessControlManager"

    const-string v2, "setAppIgnoreCheckAccess got an exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
