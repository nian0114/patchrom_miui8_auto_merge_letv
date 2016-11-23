.class Lcom/android/server/display/BrightnessMode;
.super Ljava/lang/Object;
.source "BrightnessMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessMode$SettingsObserver;,
        Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BrightnessMode"


# instance fields
.field private mBrightnessModeSetting:I

.field private mCallbacks:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

.field private mContext:Landroid/content/Context;

.field private mSettingsObserver:Lcom/android/server/display/BrightnessMode$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/server/display/BrightnessMode;->mCallbacks:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    .line 31
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 32
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I

    .line 36
    new-instance v1, Lcom/android/server/display/BrightnessMode$SettingsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/BrightnessMode$SettingsObserver;-><init>(Lcom/android/server/display/BrightnessMode;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/BrightnessMode;->mSettingsObserver:Lcom/android/server/display/BrightnessMode$SettingsObserver;

    .line 37
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/BrightnessMode;->mSettingsObserver:Lcom/android/server/display/BrightnessMode$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/BrightnessMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessMode;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/BrightnessMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessMode;

    .prologue
    .line 13
    iget v0, p0, Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/BrightnessMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/BrightnessMode;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/BrightnessMode;)Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/BrightnessMode;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/server/display/BrightnessMode;->mCallbacks:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    return-object v0
.end method


# virtual methods
.method public getAutoBrightnessGamma()F
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public setAutoBrightnessGamma(F)V
    .locals 3
    .param p1, "gamma"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 53
    return-void
.end method
