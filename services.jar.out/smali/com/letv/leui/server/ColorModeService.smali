.class public Lcom/letv/leui/server/ColorModeService;
.super Lcom/letv/leui/internel/IColorModeService$Stub;
.source "ColorModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOGD_RULES:Z = false

.field private static final MAX_COLOR_WARM:I = 0x0

.field private static final MIN_COLOR_WARM:I = -0x64

.field private static final NORMAL_COLOR_WARM:I = -0x32

.field private static final TAG:Ljava/lang/String; = "ColorModeService"

.field private static final VERSION_M:I = 0x17


# instance fields
.field private mBlueLightEnable:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mColorMode:I

.field private mColorModeUtil:Landroid/colormode/IColorMode;

.field private mColorWarm:I

.field private mContext:Landroid/content/Context;

.field private mSetBlueLight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-direct {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;-><init>()V

    .line 56
    iput v5, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 57
    iput v5, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    .line 58
    iput v5, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    .line 61
    iput-boolean v5, p0, Lcom/letv/leui/server/ColorModeService;->mSetBlueLight:Z

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    .line 65
    new-instance v2, Lcom/letv/leui/server/ColorModeService$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/server/ColorModeService$1;-><init>(Lcom/letv/leui/server/ColorModeService;)V

    iput-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/letv/leui/server/ColorModeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_color_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "colormode":I
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_color_warm"

    const/16 v4, -0x32

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    .line 91
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_blue_light_enable"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    .line 93
    iput v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 95
    const-string v2, "ColorModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorModeService mColorMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/server/ColorModeService;)Landroid/colormode/IColorMode;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/server/ColorModeService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/server/ColorModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/server/ColorModeService;

    .prologue
    .line 44
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/server/ColorModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/server/ColorModeService;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/letv/leui/server/ColorModeService;->mSetBlueLight:Z

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/server/ColorModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/server/ColorModeService;

    .prologue
    .line 44
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    return v0
.end method

.method private setBlueLightStrength(IZ)V
    .locals 6
    .param p1, "strength"    # I
    .param p2, "writeDataBase"    # Z

    .prologue
    .line 365
    const-string v1, "ColorModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorModeService setBlueLightStrength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",writeDataBase:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    invoke-interface {v1, p1}, Landroid/colormode/IColorMode;->setBlueLightStrength(I)Z

    move-result v0

    .line 370
    .local v0, "b":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/server/ColorModeService;->mSetBlueLight:Z

    .line 372
    iput p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 375
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "leui_color_warm"

    iget v5, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 381
    const-string v1, "ColorModeService"

    const-string v4, "ColorModeService setBlueLightStrength sucess"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v0    # "b":Z
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v0    # "b":Z
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    .end local v0    # "b":Z
    .end local v2    # "token":J
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateBlueLightEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 316
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    .line 317
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_blue_light_enable"

    iget v4, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return-void

    .line 316
    .end local v0    # "token":J
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 322
    .restart local v0    # "token":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;-><init>(Lcom/letv/leui/server/ColorModeService;Landroid/os/IBinder;)V

    .line 227
    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :goto_1
    return-void

    .line 232
    :cond_0
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener already registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .restart local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public enableBlueLight(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 305
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService enableBlueLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0, p1}, Lcom/letv/leui/server/ColorModeService;->updateBlueLightEnable(Z)V

    .line 308
    if-eqz p1, :cond_0

    .line 309
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/server/ColorModeService;->setBlueLightStrength(IZ)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    goto :goto_0
.end method

.method public getActiveMode()I
    .locals 4

    .prologue
    .line 190
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_color_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "colormode":I
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorModeService getActiveMode colormode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v0
.end method

.method public getBlueLightStrength()I
    .locals 3

    .prologue
    .line 330
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService getBlueLightStrength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    return v0
.end method

.method public getDefaultBlueLightStrength()I
    .locals 1

    .prologue
    .line 350
    const/16 v0, -0x32

    return v0
.end method

.method public getMaxBlueLightStrength()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getMinBlueLightStrength()I
    .locals 1

    .prologue
    .line 344
    const/16 v0, -0x64

    return v0
.end method

.method public isBlueLightEnabled()Z
    .locals 3

    .prologue
    .line 295
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService isBlueLightEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerColorUtil(Landroid/colormode/IColorMode;)V
    .locals 3
    .param p1, "colorModeUtil"    # Landroid/colormode/IColorMode;

    .prologue
    .line 255
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService registerColorUtil:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBlueLightEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mColorWarm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    .line 258
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    if-eqz v0, :cond_0

    .line 259
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eqz v0, :cond_0

    .line 267
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    goto :goto_0
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 240
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeListener cb is contained in map:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    .line 244
    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 245
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :cond_0
    return-void
.end method

.method public revertToSettingsActiveMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorModeService revertToSettingsActiveMode mBlueLightEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mColorWarm:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mColorMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-eqz v1, :cond_1

    .line 208
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorWarm:I

    invoke-direct {p0, v1, v4}, Lcom/letv/leui/server/ColorModeService;->setBlueLightStrength(IZ)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_color_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, "colormode":I
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eq v1, v0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    goto :goto_0
.end method

.method public setActiveMode(I)Z
    .locals 3
    .param p1, "colorMode"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-ne p1, v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService setActiveMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setBlueLightStrength(I)V
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/server/ColorModeService;->setBlueLightStrength(IZ)V

    .line 358
    return-void
.end method

.method public setDafalutMode(I)Z
    .locals 4
    .param p1, "colorMode"    # I

    .prologue
    .line 116
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorModeService setDafalutMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    invoke-interface {v1, p1}, Landroid/colormode/IColorMode;->setColorMode(I)Z

    move-result v0

    .line 121
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 122
    iput p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    .line 124
    const-string v1, "ColorModeService"

    const-string v2, "ColorModeService setActiveMode sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "b":Z
    :cond_0
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v1

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWrteDataBaseActiveMode(IZ)V
    .locals 6
    .param p1, "colorMode"    # I
    .param p2, "writeDataBase"    # Z

    .prologue
    .line 158
    const-string v1, "ColorModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorModeService setWrteDataBaseActiveMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",writeDataBase:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    move-result v0

    .line 174
    .local v0, "b":Z
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 175
    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/letv/leui/server/ColorModeService;->updateBlueLightEnable(Z)V

    .line 178
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 180
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "leui_color_mode"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .end local v2    # "token":J
    :cond_1
    return-void

    .line 183
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 137
    const-string v1, "ColorModeService"

    const-string v2, "ColorModeService systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 141
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.leui.colormode"

    const-string v3, "com.letv.leui.colormode.ColorModeInteractiveService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 149
    return-void

    .line 144
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.android.powercontroller"

    const-string v3, "com.letv.android.colormode.ColorModeInteractiveService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
