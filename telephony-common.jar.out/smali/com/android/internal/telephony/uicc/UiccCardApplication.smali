.class public Lcom/android/internal/telephony/uicc/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCardApplication$2;
    }
.end annotation


# static fields
.field public static final AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final AUTH_CONTEXT_UNDEFINED:I = -0x1

.field private static final DBG:Z = true

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x5

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x7

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x3

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0xc

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0xa

.field private static final EVENT_GET_PUK_PIN_RETRYCOUNT_DONE:I = 0x10

.field private static final EVENT_GET_SELECT_RESPONSE_DONE:I = 0xf

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0xb

.field private static final EVENT_PIN1_PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2_PUK2_DONE:I = 0x8

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x6

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x9

.field private static final EVENT_SIM_GET_ATR_DONE:I = 0xe

.field private static final EVENT_SIM_IO_DONE:I = 0xd

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCardApplication"


# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field private mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field private mAuthContext:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDesiredFdnEnabled:Z

.field private mDesiredPinLocked:Z

.field private mDestroyed:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIccLockEnabled:Z

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mPin1Replaced:Z

.field private mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 95
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 97
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 376
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 105
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 106
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 108
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 109
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 110
    iget-object v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 111
    iget v1, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 112
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 113
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 115
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 116
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 119
    iget-object v0, p2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p1, "x1"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p1
.end method

.method private createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 202
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 204
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/uicc/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 206
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 208
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 210
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/uicc/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/CsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 212
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IsimFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 189
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeSIMRecords(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/SIMRecords;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 191
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_3

    .line 192
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 193
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_4

    .line 194
    new-instance v0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0

    .line 197
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I
    .locals 3
    .param p0, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 625
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 635
    :pswitch_0
    const/4 v0, -0x1

    .line 639
    .local v0, "authContext":I
    :goto_0
    return v0

    .line 627
    .end local v0    # "authContext":I
    :pswitch_1
    const/16 v0, 0x80

    .line 628
    .restart local v0    # "authContext":I
    goto :goto_0

    .line 631
    .end local v0    # "authContext":I
    :pswitch_2
    const/16 v0, 0x81

    .line 632
    .restart local v0    # "authContext":I
    goto :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 934
    const-string v0, "UiccCardApplication"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return-void
.end method

.method private notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 4
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v3, 0x0

    .line 580
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v3, v1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 587
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez p1, :cond_2

    .line 588
    const-string v1, "Notifying registrants: NETWORK_LOCKED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 591
    :cond_2
    const-string v1, "Notifying 1 registrant: NETWORK_LOCED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_4

    .line 560
    :cond_3
    const-string v0, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_4
    if-nez p1, :cond_5

    .line 565
    const-string v0, "Notifying registrants: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 568
    :cond_5
    const-string v0, "Notifying 1 registrant: LOCKED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 569
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 3
    .param p1, "r"    # Landroid/os/Registrant;

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v1, :cond_3

    .line 532
    :cond_2
    const-string v0, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 536
    :cond_3
    if-nez p1, :cond_4

    .line 537
    const-string v0, "Notifying registrants: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0

    .line 540
    :cond_4
    const-string v0, "Notifying 1 registrant: READY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 541
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method private onChangeFacilityLock(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 341
    const/4 v0, -0x1

    .line 343
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 344
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CHANGE_FACILITY_LOCK_DONE: mIccLockEnabled= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 351
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 352
    .local v1, "response":Landroid/os/Message;
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 353
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 354
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 355
    monitor-exit v3

    .line 356
    return-void

    .line 348
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error change facility lock with exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onChangeFdnDone(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    const/4 v0, -0x1

    .line 263
    .local v0, "attemptsRemaining":I
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 264
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 271
    :goto_0
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 272
    .local v1, "response":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 273
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 274
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 275
    monitor-exit v3

    .line 276
    return-void

    .line 268
    .end local v1    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I

    move-result v0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error change facility fdn with exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 291
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 293
    monitor-exit v4

    .line 336
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 297
    .local v1, "ints":[I
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query facility lock : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x0

    aget v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 300
    const/4 v2, 0x0

    aget v2, v1, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    .line 302
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 312
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardStatus$PinState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 329
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring: pin1state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 335
    :cond_3
    :goto_3
    monitor-exit v4

    goto :goto_0

    .end local v1    # "ints":[I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "ints":[I
    :cond_4
    move v2, v3

    .line 300
    goto :goto_1

    .line 314
    :pswitch_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-eqz v2, :cond_3

    .line 315
    const-string v2, "QUERY_FACILITY_LOCK:enabled GET_SIM_STATUS.Pin1:disabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 323
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    if-nez v2, :cond_2

    .line 324
    const-string v2, "QUERY_FACILITY_LOCK:disabled GET_SIM_STATUS.Pin1:enabled. Fixme"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 333
    :cond_5
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 236
    :try_start_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 238
    monitor-exit v5

    .line 257
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 242
    .local v1, "result":[I
    array-length v2, v1

    if-eqz v2, :cond_3

    .line 244
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 245
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 246
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    .line 251
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 256
    :goto_2
    monitor-exit v5

    goto :goto_0

    .end local v1    # "result":[I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 248
    .restart local v1    # "result":[I
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    aget v2, v1, v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_1

    :cond_2
    move v2, v4

    .line 248
    goto :goto_3

    .line 254
    :cond_3
    const-string v2, "Bogus facility lock response"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 362
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 363
    .local v2, "result":[I
    if-nez v2, :cond_0

    .line 364
    const/4 v0, -0x1

    .line 372
    :goto_0
    return v0

    .line 366
    :cond_0
    array-length v1, v2

    .line 367
    .local v1, "length":I
    const/4 v0, -0x1

    .line 368
    .local v0, "attemptsRemaining":I
    if-lez v1, :cond_1

    .line 369
    const/4 v3, 0x0

    aget v0, v2, v3

    .line 371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePinPukErrorResult: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queryPin1State()V
    .locals 7

    .prologue
    .line 280
    const/4 v3, 0x7

    .line 283
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 286
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    const-string v0, "changeIccFdnPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 900
    monitor-exit v1

    .line 901
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 877
    :try_start_0
    const-string v0, "changeIccLockPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 880
    monitor-exit v1

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 988
    return-void
.end method

.method dispose()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " being Disposed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 182
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccCardApplication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoSubState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1Replaced="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin1State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPin2State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredFdnEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccLockEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredPinLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccFh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDestroyed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReadyRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mReadyRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 961
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 966
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 967
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 971
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 972
    return-void
.end method

.method public exchangeApdu(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    move-object/from16 v0, p8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeApdu(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 978
    return-void
.end method

.method public exchangeIccIo(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileId"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathId"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 992
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 994
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAtr(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccGetAtr(Landroid/os/Message;)V

    .line 998
    return-void
.end method

.method public getAuthContext()I
    .locals 2

    .prologue
    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 611
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    monitor-exit v1

    return v0

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFdnAvailable()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFdnEnabled:Z

    monitor-exit v1

    return v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    monitor-exit v1

    return-object v0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccLockEnabled:Z

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 3

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 3

    .prologue
    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 674
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    monitor-exit v1

    return-object v0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v0

    monitor-exit v1

    .line 663
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    monitor-exit v1

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPukPinRetryCount(ILandroid/os/Message;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1008
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getPukPinRetryCount(ILandroid/os/Message;)V

    .line 1010
    monitor-exit v1

    .line 1011
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccGetSelectResponse(Landroid/os/Message;)V

    .line 1003
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 2

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    monitor-exit v1

    return-object v0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    monitor-exit v1

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-object v0
.end method

.method public isPersoLocked()Z
    .locals 2

    .prologue
    .line 680
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$PersoSubState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 686
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 684
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 983
    return-void
.end method

.method queryFdn()V
    .locals 7

    .prologue
    .line 223
    const/4 v3, 0x7

    .line 226
    .local v3, "serviceClassX":I
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    const-string v2, ""

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 229
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 490
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 492
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 493
    monitor-exit v2

    .line 494
    return-void

    .line 493
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 507
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 508
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 509
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 510
    monitor-exit v2

    .line 511
    return-void

    .line 510
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 464
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 465
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 467
    .local v1, "r":Landroid/os/Registrant;
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 469
    .local v2, "rH":Landroid/os/Handler;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_0

    .line 470
    monitor-exit v4

    .line 477
    .end local v2    # "rH":Landroid/os/Handler;
    :goto_1
    return-void

    .line 465
    .restart local v2    # "rH":Landroid/os/Handler;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    .end local v1    # "r":Landroid/os/Registrant;
    .end local v2    # "rH":Landroid/os/Handler;
    :cond_1
    new-instance v1, Landroid/os/Registrant;

    invoke-direct {v1, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 474
    .restart local v1    # "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v1}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 475
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 476
    monitor-exit v4

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 847
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 849
    const/16 v4, 0xf

    .line 854
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 859
    monitor-exit v7

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 820
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 822
    const/4 v4, 0x7

    .line 826
    .local v4, "serviceClassX":I
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDesiredPinLocked:Z

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    .line 831
    monitor-exit v7

    .line 832
    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 761
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Despersonalization: pin = **** , type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 763
    monitor-exit v1

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 713
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 749
    monitor-exit v1

    .line 750
    return-void

    .line 749
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 742
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 756
    monitor-exit v1

    .line 757
    return-void

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 516
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 482
    monitor-exit v1

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "as"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 128
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 129
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 130
    const-string v3, "Application updated after destroyed! Fix me!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V

    .line 131
    monitor-exit v4

    .line 174
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " update. New "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 135
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 138
    .local v1, "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 139
    .local v0, "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 140
    .local v2, "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 141
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAuthContext(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAuthContext:I

    .line 142
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 143
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 144
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 145
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 146
    iget v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:I

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1Replaced:Z

    .line 147
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 148
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 150
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v3, v1, :cond_3

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->dispose()V

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 153
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 154
    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->createIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-eq v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 162
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v0, :cond_6

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " changed state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v5, :cond_5

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryPin1State()V

    .line 170
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 171
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyReadyRegistrantsIfNeeded(Landroid/os/Registrant;)V

    .line 173
    :cond_6
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 146
    .restart local v0    # "oldAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "oldAppType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v2    # "oldPersoSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
