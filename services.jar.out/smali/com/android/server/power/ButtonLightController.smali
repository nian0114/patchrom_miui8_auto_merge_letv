.class public final Lcom/android/server/power/ButtonLightController;
.super Ljava/lang/Object;
.source "ButtonLightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;,
        Lcom/android/server/power/ButtonLightController$SettingsObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_BUTTON_TIMEOUT:I = 0xc8

.field private static final SCREEN_BUTTON_LIGHT_DURATION_LEUI:I = 0x7d0

.field private static final SCREEN_BUTTON_LIGHT_DURATION_LEUI_LOCK:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "ButtonLightController"


# instance fields
.field public mBackLightSetting:I

.field private mButtonLight:Lcom/android/server/lights/Light;

.field final mDelayBehindServices:Z

.field private mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLowPowerMode:Z

.field final mQueueName:Ljava/lang/String;

.field final mService:Lcom/android/server/power/PowerManagerService;

.field private mSettingsObserver:Lcom/android/server/power/ButtonLightController$SettingsObserver;

.field public mVirtualKeyForhidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ButtonLightController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "allowDelayBehindServices"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/power/ButtonLightController;->mService:Lcom/android/server/power/PowerManagerService;

    .line 33
    iput-object p2, p0, Lcom/android/server/power/ButtonLightController;->mQueueName:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/android/server/power/ButtonLightController;->mDelayBehindServices:Z

    .line 35
    invoke-direct {p0}, Lcom/android/server/power/ButtonLightController;->initialize()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ButtonLightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ButtonLightController;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/server/power/ButtonLightController;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/ButtonLightController;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ButtonLightController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private handleSettingsChangedLocked()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/server/power/ButtonLightController;->updateSettingsLocked()V

    .line 51
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 129
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 130
    .local v0, "mLightsManager":Lcom/android/server/lights/LightsManager;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    .line 131
    new-instance v2, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;-><init>(Lcom/android/server/power/ButtonLightController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    .line 132
    new-instance v2, Lcom/android/server/power/ButtonLightController$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/ButtonLightController$SettingsObserver;-><init>(Lcom/android/server/power/ButtonLightController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/power/ButtonLightController;->mSettingsObserver:Lcom/android/server/power/ButtonLightController$SettingsObserver;

    .line 133
    iget-object v2, p0, Lcom/android/server/power/ButtonLightController;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "leui_virtual_key_backlight_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ButtonLightController;->mSettingsObserver:Lcom/android/server/power/ButtonLightController$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    const-string v2, "leui_power_save_switch"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ButtonLightController;->mSettingsObserver:Lcom/android/server/power/ButtonLightController$SettingsObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 140
    invoke-direct {p0}, Lcom/android/server/power/ButtonLightController;->updateSettingsLocked()V

    .line 141
    return-void
.end method

.method private updateSettingsLocked()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/power/ButtonLightController;->updateSettingsLockedInternal()V

    .line 54
    return-void
.end method

.method private updateSettingsLockedInternal()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 56
    iget-object v4, p0, Lcom/android/server/power/ButtonLightController;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 57
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "leui_virtual_key_backlight_settings"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "backLightSetting":I
    iget v4, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    if-eq v0, v4, :cond_0

    .line 60
    iput v0, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/power/ButtonLightController;->changeBackLight()V

    .line 63
    :cond_0
    const-string v4, "leui_power_save_switch"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_2

    .line 65
    .local v1, "isPowerSaveMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/power/ButtonLightController;->mLowPowerMode:Z

    if-eq v3, v1, :cond_1

    .line 66
    iput-boolean v1, p0, Lcom/android/server/power/ButtonLightController;->mLowPowerMode:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/server/power/ButtonLightController;->lowPowerModeChangeBackLightMode()V

    .line 68
    invoke-virtual {p0}, Lcom/android/server/power/ButtonLightController;->changeBackLight()V

    .line 70
    :cond_1
    return-void

    .end local v1    # "isPowerSaveMode":Z
    :cond_2
    move v1, v3

    .line 63
    goto :goto_0
.end method


# virtual methods
.method public changeBackLight()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/server/power/ButtonLightController;->lowPowerModeChangeBackLightMode()V

    .line 84
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ButtonLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBackLightSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVirtualKeyForhidden = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/ButtonLightController;->mVirtualKeyForhidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/power/ButtonLightController;->mVirtualKeyForhidden:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 87
    const-string v0, "ButtonLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBackLight mButtonBrightness ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method

.method public handleButtonTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xc8

    .line 94
    iget-object v1, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->removeMessages(I)V

    .line 95
    iget-object v1, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 98
    iget-object v1, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 99
    const-string v1, "ButtonLightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: MSG_BUTTON_TIMEOUT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/ButtonLightController;->mHandler:Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->hasMessages(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public lowPowerModeChangeBackLightMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-boolean v0, p0, Lcom/android/server/power/ButtonLightController;->mLowPowerMode:Z

    if-eqz v0, :cond_1

    .line 73
    iget v0, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 74
    iput v2, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    .line 75
    sget-boolean v0, Lcom/android/server/power/ButtonLightController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ButtonLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowPowerModeChangeBackLightMode mBackLightSetting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leui_virtual_key_backlight_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    goto :goto_0
.end method

.method public setButtonLight()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/server/power/ButtonLightController;->lowPowerModeChangeBackLightMode()V

    .line 104
    iget v0, p0, Lcom/android/server/power/ButtonLightController;->mBackLightSetting:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/ButtonLightController;->mVirtualKeyForhidden:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 106
    const-string v0, "ButtonLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness mButtonBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method
