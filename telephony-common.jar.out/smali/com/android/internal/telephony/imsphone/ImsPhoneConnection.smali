.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DELAY_DONE:I = 0x5

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mCause:I

.field private mConferenceConnectTime:J

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mDtmfToneDelay:I

.field private mExtras:Landroid/os/Bundle;

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mIsEmergency:Z

.field private mIsWifiStateFromExtras:Z

.field private mNextPostDialChar:I

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 81
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 82
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 92
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 94
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 154
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 155
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 158
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "oi"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 160
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "cna"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 161
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "oir"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 163
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string v2, "cnap"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 171
    :goto_0
    if-nez p5, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 182
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    :goto_1
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 187
    return-void

    .line 167
    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 168
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    goto :goto_0

    .line 183
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_1
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZLandroid/os/Bundle;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isEmergency"    # Z
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 63
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 81
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 82
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 89
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 92
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 94
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    .line 193
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "isConferenceUri":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "isSkipSchemaParsing":Z
    if-eqz p6, :cond_0

    .line 199
    const-string v2, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {p6, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 201
    const-string v2, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {p6, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 206
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 208
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    .line 210
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 211
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 212
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 220
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 221
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 222
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 223
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 226
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 227
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 229
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 231
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 232
    return-void

    .line 214
    :cond_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 215
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return v0
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 613
    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 615
    return-void
.end method

.method private static applyLocalCallCapability(Lcom/android/ims/ImsCallProfile;I)I
    .locals 2
    .param p0, "localProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    .prologue
    const/4 v1, 0x5

    .line 243
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 247
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_0
    return p1

    .line 249
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 255
    goto :goto_0

    .line 257
    :pswitch_2
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static applyRemoteCallCapability(Lcom/android/ims/ImsCallProfile;I)I
    .locals 2
    .param p0, "remoteProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p1, "capabilities"    # I

    .prologue
    const/16 v1, 0xa

    .line 266
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->removeCapability(II)I

    move-result p1

    .line 270
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return p1

    .line 272
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 274
    goto :goto_0

    .line 276
    :pswitch_1
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    .line 278
    goto :goto_0

    .line 280
    :pswitch_2
    invoke-static {p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->addCapability(II)I

    move-result p1

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "newExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 965
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 966
    :cond_0
    if-ne p0, p1, :cond_2

    :goto_0
    move v5, v4

    .line 982
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v4, v5

    .line 966
    goto :goto_0

    .line 969
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 973
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 974
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 975
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 976
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 977
    .local v2, "newValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    move v5, v4

    .line 982
    goto :goto_1
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 608
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ImsPhoneConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 609
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 239
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private fetchDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 628
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 630
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 631
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 632
    const-string v2, "ims_dtmf_tone_delay_int"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 634
    :cond_0
    return-void
.end method

.method private getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I
    .locals 7
    .param p1, "localCallProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 998
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    if-nez v5, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v2

    .line 1003
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "carrier_ims_support_evs_hd_icon_bool"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v5, v5, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v6, 0x12

    if-eq v5, v6, :cond_2

    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v5, v5, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v6, 0x13

    if-eq v5, v6, :cond_2

    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v5, v5, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 v6, 0x14

    if-ne v5, v6, :cond_4

    :cond_2
    move v0, v2

    .line 1012
    .local v0, "isEvsCodecHighDef":Z
    :goto_1
    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v5, v5, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v5, v4, :cond_3

    iget-object v5, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v5, v5, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    iget v5, p2, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    if-nez v5, :cond_5

    move v1, v2

    .line 1018
    .local v1, "isHighDef":Z
    :goto_2
    if-eqz v1, :cond_0

    move v2, v4

    goto :goto_0

    .end local v0    # "isEvsCodecHighDef":Z
    .end local v1    # "isHighDef":Z
    :cond_4
    move v0, v3

    .line 1003
    goto :goto_1

    .restart local v0    # "isEvsCodecHighDef":Z
    :cond_5
    move v1, v3

    .line 1012
    goto :goto_2
.end method

.method private getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1029
    const-string v2, "carrier_config"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1031
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    .line 1032
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    .line 1033
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1035
    :cond_0
    if-eqz v0, :cond_1

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1039
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 529
    const/4 v1, 0x0

    .line 532
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 538
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 541
    const/4 v1, 0x0

    .line 560
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    .line 563
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 567
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 570
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 571
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 572
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 573
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 576
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 580
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 545
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 547
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 549
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v2

    .line 551
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 553
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 555
    const-string v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 479
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 504
    :goto_0
    return v0

    .line 481
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 496
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 497
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 498
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 499
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 501
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 595
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    .line 603
    return-void

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateWifiStateFromExtras(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 911
    const-string v3, "CallRadioTech"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 916
    :try_start_0
    const-string v3, "CallRadioTech"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 924
    .local v2, "radioTechnology":I
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    .line 926
    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 929
    .local v0, "isWifi":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    .line 933
    .end local v0    # "isWifi":Z
    .end local v2    # "radioTechnology":I
    :cond_0
    return-void

    .line 918
    :catch_0
    move-exception v1

    .line 919
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .restart local v2    # "radioTechnology":I
    goto :goto_0

    .line 926
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 405
    return-void
.end method

.method changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 681
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 525
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    .prologue
    .line 765
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 312
    const-wide/16 v0, 0x0

    .line 314
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 515
    :cond_0
    const-string v0, ""

    .line 518
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 341
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 352
    return-void

    .line 350
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConferenceHost()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 666
    const/4 v0, 0x0

    .line 668
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0

    goto :goto_0
.end method

.method protected isEmergency()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    .line 455
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 458
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 466
    return-void
.end method

.method onDisconnect()Z
    .locals 6

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 432
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 436
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    .line 441
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    .line 442
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 445
    return v0

    .line 439
    :cond_2
    const-string v1, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    .prologue
    .line 418
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 739
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhoneConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 413
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    .line 471
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 367
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 380
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 393
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 395
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method releaseWakeLock()V
    .locals 3

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 624
    :cond_0
    monitor-exit v1

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConferenceConnectTime(J)V
    .locals 1
    .param p1, "conferenceConnectTime"    # J

    .prologue
    .line 758
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 759
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 325
    return-void
.end method

.method setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 677
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    const-string v1, " ImsCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    .line 1058
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 8
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    const/4 v5, 0x0

    .line 688
    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v6, :cond_7

    .line 693
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 694
    const-string v6, "ImsPhoneConnection"

    const-string v7, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    :goto_0
    return v5

    .line 698
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 699
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 702
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v6, v7, :cond_5

    .line 707
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 708
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 709
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 715
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v6, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v3

    .line 716
    .local v3, "updateParent":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    move-result v4

    .line 717
    .local v4, "updateWifiState":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 718
    .local v0, "updateAddressDisplay":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    move-result v1

    .line 719
    .local v1, "updateExtras":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v2

    .line 721
    .local v2, "updateMediaCapabilities":Z
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    if-nez v2, :cond_6

    if-eqz v1, :cond_0

    :cond_6
    const/4 v5, 0x1

    goto :goto_0

    .line 711
    .end local v0    # "updateAddressDisplay":Z
    .end local v1    # "updateExtras":Z
    .end local v2    # "updateMediaCapabilities":Z
    .end local v3    # "updateParent":Z
    .end local v4    # "updateWifiState":Z
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v6, :cond_5

    .line 712
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    goto :goto_1
.end method

.method public updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 776
    if-nez p1, :cond_1

    .line 777
    const/4 v2, 0x0

    .line 815
    :cond_0
    :goto_0
    return v2

    .line 780
    :cond_1
    const/4 v2, 0x0

    .line 781
    .local v2, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 782
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_0

    .line 783
    const-string v6, "oi"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "address":Ljava/lang/String;
    const-string v6, "cna"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "name":Ljava/lang/String;
    const-string v6, "oir"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v5

    .line 787
    .local v5, "nump":I
    const-string v6, "cnap"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v4

    .line 790
    .local v4, "namep":I
    const-string v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nump = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " namep = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 794
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 795
    const/4 v2, 0x1

    .line 797
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 798
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 799
    const-string v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 800
    const/4 v2, 0x1

    .line 806
    :cond_3
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    if-eq v6, v5, :cond_4

    .line 807
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 808
    const/4 v2, 0x1

    .line 810
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    if-eq v6, v4, :cond_0

    .line 811
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 812
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 802
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 803
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 804
    const/4 v2, 0x1

    goto :goto_1
.end method

.method updateExtras(Lcom/android/ims/ImsCall;)Z
    .locals 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v1, 0x0

    .line 943
    if-nez p1, :cond_1

    .line 961
    :cond_0
    :goto_0
    return v1

    .line 947
    :cond_1
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 948
    .local v0, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 949
    .local v2, "extras":Landroid/os/Bundle;
    :goto_1
    if-nez v2, :cond_2

    .line 950
    const-string v3, "ImsPhoneConnection"

    const-string v4, "Call profile extras are null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 954
    .local v1, "changed":Z
    :cond_3
    if-eqz v1, :cond_0

    .line 955
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiStateFromExtras(Landroid/os/Bundle;)V

    .line 957
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 958
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 959
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 948
    .end local v1    # "changed":Z
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 11
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 826
    if-nez p1, :cond_1

    .line 827
    const/4 v1, 0x0

    .line 878
    :cond_0
    :goto_0
    return v1

    .line 830
    :cond_1
    const/4 v1, 0x0

    .line 834
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 836
    .local v3, "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v3, :cond_2

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v6

    .line 838
    .local v6, "oldVideoState":I
    invoke-static {v3}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v5

    .line 841
    .local v5, "newVideoState":I
    if-eq v6, v5, :cond_2

    .line 842
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 843
    const/4 v1, 0x1

    .line 849
    .end local v5    # "newVideoState":I
    .end local v6    # "oldVideoState":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v0

    .line 851
    .local v0, "capabilities":I
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    .line 852
    .local v2, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string v8, "ImsPhoneConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update localCallProfile="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    if-eqz v2, :cond_3

    .line 854
    invoke-static {v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapability(Lcom/android/ims/ImsCallProfile;I)I

    move-result v0

    .line 858
    :cond_3
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v7

    .line 859
    .local v7, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string v8, "ImsPhoneConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update remoteCallProfile="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    if-eqz v7, :cond_4

    .line 861
    invoke-static {v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapability(Lcom/android/ims/ImsCallProfile;I)I

    move-result v0

    .line 863
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectionCapabilities()I

    move-result v8

    if-eq v8, v0, :cond_5

    .line 864
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectionCapabilities(I)V

    .line 865
    const/4 v1, 0x1

    .line 868
    :cond_5
    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I

    move-result v4

    .line 870
    .local v4, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 871
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    const/4 v1, 0x1

    goto :goto_0

    .line 874
    .end local v0    # "capabilities":I
    .end local v2    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v3    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "newAudioQuality":I
    .end local v7    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public updateWifiState()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 891
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWifiStateFromExtras:Z

    if-eqz v1, :cond_1

    .line 900
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWifiState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    .line 898
    const/4 v0, 0x1

    goto :goto_0
.end method
