.class Lcom/android/server/MuteKeyObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MuteKeyObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MuteKeyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MuteKeyObserver;


# direct methods
.method constructor <init>(Lcom/android/server/MuteKeyObserver;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 177
    const/4 v0, 0x1

    # setter for: Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z
    invoke-static {p1, v0}, Lcom/android/server/MuteKeyObserver;->access$202(Lcom/android/server/MuteKeyObserver;Z)Z

    .line 178
    # getter for: Lcom/android/server/MuteKeyObserver;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MuteKeyObserver;->access$300(Lcom/android/server/MuteKeyObserver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mutekey_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    # getter for: Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z
    invoke-static {p1}, Lcom/android/server/MuteKeyObserver;->access$200(Lcom/android/server/MuteKeyObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    # getter for: Lcom/android/server/MuteKeyObserver;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/MuteKeyObserver;->access$300(Lcom/android/server/MuteKeyObserver;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leui_s_soft_mute_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 189
    const-string v0, "mutekey_streams_affected"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    # invokes: Lcom/android/server/MuteKeyObserver;->updateStreamLocked()V
    invoke-static {v0}, Lcom/android/server/MuteKeyObserver;->access$400(Lcom/android/server/MuteKeyObserver;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    # getter for: Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z
    invoke-static {v0}, Lcom/android/server/MuteKeyObserver;->access$200(Lcom/android/server/MuteKeyObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "leui_s_soft_mute_key"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    iget-object v1, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    # getter for: Lcom/android/server/MuteKeyObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/MuteKeyObserver;->access$600(Lcom/android/server/MuteKeyObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "leui_s_soft_mute_key"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I
    invoke-static {v0, v1}, Lcom/android/server/MuteKeyObserver;->access$502(Lcom/android/server/MuteKeyObserver;I)I

    .line 195
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    # getter for: Lcom/android/server/MuteKeyObserver;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/MuteKeyObserver;->access$700(Lcom/android/server/MuteKeyObserver;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "mute_key"

    iget-object v2, p0, Lcom/android/server/MuteKeyObserver$SettingsObserver;->this$0:Lcom/android/server/MuteKeyObserver;

    # getter for: Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I
    invoke-static {v2}, Lcom/android/server/MuteKeyObserver;->access$500(Lcom/android/server/MuteKeyObserver;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setMuteButtonState(Ljava/lang/String;IZ)V

    goto :goto_0
.end method
