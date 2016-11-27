.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4987
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 4988
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4989
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4991
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4993
    # getter for: Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$7300(Lcom/android/server/audio/AudioService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "usb.headset_type_c_disabled"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4995
    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leui_usb_headset_connected_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4998
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 5002
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 5003
    const-string v2, "Type-C=connected"

    const-string v3, "Type-C"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5005
    .local v0, "typeCConnected":Z
    if-eqz v0, :cond_1

    const-string v2, "leui_usb_headset_connected_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5008
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_type_c_headset_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5010
    .local v1, "typeCHeadsetState":Ljava/lang/String;
    const-string v2, "analog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Type-C_mode=analog"

    :goto_0
    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5028
    .end local v1    # "typeCHeadsetState":Ljava/lang/String;
    :goto_1
    return-void

    .line 5010
    .restart local v1    # "typeCHeadsetState":Ljava/lang/String;
    :cond_0
    const-string v2, "Type-C_mode=digital"

    goto :goto_0

    .line 5018
    .end local v1    # "typeCHeadsetState":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$7400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 5019
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->updateRingerModeAffectedStreams()Z
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$7500(Lcom/android/server/audio/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5024
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v4

    const/4 v5, 0x0

    # invokes: Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v2, v4, v5}, Lcom/android/server/audio/AudioService;->access$7600(Lcom/android/server/audio/AudioService;IZ)V

    .line 5026
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$2800(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    # invokes: Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    invoke-static {v2, v4}, Lcom/android/server/audio/AudioService;->access$7700(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    .line 5027
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
