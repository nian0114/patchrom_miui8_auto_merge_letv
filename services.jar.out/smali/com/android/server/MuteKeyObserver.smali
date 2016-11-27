.class public Lcom/android/server/MuteKeyObserver;
.super Landroid/os/UEventObserver;
.source "MuteKeyObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MuteKeyObserver$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MSG_MUTE_KEY_STATE_CHANGED:I = 0x0

.field private static final MSG_MUTE_KEY_STREAMS_CHANGED:I = 0x1

.field private static final MUTE_KEY_DEVICE_NAME:Ljava/lang/String; = "mute_key"

.field private static final MUTE_KEY_STATE_PATH:Ljava/lang/String; = "/sys/devices/virtual/switch/mute_key/state"

.field private static final MUTE_KEY_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/mute_key"

.field private static final SOFT_MUTE_KEY:Ljava/lang/String; = "soft_mute_key"

.field private static final SOFT_MUTE_KEY_NAME:Ljava/lang/String; = "soft_mute_key"

.field private static final TAG:Ljava/lang/String;

.field private static final ZEN_MODE_MUTE_NAME:Ljava/lang/String; = "zen_mode_mute"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mFirstComing:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMuteKeyState:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousMuteKeyState:I

.field private mSettingsObserver:Lcom/android/server/MuteKeyObserver$SettingsObserver;

.field private mSoftMuteKey:Z

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/MuteKeyObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    .line 43
    iput v1, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    .line 44
    iput v1, p0, Lcom/android/server/MuteKeyObserver;->mPreviousMuteKeyState:I

    .line 51
    iput-boolean v2, p0, Lcom/android/server/MuteKeyObserver;->mFirstComing:Z

    .line 158
    new-instance v0, Lcom/android/server/MuteKeyObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/MuteKeyObserver$1;-><init>(Lcom/android/server/MuteKeyObserver;Z)V

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/android/server/MuteKeyObserver;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 81
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    invoke-direct {p0}, Lcom/android/server/MuteKeyObserver;->init()V

    .line 83
    const-string v0, "DEVPATH=/devices/virtual/switch/mute_key"

    invoke-virtual {p0, v0}, Lcom/android/server/MuteKeyObserver;->startObserving(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 85
    new-instance v0, Lcom/android/server/MuteKeyObserver$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/MuteKeyObserver$SettingsObserver;-><init>(Lcom/android/server/MuteKeyObserver;)V

    iput-object v0, p0, Lcom/android/server/MuteKeyObserver;->mSettingsObserver:Lcom/android/server/MuteKeyObserver$SettingsObserver;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MuteKeyObserver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/MuteKeyObserver;->handleHallStateChange(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/MuteKeyObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/MuteKeyObserver;->handleHSreamsChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/MuteKeyObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/MuteKeyObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/MuteKeyObserver;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/MuteKeyObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/MuteKeyObserver;->updateStreamLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/MuteKeyObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/MuteKeyObserver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/MuteKeyObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MuteKeyObserver;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/MuteKeyObserver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private handleHSreamsChange()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle mute key streams changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->updateMuteKeyAffectedStreams()Z

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleHallStateChange(Z)V
    .locals 6
    .param p1, "isFirst"    # Z

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    sget-object v1, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle mute key  state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 131
    iget-boolean v1, p0, Lcom/android/server/MuteKeyObserver;->mSoftMuteKey:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "leui_s_mute_key"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, "zenMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 140
    :cond_1
    sget-object v1, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zen mode is enable, do not run setMuteButtonState  zenMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    monitor-exit v2

    .line 147
    return-void

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "mute_key"

    iget v4, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    invoke-virtual {v1, v3, v4, p1}, Landroid/media/AudioManager;->setMuteButtonState(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 146
    .end local v0    # "zenMode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 8

    .prologue
    .line 90
    iget-object v5, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 92
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 93
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/devices/virtual/switch/mute_key/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 96
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    .line 97
    iget v4, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    iput v4, p0, Lcom/android/server/MuteKeyObserver;->mPreviousMuteKeyState:I

    .line 98
    sget-object v4, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init mute mute key  state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    return-void

    .line 100
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v4, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have mute key support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 104
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private updateLocked(Z)V
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/server/MuteKeyObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/MuteKeyObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method private updateStreamLocked()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 57
    sget-object v2, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MUTE_KEY UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "newState":I
    iget v2, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    if-eq v1, v2, :cond_1

    .line 65
    iget v2, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    iput v2, p0, Lcom/android/server/MuteKeyObserver;->mPreviousMuteKeyState:I

    .line 66
    iput v1, p0, Lcom/android/server/MuteKeyObserver;->mMuteKeyState:I

    .line 67
    iget-boolean v2, p0, Lcom/android/server/MuteKeyObserver;->mSystemReady:Z

    if-eqz v2, :cond_1

    .line 68
    iget-boolean v2, p0, Lcom/android/server/MuteKeyObserver;->mFirstComing:Z

    invoke-direct {p0, v2}, Lcom/android/server/MuteKeyObserver;->updateLocked(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v1    # "newState":I
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 75
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/MuteKeyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/MuteKeyObserver;->mFirstComing:Z

    invoke-direct {p0, v0}, Lcom/android/server/MuteKeyObserver;->updateLocked(Z)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MuteKeyObserver;->mFirstComing:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MuteKeyObserver;->mSystemReady:Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
