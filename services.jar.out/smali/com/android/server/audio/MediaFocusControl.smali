.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final MSG_RCC_GET_NOW_PLAYING_ENTRIES:I = 0xe

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_SET_BROWSED_PLAYER:I = 0xc

.field private static final MSG_RCC_SET_PLAY_ITEM:I = 0xd

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 445
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Lcom/android/server/audio/AudioService$VolumeController;
    .param p4, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    .line 449
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 507
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 674
    iput-boolean v6, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 682
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 1036
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1187
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$3;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1205
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1211
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1216
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1230
    iput v5, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1256
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    .line 1262
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1863
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 120
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v3, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 121
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 122
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 123
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 124
    iput-object p4, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 126
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 127
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "handleMediaEvent"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    .line 129
    .local v0, "maxMusicLevel":I
    new-instance v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0, v0}, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    .line 132
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 134
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 136
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 137
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 139
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    .line 141
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    .line 142
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 144
    invoke-static {p0}, Lcom/android/server/audio/PlayerRecord;->setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "x2"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/audio/MediaFocusControl;ILjava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Long;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onGetRemoteControlClientNowPlayingEntries()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onSetRemoteControlClientBrowsedPlayer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$1800()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 9
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 198
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 201
    const/4 v5, 0x1

    .line 235
    :goto_0
    return v5

    .line 205
    :cond_0
    if-eqz p1, :cond_3

    .line 207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 209
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 210
    .local v2, "currentUser":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_notification_listeners"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 215
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 217
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 219
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    const/4 v5, 0x2

    .line 231
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 216
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 231
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .locals 1
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1645
    :goto_0
    return-void

    .line 1644
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    goto :goto_0
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .locals 3

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1587
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1588
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1591
    return-void

    .line 1588
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 17
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 995
    if-eqz p2, :cond_0

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 998
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 999
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1001
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1004
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v4, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    :goto_1
    :try_start_2
    monitor-exit v16

    .line 1027
    return-void

    .line 1004
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1007
    :catch_0
    move-exception v13

    .line 1008
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 1026
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1014
    :cond_2
    if-eqz p2, :cond_3

    .line 1015
    :try_start_3
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    .line 1019
    .local v14, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1023
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 971
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 972
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    if-eqz p2, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 976
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 980
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    return-void

    .line 983
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 514
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 517
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 520
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Notify on duck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1284
    const-string v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1287
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1293
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1290
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1291
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1293
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1294
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1295
    :try_start_4
    const-string v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_1

    const-string v1, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1304
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1305
    return-void

    .line 1292
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1299
    :cond_1
    :try_start_7
    const-string v1, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 1304
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1312
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1314
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1315
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1317
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1317
    .restart local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    .line 1323
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1269
    const-string v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1270
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1272
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1275
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 1889
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1890
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1891
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1892
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1894
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1900
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 941
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :goto_0
    return-void

    .line 946
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 947
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 950
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 951
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 953
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 954
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 956
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 953
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 959
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1052
    const/4 v1, 0x1

    .line 1053
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1054
    .local v0, "keyAction":I
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1055
    if-nez v0, :cond_2

    .line 1056
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 1058
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1059
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 1075
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1078
    packed-switch v1, :pswitch_data_0

    .line 1092
    :goto_1
    :pswitch_0
    return-void

    .line 1060
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1063
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 1064
    const/4 v1, 0x2

    goto :goto_0

    .line 1066
    :cond_2
    if-ne v0, v2, :cond_0

    .line 1067
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 1069
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 1070
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1071
    const/4 v1, 0x3

    goto :goto_0

    .line 1075
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1085
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 1089
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 326
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 330
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 332
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    const/4 v2, 0x1

    goto :goto_0

    .line 331
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    const/4 v0, 0x1

    .line 1435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 612
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 2230
    packed-switch p0, :pswitch_data_0

    .line 2239
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2237
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2230
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1105
    if-nez p0, :cond_0

    .line 1106
    const/4 v0, 0x0

    .line 1108
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1118
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 1119
    const/4 v0, 0x1

    .line 1121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 492
    :cond_0
    return-void
.end method

.method private onGetRemoteControlClientNowPlayingEntries()V
    .locals 5

    .prologue
    .line 2129
    const-string v1, "MediaFocusControl"

    const-string v2, "onGetRemoteControlClientNowPlayingEntries: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2133
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1}, Landroid/media/IRemoteControlClient;->getNowPlayingEntries()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2139
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2140
    return-void

    .line 2134
    :catch_0
    move-exception v0

    .line 2135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2139
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 1507
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1508
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1509
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1511
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1513
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1515
    return-void

    .line 1513
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1514
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1556
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1557
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1558
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1563
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1568
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1577
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1578
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1579
    return-void

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1571
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1573
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1574
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1577
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 1578
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    .locals 6
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1521
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1522
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1523
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1529
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1536
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1546
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1547
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1548
    return-void

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 1546
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1547
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 0

    .prologue
    .line 2345
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    .prologue
    .line 272
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 273
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 278
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    if-nez v13, :cond_1

    .line 284
    const/4 v12, 0x0

    .line 288
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 289
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 292
    .local v9, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 294
    .local v14, "wasEnabled":Z
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/android/server/audio/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 296
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    .line 299
    :try_start_2
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 301
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 304
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0x9

    const/4 v3, 0x2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 310
    :catch_0
    move-exception v11

    .line 311
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 316
    .end local v9    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 317
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 286
    :cond_1
    :try_start_5
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    .line 316
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 317
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 318
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2166
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2171
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2172
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2173
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2174
    iput-object p2, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 2183
    return-void

    .line 2171
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2178
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2180
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2182
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onSetRemoteControlClientBrowsedPlayer()V
    .locals 5

    .prologue
    .line 2149
    const-string v2, "MediaFocusControl"

    const-string v3, "onSetRemoteControlClientBrowsedPlayer: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 2151
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2152
    const-string v2, "MediaFocusControl"

    const-string v3, "can not proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :goto_0
    return-void

    .line 2154
    :cond_0
    const-string v2, "MediaFocusControl"

    const-string v3, "proceed with setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :try_start_0
    const-string v2, "MediaFocusControl"

    const-string v3, "Calling setBrowsedPlayer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlClient;->setBrowsedPlayer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2158
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSetRemoteControlClientPlayItem(ILjava/lang/Long;)V
    .locals 6
    .param p1, "scope"    # I
    .param p2, "uid"    # Ljava/lang/Long;

    .prologue
    .line 2110
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetRemoteControlClientPlayItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2114
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, p1, v4, v5}, Landroid/media/IRemoteControlClient;->setPlayItem(IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2120
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2121
    return-void

    .line 2115
    :catch_0
    move-exception v0

    .line 2116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current valid remote client is dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2120
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1870
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1871
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1872
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1874
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1876
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1877
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1879
    :catch_0
    move-exception v2

    .line 1880
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1883
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 267
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 502
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 505
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 626
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 627
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    move v1, v0

    .line 626
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 633
    const-string v2, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 637
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const/4 v2, 0x1

    .line 641
    :goto_1
    return v2

    .line 640
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 641
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 12
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1339
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1340
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    new-instance v9, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const/4 v7, 0x1

    .line 1401
    :goto_0
    return v7

    .line 1342
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v8, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1344
    const/4 v7, 0x0

    goto :goto_0

    .line 1346
    :cond_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1348
    const/4 v7, 0x0

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1351
    .local v4, "oldTopPrse":Lcom/android/server/audio/PlayerRecord;
    const/4 v7, 0x0

    .line 1352
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1353
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1354
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1358
    .local v1, "inStackIndex":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v6, "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    if-ltz v2, :cond_5

    .line 1359
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1360
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1361
    move v3, v2

    .line 1363
    :cond_3
    invoke-virtual {v5, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 1364
    move v1, v2

    .line 1358
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_1

    .line 1368
    :cond_5
    const/4 v8, -0x1

    if-ne v1, v8, :cond_6

    .line 1370
    :try_start_3
    new-instance v5, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1373
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1394
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accessing media button stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1376
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v2    # "index":I
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    .line 1377
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1379
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_6
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1380
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1382
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1385
    :cond_7
    if-le v1, v3, :cond_8

    .line 1386
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1388
    :cond_8
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1394
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_2

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_9
    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto/16 :goto_0
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1908
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1909
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1910
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1911
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1912
    const/4 v2, 0x1

    .line 1915
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 1934
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1935
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1936
    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1937
    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1971
    :goto_0
    return-void

    .line 1939
    :cond_1
    :try_start_3
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 1940
    .local v11, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1941
    move-object/from16 v0, p4

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1942
    invoke-virtual {v11}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1944
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v15

    goto :goto_0

    .line 1970
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1947
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1952
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1953
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/PlayerRecord;

    .line 1954
    .local v13, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1956
    :try_start_6
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1957
    :catch_0
    move-exception v12

    .line 1958
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1969
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1966
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1969
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1970
    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 535
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 539
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 540
    if-eqz p3, :cond_0

    .line 541
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 542
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 543
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 545
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 547
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 565
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    .line 554
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 555
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 557
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 558
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 561
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 574
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 578
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 579
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 581
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 574
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 587
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 590
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 592
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1412
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1413
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1414
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    .line 1417
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    return-void

    .line 1412
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1421
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 372
    if-nez p2, :cond_1

    .line 373
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1096
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1097
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1099
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1100
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1102
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2245
    if-nez p2, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2249
    :cond_1
    const/4 v3, 0x0

    .line 2250
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2255
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2256
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2258
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 2259
    iget-object v3, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2268
    if-eqz v3, :cond_0

    .line 2270
    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2255
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2263
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2265
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2267
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1470
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1471
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1473
    .local v1, "se":Lcom/android/server/audio/PlayerRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1475
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1479
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 1483
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1446
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1447
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1448
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1449
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1450
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v2

    .line 1455
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1456
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1457
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1461
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1462
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1496
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1498
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1499
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 11
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1129
    const/4 v6, 0x0

    .line 1134
    .local v6, "voiceIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1135
    .local v5, "pm":Landroid/os/PowerManager;
    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v7

    .line 1136
    .local v4, "isLocked":Z
    :goto_0
    if-nez v4, :cond_4

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1137
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "voiceIntent":Landroid/content/Intent;
    const-string v7, "android.speech.action.WEB_SEARCH"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1138
    .restart local v6    # "voiceIntent":Landroid/content/Intent;
    const-string v7, "MediaFocusControl"

    const-string v8, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_1
    if-eqz p1, :cond_0

    .line 1155
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1157
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1159
    .local v2, "identity":J
    if-eqz v6, :cond_1

    .line 1160
    const/high16 v7, 0x10800000

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1162
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    if-eqz p1, :cond_2

    .line 1169
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1172
    :cond_2
    :goto_2
    return-void

    .end local v2    # "identity":J
    .end local v4    # "isLocked":Z
    :cond_3
    move v4, v8

    .line 1135
    goto :goto_0

    .line 1140
    .restart local v4    # "isLocked":Z
    :cond_4
    const-string v9, "deviceidle"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 1142
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_5

    .line 1144
    :try_start_1
    const-string v9, "voice-search"

    invoke-interface {v0, v9}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1148
    :cond_5
    :goto_3
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .restart local v6    # "voiceIntent":Landroid/content/Intent;
    const-string v9, "android.speech.extras.EXTRA_SECURE"

    if-eqz v4, :cond_6

    iget-object v10, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v10}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_4
    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const-string v7, "MediaFocusControl"

    const-string v8, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move v7, v8

    .line 1149
    goto :goto_4

    .line 1164
    .end local v0    # "dic":Landroid/os/IDeviceIdleController;
    .restart local v2    # "identity":J
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity for search: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1167
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    if-eqz p1, :cond_2

    .line 1169
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1167
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    if-eqz p1, :cond_7

    .line 1169
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    throw v7

    .line 1145
    .end local v2    # "identity":J
    .restart local v0    # "dic":Landroid/os/IDeviceIdleController;
    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1602
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1603
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    move v0, p1

    .line 1606
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1608
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1622
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1612
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1614
    const/16 v0, 0xf

    .line 1616
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1617
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1618
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1618
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v4, 0x1

    .line 882
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :try_start_0
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    const/4 v1, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 887
    monitor-exit v2

    .line 896
    :goto_0
    return v4

    .line 887
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 888
    :catch_0
    move-exception v0

    .line 892
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 685
    if-nez p1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 688
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 691
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    const/4 v0, 0x1

    .line 696
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    .line 697
    monitor-exit v4

    goto :goto_0

    .line 702
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 699
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 702
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2192
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2195
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2196
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2197
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    if-ne v6, v3, :cond_1

    iget-object v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    iget v6, v6, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    if-ne v6, p1, :cond_1

    .line 2202
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2203
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v8

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2204
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2205
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2206
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2207
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2208
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2220
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    return v3

    .line 2208
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2212
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2216
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2217
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v5

    .line 2218
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2219
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v4

    .line 2220
    goto :goto_1

    .line 2195
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2216
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 2219
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    .prologue
    .line 472
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 476
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 477
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 479
    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 927
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 928
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 936
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 937
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 156
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 776
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    monitor-exit v1

    .line 780
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2124
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2126
    return-void
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 2278
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2279
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2280
    const/4 v0, 0x0

    monitor-exit v1

    .line 2282
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 2283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 2287
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2288
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2289
    const/4 v0, 0x0

    monitor-exit v1

    .line 2291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 2292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isAppInFocus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "isInFocus":Z
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v0

    .line 913
    :cond_0
    monitor-exit v2

    .line 914
    return v0

    .line 913
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 723
    move-object v0, p1

    .line 724
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 742
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 743
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 749
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 752
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 758
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 764
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 767
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 773
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1182
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1185
    :cond_0
    return-void
.end method

.method protected postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2338
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2339
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :goto_0
    return-void

    .line 1697
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1698
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1699
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1653
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1656
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1660
    :cond_0
    monitor-exit v1

    .line 1661
    return-void

    .line 1660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1726
    const/4 v3, -0x1

    .line 1727
    .local v3, "rccId":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1730
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1731
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1732
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, p2, p3, v4}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    if-nez p2, :cond_2

    .line 1757
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1758
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1760
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    return v3

    .line 1740
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    .line 1744
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1745
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1750
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1760
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1730
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 254
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 256
    const/4 v1, 0x1

    .line 261
    :goto_0
    return v1

    .line 258
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 240
    invoke-direct {p0, p4}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 241
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 243
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    .line 245
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2027
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2028
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2029
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 2030
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 2031
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2032
    .local v1, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2033
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    .line 2034
    :cond_1
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$702(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2035
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$802(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2036
    const/4 v0, 0x1

    goto :goto_0

    .line 2040
    .end local v1    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    if-eqz v0, :cond_4

    .line 2043
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2044
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2045
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 2046
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2048
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2049
    :catch_0
    move-exception v3

    .line 2050
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2055
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2056
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2072
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2073
    const/4 v4, 0x0

    .line 2076
    .local v4, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2077
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2078
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 2079
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2080
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2081
    const/4 v4, 0x1

    .line 2085
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v4, :cond_2

    .line 2086
    monitor-exit v7

    .line 2102
    :goto_0
    return-void

    .line 2090
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2091
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2092
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2093
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2095
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2096
    :catch_0
    move-exception v2

    .line 2097
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2101
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 706
    if-nez p1, :cond_0

    .line 717
    :goto_0
    return-void

    .line 709
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 710
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 711
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 716
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 788
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 792
    const-string v3, "MediaFocusControl"

    const-string v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v16, 0x0

    .line 874
    :goto_0
    return v16

    .line 796
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 798
    const/16 v16, 0x0

    goto :goto_0

    .line 801
    :cond_1
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 802
    const/4 v14, 0x0

    .line 803
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 804
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_2

    .line 805
    const/16 v16, 0x0

    monitor-exit v17

    goto :goto_0

    .line 872
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 810
    :cond_2
    const/4 v14, 0x1

    .line 817
    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/audio/FocusRequester;

    .line 830
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_4

    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_4

    .line 833
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 834
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 836
    const/16 v16, 0x1

    monitor-exit v17

    goto/16 :goto_0

    .line 820
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v13

    .line 822
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/16 v16, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .line 840
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 843
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 848
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 850
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .line 852
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_7

    .line 855
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v16

    .line 856
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    .line 857
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 859
    :cond_6
    monitor-exit v17

    goto/16 :goto_0

    .line 862
    .end local v16    # "requestResult":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 863
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 867
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 872
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 677
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 678
    return-void

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2143
    const-string v0, "MediaFocusControl"

    const-string v1, "setRemoteControlClientBrowsedPlayer: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move v3, v2

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2146
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 7
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    const/4 v2, 0x0

    .line 2105
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xd

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move v3, v2

    move v4, p3

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2107
    return-void
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 8
    .param p1, "vol"    # I

    .prologue
    .line 2297
    const/4 v3, -0x1

    .line 2298
    .local v3, "rccId":I
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6

    .line 2299
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v5, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2300
    monitor-exit v6

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2303
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2304
    const/4 v4, 0x0

    .line 2305
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2310
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2311
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2313
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 2314
    iget-object v4, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2322
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2323
    if-eqz v4, :cond_0

    .line 2325
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2326
    :catch_0
    move-exception v0

    .line 2327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2303
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2310
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2318
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2320
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2322
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 901
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 902
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 903
    monitor-exit v1

    .line 904
    return-void

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :goto_0
    return-void

    .line 1711
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1712
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1713
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1669
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1672
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1673
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1674
    if-eqz v0, :cond_0

    .line 1676
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1678
    :cond_0
    monitor-exit v2

    .line 1679
    return-void

    .line 1678
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1682
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1685
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1771
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1772
    const/4 v3, 0x0

    .line 1774
    .local v3, "topRccChange":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1775
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1776
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1779
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1780
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v3, 0x1

    .line 1789
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1791
    const/16 v4, 0xf

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1793
    :cond_1
    monitor-exit v5

    .line 1794
    return-void

    .line 1780
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1774
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1785
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1787
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1793
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1981
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1982
    if-nez p1, :cond_0

    .line 1983
    :try_start_0
    monitor-exit v7

    .line 2015
    :goto_0
    return-void

    .line 1986
    :cond_0
    const/4 v2, 0x0

    .line 1987
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1988
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 1989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1990
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1991
    const/4 v2, 0x1

    .line 1992
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1993
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2014
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1997
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_2
    if-eqz v2, :cond_4

    .line 2000
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2001
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2002
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 2003
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2005
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2006
    :catch_0
    move-exception v3

    .line 2007
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2014
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
