.class public Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;
.super Ljava/lang/Object;
.source "LetvDeepPowerSaveModeManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "LetvDeepPowerSaveModeManager"

.field private static sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;


# instance fields
.field private mDeepPowerSaveCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    new-instance v6, Landroid/leuipowersavemode/WifiPowerSaveCommand;

    invoke-direct {v6}, Landroid/leuipowersavemode/WifiPowerSaveCommand;-><init>()V

    .local v6, "wifiPowerSaveCommand":Landroid/leuipowersavemode/WifiPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;

    invoke-direct {v4}, Landroid/leuipowersavemode/TelephonyPowerSaveCommand;-><init>()V

    .local v4, "telephonyPowerSaveCommand":Landroid/leuipowersavemode/TelephonyPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;

    invoke-direct {v0}, Landroid/leuipowersavemode/BluetoothPowerSaveCommand;-><init>()V

    .local v0, "bluetothPowerSaveCommand":Landroid/leuipowersavemode/BluetoothPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/leuipowersavemode/VibratePowerSaveCommand;

    invoke-direct {v5}, Landroid/leuipowersavemode/VibratePowerSaveCommand;-><init>()V

    .local v5, "vibratePowerSaveCommand":Landroid/leuipowersavemode/VibratePowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/leuipowersavemode/GpsPowerSaveCommand;

    invoke-direct {v1}, Landroid/leuipowersavemode/GpsPowerSaveCommand;-><init>()V

    .local v1, "gpsPowerSaveCommand":Landroid/leuipowersavemode/GpsPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;

    invoke-direct {v3}, Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;-><init>()V

    .local v3, "screenOffTimeOutSaveCommand":Landroid/leuipowersavemode/ScreenOffTimeOutPowerSaveCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/leuipowersavemode/WindowAnimationScaleCommand;

    invoke-direct {v2}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;-><init>()V

    .local v2, "mWindowAnimationScaleCommand":Landroid/leuipowersavemode/WindowAnimationScaleCommand;
    iget-object v7, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    invoke-direct {v0, p0}, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    :cond_0
    sget-object v0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->sInstance:Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;

    return-object v0
.end method


# virtual methods
.method public getDeepPowerSaveModeControlLog()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;

    .local v0, "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    invoke-interface {v0}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->commandToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setDeepPowerSaveModeEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    iget-object v2, p0, Landroid/leuipowersavemode/LetvDeepPowerSaveModeManager;->mDeepPowerSaveCommands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;

    .local v0, "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "command":Landroid/leuipowersavemode/command/LetvDeepPowerSaveCommand;
    :cond_1
    return-void
.end method
