.class public Lletv/leui/app/ColorModeManager;
.super Ljava/lang/Object;
.source "ColorModeManager.java"


# static fields
.field private static final DBG:Z = true

.field public static final PIC_MODE_CAMERA:I = 0x6

.field public static final PIC_MODE_EYE:I = 0x3

.field public static final PIC_MODE_IPHONE:I = 0x2

.field public static final PIC_MODE_MOVIE:I = 0x5

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_VIDEO:I = 0x4

.field public static final PIC_MODE_VIVID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ColorModeService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mService:Lcom/letv/leui/internel/IColorModeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lletv/leui/app/ColorModeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getService()Lcom/letv/leui/internel/IColorModeService;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    if-nez v0, :cond_0

    const-string v0, "leuicolormode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/internel/IColorModeService;

    move-result-object v0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    :cond_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addLinkToDeathListener()V
    .locals 4

    .prologue
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] addLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->addListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActiveMode()I
    .locals 4

    .prologue
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getActiveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeLinkToDeathListener()V
    .locals 4

    .prologue
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] removeLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->removeListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public revertToSettingsActiveMode()V
    .locals 4

    .prologue
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] revertToSettingsActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->revertToSettingsActiveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setActiveMode(I)V
    .locals 5
    .param p1, "colorMode"    # I

    .prologue
    const-string v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorModeManager] setActiveMode colorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/letv/leui/internel/IColorModeService;->setActiveMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setActiveMode(IZ)V
    .locals 5
    .param p1, "colorMode"    # I
    .param p2, "writeData"    # Z

    .prologue
    const-string v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorModeManager] setActiveMode colorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/letv/leui/internel/IColorModeService;->setWrteDataBaseActiveMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
