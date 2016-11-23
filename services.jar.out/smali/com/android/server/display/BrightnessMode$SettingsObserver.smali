.class final Lcom/android/server/display/BrightnessMode$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessMode;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessMode;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # getter for: Lcom/android/server/display/BrightnessMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/BrightnessMode;->access$000(Lcom/android/server/display/BrightnessMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 66
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # getter for: Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I
    invoke-static {v1}, Lcom/android/server/display/BrightnessMode;->access$100(Lcom/android/server/display/BrightnessMode;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # setter for: Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I
    invoke-static {v1, v0}, Lcom/android/server/display/BrightnessMode;->access$102(Lcom/android/server/display/BrightnessMode;I)I

    .line 68
    const-string v1, "BrightnessMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness mode chaanged: mBrightnessModeSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # getter for: Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I
    invoke-static {v3}, Lcom/android/server/display/BrightnessMode;->access$100(Lcom/android/server/display/BrightnessMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # getter for: Lcom/android/server/display/BrightnessMode;->mBrightnessModeSetting:I
    invoke-static {v1}, Lcom/android/server/display/BrightnessMode;->access$100(Lcom/android/server/display/BrightnessMode;)I

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    # getter for: Lcom/android/server/display/BrightnessMode;->mCallbacks:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;
    invoke-static {v1}, Lcom/android/server/display/BrightnessMode;->access$200(Lcom/android/server/display/BrightnessMode;)Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;->resetAutoBrightnessGamma()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessMode$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessMode;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMode;->setAutoBrightnessGamma(F)V

    .line 73
    :cond_1
    return-void
.end method
