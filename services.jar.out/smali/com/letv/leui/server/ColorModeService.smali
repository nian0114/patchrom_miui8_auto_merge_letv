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

.field private static final TAG:Ljava/lang/String; = "ColorModeService"

.field private static final VERSION_M:I = 0x17


# instance fields
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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/letv/leui/internel/IColorModeService$Stub;-><init>()V

    iput v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_color_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "colormode":I
    iput v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorModeService mColorMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

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

    new-instance v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;-><init>(Lcom/letv/leui/server/ColorModeService;Landroid/os/IBinder;)V

    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :goto_1
    return-void

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

    .restart local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActiveMode()I
    .locals 3

    .prologue
    const-string v0, "ColorModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorModeService getActiveMode colormode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    return v0
.end method

.method public registerColorUtil(Landroid/colormode/IColorMode;)V
    .locals 1
    .param p1, "colorModeUtil"    # Landroid/colormode/IColorMode;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    :cond_0
    return-void
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
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

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;

    .local v0, "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "deathHandler":Lcom/letv/leui/server/ColorModeService$ColorServiceDeathHandler;
    :cond_0
    return-void
.end method

.method public revertToSettingsActiveMode()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_color_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "colormode":I
    const-string v1, "ColorModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorModeService revertToSettingsActiveMode colormode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mColorMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    :cond_0
    return-void
.end method

.method public setActiveMode(I)Z
    .locals 3
    .param p1, "colorMode"    # I

    .prologue
    iget v0, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

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

    invoke-virtual {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setDafalutMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setDafalutMode(I)Z
    .locals 4
    .param p1, "colorMode"    # I

    .prologue
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

    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;

    invoke-interface {v1, p1}, Landroid/colormode/IColorMode;->setColorMode(I)Z

    move-result v0

    .local v0, "b":Z
    if-eqz v0, :cond_0

    iput p1, p0, Lcom/letv/leui/server/ColorModeService;->mColorMode:I

    const-string v1, "ColorModeService"

    const-string v2, "ColorModeService setActiveMode sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "b":Z
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWrteDataBaseActiveMode(IZ)V
    .locals 6
    .param p1, "colorMode"    # I
    .param p2, "writeDataBase"    # Z

    .prologue
    const-string v1, "ColorModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ColorModeService setActiveMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/letv/leui/server/ColorModeService;->setActiveMode(I)Z

    move-result v0

    .local v0, "b":Z
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "leui_color_mode"

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "token":J
    :cond_0
    return-void

    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public systemReady()V
    .locals 4

    .prologue
    const-string v1, "ColorModeService"

    const-string v2, "ColorModeService systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.leui.colormode"

    const-string v3, "com.letv.leui.colormode.ColorModeInteractiveService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.letv.android.powercontroller"

    const-string v3, "com.letv.android.colormode.ColorModeInteractiveService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
