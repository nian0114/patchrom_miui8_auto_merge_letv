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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    .line 38
    iput-object p1, p0, Lletv/leui/app/ColorModeManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private declared-synchronized getService()Lcom/letv/leui/internel/IColorModeService;
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "leuicolormode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/internel/IColorModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/leui/internel/IColorModeService;

    move-result-object v0

    iput-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;

    .line 49
    :cond_0
    iget-object v0, p0, Lletv/leui/app/ColorModeManager;->mService:Lcom/letv/leui/internel/IColorModeService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addLinkToDeathListener()V
    .locals 4

    .prologue
    .line 264
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] addLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 268
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 269
    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->addListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    return-void

    .line 271
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enableBlueLight(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 155
    const-string v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorModeManager] enableBlueLight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 159
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1, p1}, Lcom/letv/leui/internel/IColorModeService;->enableBlueLight(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    return-void

    .line 162
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActiveMode()I
    .locals 4

    .prologue
    .line 117
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 121
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getActiveMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    :goto_0
    return v2

    .line 124
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBlueLightStrength()I
    .locals 4

    .prologue
    .line 172
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getBlueLightStrength"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 176
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 177
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getBlueLightStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 183
    :goto_0
    return v2

    .line 179
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 183
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultBlueLightStrength()I
    .locals 4

    .prologue
    .line 227
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getMinBlueLightStrength"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 231
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getDefaultBlueLightStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 238
    :goto_0
    return v2

    .line 234
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 238
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxBlueLightStrength()I
    .locals 4

    .prologue
    .line 190
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getMaxBlueLightStrength"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 194
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getMaxBlueLightStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 201
    :goto_0
    return v2

    .line 197
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinBlueLightStrength()I
    .locals 4

    .prologue
    .line 209
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] getMinBlueLightStrength"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 213
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->getMinBlueLightStrength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 220
    :goto_0
    return v2

    .line 216
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 220
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBlueLightEnabled()Z
    .locals 4

    .prologue
    .line 136
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] isBlueLightEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 140
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->isBlueLightEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 147
    :goto_0
    return v2

    .line 143
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 147
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeLinkToDeathListener()V
    .locals 4

    .prologue
    .line 282
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] removeLinkToDeathListener "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 286
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 287
    iget-object v2, p0, Lletv/leui/app/ColorModeManager;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/letv/leui/internel/IColorModeService;->removeListener(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    return-void

    .line 289
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public revertToSettingsActiveMode()V
    .locals 4

    .prologue
    .line 78
    const-string v2, "ColorModeService"

    const-string v3, "[ColorModeManager] revertToSettingsActiveMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 82
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Lcom/letv/leui/internel/IColorModeService;->revertToSettingsActiveMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    return-void

    .line 85
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setActiveMode(I)V
    .locals 5
    .param p1, "colorMode"    # I

    .prologue
    .line 58
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

    .line 61
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 62
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1, p1}, Lcom/letv/leui/internel/IColorModeService;->setActiveMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    return-void

    .line 65
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 67
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
    .line 97
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

    .line 100
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 101
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v1, p1, p2}, Lcom/letv/leui/internel/IColorModeService;->setWrteDataBaseActiveMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    return-void

    .line 104
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setBlueLightStrength(I)V
    .locals 5
    .param p1, "strength"    # I

    .prologue
    .line 246
    const-string v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorModeManager] setBlueLightStrength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_0
    invoke-direct {p0}, Lletv/leui/app/ColorModeManager;->getService()Lcom/letv/leui/internel/IColorModeService;

    move-result-object v1

    .line 250
    .local v1, "svc":Lcom/letv/leui/internel/IColorModeService;
    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v1, p1}, Lcom/letv/leui/internel/IColorModeService;->setBlueLightStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    return-void

    .line 253
    .end local v1    # "svc":Lcom/letv/leui/internel/IColorModeService;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
